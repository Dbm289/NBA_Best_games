#require 'pry'

class Player
    attr_reader :id, :first_name, :last_name, :position, :height_feet, :height_inches, :weight_pounds, :team

    @@all = []

    #extend Concerns::Findable

    def initialize(attributes)
        attributes.each do |key, value|
            self.class.attr_accessor(key)
            self.send(("#{key}="), value)
        end
        
        save

    end

    def self.all
        @@all
    end

    def self.destroy_all
        @@all.clear
    end

    def save
        @@all << self
    end

    def self.count
        @@all.size

    end

    def self.find_by_name(last_name, first_name)
        self.all.find{|player| player.last_name == player_last_name} && self.all.find{|player| player.first_name == player_first_name}
    end

   # def self.new_by_name(song_name)
    #    new_song = self.new
     #   new_song.name = song_name
      #  return new_song

    #end

    def self.find_or_create_by_name(name)
       self.find_by_name(name) || self.create(name)

    end

   #def self.new_from_filename(filename)
    #binding.pry
    #parts = filename.split(" - ")
    #artist = Artist.find_or_create_by_name(parts[0])
    #name = parts[1]
    #genre = Genre.find_or_create_by_name(parts[2].gsub(".mp3", ""))

    #Song.new(name, artist, genre)


   #end

   #def self.create_from_filename(filename)
    #parts = filename.split(" - ")
    #artist = Artist.find_or_create_by_name(parts[0])
    #name = parts[1]
    #genre = Genre.find_or_create_by_name(parts[2].gsub(".mp3", ""))

    #new_song = Song.new(name, artist, genre)
    #new_song = self.new_from_filename(filename)
    #new_song.save
    #new_song

   #end
      

    #def artist_name
     #   if self.artist
      #    self.artist.name
       # else 
        #  return nil
        #end
          
          
      #end

end