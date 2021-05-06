require "rss"
require "open-uri"

module DriftingRuby
  module Commands
    class GetEpisode < SlackRubyBot::Commands::Base
      command "get_latest_episode" do |client, data, _match|
        url = "https://www.driftingruby.com/episodes/feed.rss"
        rss = RSS::Parser.parse(open(url).read, false).items.first
        client.say(channel: data.channel, text: rss.link)
      end

      command "say_hello" do |client, data, _match|
        client.say(channel: data.channel, text: HelloText.say_hello)
      end

      match "youtube" do |client, data, match|
        url = "https://www.youtube.com/"
        client.say(channel: data.channel, text: ":100:GIẢI TRÍ THÔI :100: \n #{url}")
      end
      match "translate" do |client, data, match|
        url = "https://translate.google.com/?hl=vi"
        client.say(channel: data.channel, text: ":mag_right: :book::book::book::book::book::book::eyes: \n #{url}")
      end
      match "google" do |client, data, match|
        url = "https://www.google.com/webhp?authuser=2"
        client.say(channel: data.channel, text: ":mag_right:G:o::o:GLE :mag_right: #{url}")
      end
      match "monstar-lab" do |client, data, match|
        url = "https://portal.monstar-lab.vn/homepage"
        client.say(channel: data.channel, text: ":msl: Monstar-Lab :msl: #{url}")
      end
      match "git" do |client, data, match|
        url = "https://github.com/"
        client.say(channel: data.channel, text: ":g:GIT :g: #{url}")
      end
    end
  end
end

class HelloText
  def self.say_hello
    "Hello! This is a Bot!"
  end
end
