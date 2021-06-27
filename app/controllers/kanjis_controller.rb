class KanjisController < ApplicationController
  def index
    if params[:dropdown_selection] == 'Kanji'
      # rubocop:disable
      @results = Kanji.retrieve_kanji("#{params[:query]}")
      # rubocop:enable
    else
      @results = Kanji.retrieve_readings("#{params[:query]}")
    end
  end
end
