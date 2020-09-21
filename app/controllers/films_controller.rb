class FilmsController < ApplicationController

  def index
    films = Film.all
    render json: FilmSerializer.new(films).to_serialized_json 
  end

end
