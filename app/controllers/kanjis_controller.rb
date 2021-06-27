class KanjisController < ApplicationController
  def index
    @results = Kanji.retrieve_results("#{params[:query]}");
    raise
  end
end
