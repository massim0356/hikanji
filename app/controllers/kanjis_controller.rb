class KanjisController < ApplicationController
  def index
    if params[:dropdown_selection] == 'Kanji'
      # rubocop:disable
      @results = Kanji.retrieve_kanji("#{params[:query]}")
      # rubocop:enable
      @switch = true
    else
      @results_readings = Kanji.retrieve_readings("#{params[:query]}")
      @switch2 = true
    end
  end
end
