class Character < ApplicationRecord
    belongs_to :planet #, optional: true
    #can't use optional true bc null:false in sqlite db
    has_many :film_characters
    has_many :films, through: :film_characters

    def planet_name=(name)
        planet = Planet.find_or_create_by(name: name)
        self.planet = planet 
    end 

    def planet_name
        planet.name 
    end 
end
