#!/usr/bin/env ruby
exit(0) if ['false', nil].include? ENV['TRAVIS_PULL_REQUEST']
require 'rubygems'
require 'bundler'
require 'yaml'
Bundler.setup(:ci)
require 'httparty'

permissions = YAML.load_file(File.join(File.dirname(__FILE__), 'permissions.yml'))

headers = {
  'Accept' => 'application/vnd.github.v3+json',
  'User-Agent' => 'Ruby permission check',
}
auth = {
  username: "compsocialscience-bot",
  password: ENV['MY_GITHUB_TOKEN'],
}
pull_request_url = "https://api.github.com/repos/#{ENV['TRAVIS_REPO_SLUG']}/pulls/#{ENV['TRAVIS_PULL_REQUEST']}"
response = HTTParty.get(pull_request_url, headers: headers, format: :json, basic_auth: auth)

body = { event: "APPROVE" }
HTTParty.post("#{pull_request_url}/reviews", headers: headers, basic_auth: auth, format: :json, body: body.to_json)

creator = response['user']['login']
creator_perms = permissions[creator]
if creator_perms == nil
  STDERR.puts("No permissions set for #{creator} in permissions.yml")
  exit (1)
end
puts "Checking permissions for #{creator}..."

altered_files = `git diff --name-only #{ENV['TRAVIS_BRANCH']}...#{ENV['TRAVIS_PULL_REQUEST_SHA']}`
if $?.exitstatus != 0
  STDERR.puts("git diff command failed!")
  exit ($?.exitstatus)
end

errors = []
altered_files.lines.each do |file|
  pass = false
  creator_perms.each do |perm|
    exit (0) if perm == "*"
    if file.start_with?(perm)
      pass = true
      break
    end
  end
  if not pass
    errors << file
  end
end
if errors.length > 0
  STDERR.puts("#{creator} is not allowed to modify these files:\n#{errors.join('')}")
  exit(1)
end
