const fs = require("fs");
const parse = require("csv-parse");
const fetch = require("node-fetch");
const fecha = require("fecha");
const mime = require("mime-types");
const glob = require("glob");

const CSV_URL =
  "https://docs.google.com/spreadsheets/d/1evYxIX_9fz93fK0zDXcrLgLrg27aK9KBwCWJdqUWiXw/export?format=csv";
const OUTPUT_PATH = "_data/all-people-post-2020.json";

async function downloadImage(url) {
  if (!url) {
    return null;
  }
  let parsed = new URL(url);
  let id = parsed.searchParams.get("id");
  let files = glob.sync(`./assets/images/${id}*`);
  if (files.length > 0) {
    return files[0];
  }
  return fetch(`https://docs.google.com/uc?export=download&id=${id}`).then(
    (res) => {
      let imagePath = `./assets/images/${id}.${mime.extension(
        res.headers.get("Content-Type")
      )}`;
      let dest = fs.createWriteStream(imagePath);
      res.body.pipe(dest);
      return imagePath;
    }
  );
}

(async () => {
  let records = await fetch(CSV_URL).then(async (res) => {
    let records = [];
    const parser = res.body.pipe(
      parse({
        columns: true,
      })
    );
    for await (const record of parser) {
      // Work with each record
      record.timestamp = record.timestamp.replace(/ 0:/, ' 1:'); // Work around fecha bug
      let timestampDate = fecha.parse(record.timestamp, "M/D/YYYY H:mm:ss");
      let year = timestampDate.getFullYear();
      if (timestampDate.getMonth() >= 9) {
        year += 1;
      }
      if (record.category.match(/speaker/i)) {
        record.category = "speaker";
      } else if (record.category.match(/organizer/i)) {
        record.category = "organizer";
      } else if (record.category.match(/participant/i)) {
        record.category = "participant";
      }
      if (record.first_name && record.last_name) {
        let imagePath = await downloadImage(record.photo);
        records.push({
          id: `${record.timestamp}-${record.first_name}`,
          name: `${record.first_name} ${record.last_name}`,
          image: imagePath,
          year: String(year),
          ...record,
        });
      }
    }
    return records;
  });
  fs.writeFileSync(OUTPUT_PATH, JSON.stringify(records));
})();
