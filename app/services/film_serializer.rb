class FilmSerializer 
  def initialize(film_object)
      @film = film_object
  end 

  def to_serialized_json
      @film.to_json(:except => [:created_at, :updated_at], 
      :include => { 
        :characters => {:only => [:name]} 
      })
  end 
end 