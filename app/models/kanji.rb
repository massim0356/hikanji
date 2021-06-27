class Kanji < ApplicationRecord
  require 'rest-client'
  require 'uri'
  def self.get_data
    RestClient.get(@url, { :content_type => :json })
  end

  def self.retrieve_results(param)
    unless param.empty?
      @url = "https://kanjiapi.dev/v1/kanji/#{URI::encode(param.force_encoding('ASCII-8BIT'))}"
      JSON.parse(Kanji.get_data)
    end
  end
end
