require 'pry'
class Team 

    attr_reader :id, :abbreviation, :city, :conference, :division, :full_name, :name

    @@all = []

    #extend Concerns::Findable

    #def initialize(name: name, id: id, abbreviation: abbreviation, city: city, conference: conference, division: division, full_name: full_name)
     #   @name = name
      #  @id = id
       # @abbreviation = abbreviation
       # @city = city 
       # @conference = conference 
       # @division = division
       # @full_name = full_name

        # save
        

    #end

    def initialize(attributes)
        attributes.each do |key, value|
            self.class.attr_accessor(key)
            self.send(("#{key}="), value)
        end
        
        save

    end


    def self.all
        #puts "inside team.all"
        @@all

    end

    def self.destroy_all
        @@all.clear
    end

    def save
        @@all << self
    end

    def self.create(name)
        new_team = Team.new(name)
        new_team.save
        new_team
        
    
    end

    def add_player(player)
        if player.team
            player.team

        else
            player.team = self
        end

        if @players.include?(player)
            nil
        else
            @players << player
        end
       
    end

    def players
        @players
    end

    #def genres
     #   array = songs.map do | song |
      #      song.genre
            #binding.pry
       # end

        #array.uniq

        #songs_array = song.genre

        #songs_array.uniq

    #end

end