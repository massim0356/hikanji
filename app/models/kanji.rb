class Kanji < ApplicationRecord
  require 'rest-client'
  require 'uri'
  def self.get_data
    RestClient.get(@url, { content_type: :json })
  end

  def self.retrieve_kanji(param)
    @url = "https://kanjiapi.dev/v1/kanji/#{URI.encode(param.force_encoding('ASCII-8BIT'))}"
    begin
      JSON.parse(Kanji.get_data) if Kanji.get_data.code == 200
    rescue RestClient::NotFound
      return 'No results found'
    end
  end

  def self.retrieve_readings(param)
    @url = "https://kanjiapi.dev/v1/reading/#{URI.encode(param.force_encoding('ASCII-8BIT'))}"
    begin
      JSON.parse(Kanji.get_data) if Kanji.get_data.code == 200
    rescue RestClient::NotFound
      return 'No results found'
    end
  end
end
