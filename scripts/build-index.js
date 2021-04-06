const fs = require("fs");
const lunr = require("lunr");
const yaml = require("js-yaml");

const allPeople2017_2020 = "./_data/all-people-2017-2020.yml";
const allPeoplePost2020 = "_data/all-people-post-2020.json";
const particpantsIndex = "./assets/json/all-people-index.json";

function slugify(string) {
  return String(string)
    .toLowerCase()
    .replace(/[\s:\/\(\)]+/g, "-") // Replace spaces and special chars with -
    .replace(/\-\-+/g, "-") // Replace multiple - with single -
    .replace(/^-+/, "") // Trim - from start of text
    .replace(/-+$/, ""); // Trim - from end of text
}

(async () => {
  let oldRecords = yaml.safeLoad(fs.readFileSync(allPeople2017_2020, "utf8"));
  let records = JSON.parse(fs.readFileSync(allPeoplePost2020));
  records = [...oldRecords, ...records];
  let idx = lunr(function () {
    this.ref("id");
    this.field("name", { boost: 2 });
    this.field("year");
    this.field("site");
    this.field("category");
    this.field("bio");
    this.field("organization");
    this.field("research_interests");
    this.field("position");
    this.field("discipline");
    records.forEach((record) => {
      if (record.site) {
        record.site = slugify(record.site);
      }
      if (record.category) {
        record.category = slugify(record.category).replace("-", "");
      }
      this.add(record);
    });
  });
  fs.writeFileSync(particpantsIndex, JSON.stringify(idx));
})();
