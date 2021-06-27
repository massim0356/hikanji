class KanjisController < ApplicationController
  def index
    # rubocop:disable
    @results = Kanji.retrieve_kanji("#{params[:query]}")
    # rubocop:enable
  end
end
