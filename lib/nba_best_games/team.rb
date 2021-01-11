require 'pry'
class Team 

    attr_reader :id, :abbreviation, :city, :conference, :division, :full_name, :name

    @@all = []

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


  
end