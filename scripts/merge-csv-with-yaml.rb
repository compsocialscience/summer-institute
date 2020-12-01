# This is likely a one-time use script. It merged our yaml data on people with
# a CSV that Chris created in part from the yaml data but that included
# additional information like research_interests, organization, etc.
require 'csv'
require 'yaml'
require 'securerandom'

people_files = Dir.glob("_data/20*/**/{speakers,faculty,teaching_assistants,participants}.y*ml")
people_files += Dir.glob("_data/20*/**/people.y*ml")
people =  {}
people_files.each do |people_file|
  parts = people_file.split("/")
  year = parts[1]
  location = parts[2]
  location.sub! "los_angeles", "los-angeles"
  data = YAML.load_file(people_file)
  if data
    people_data = []
    if data.is_a?(Hash)
      data.values.each do|v|
        people_data += v["people"] if v["people"]
      end
    else
      people_data = data
    end

    people_data.each do |person|
      people[year] = {} if people[year] == nil
      people[year][location] = {} if people[year][location] == nil
      people[year][location][person["name"].downcase] = person if person && person["name"]
    end
  end
end

rows = CSV.read("sicss-database-to-agathon.csv", headers: true)
merged_people = []
rows.each do |row|
  site = row["site"]
  site.sub! "los_angeles", "los-angeles"
  site.sub! "tuscon", "tucson"
  ymld = people.dig(row["year"], site, row["name"])
  puts [row["year"], site, row["name"]].inspect if ymld == nil
  ymld["id"] = SecureRandom.alphanumeric
  merged_people << row.to_h.merge(ymld)
end

File.open("participants-2017-2020.yml", "w") do |file|
  file.write(merged_people.to_yaml)
end
