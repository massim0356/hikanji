class KanjisController < ApplicationController
  require 'rest-client'
  def get_kanji
    url = "https://kanjiapi.dev/v1/kanji/all"
    rest_response = RestClient.get(url)
    response = JSON.parse(rest_response.body)
  end
end
