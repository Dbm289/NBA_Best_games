require 'httparty'

class Get

  include HTTParty 

    def self.set_teams
        
        url = "https://www.balldontlie.io/api/v1/teams.json"


        uri = URI(url)
        #binding.pry
        response = Net::HTTP.get(uri)
        better_response = JSON.parse(response)
        better_response["data"].each do | team |
          #binding.pry
          Team.new(team)
        end
        #Team.all

        #loop over array to create new team
        #set to only do this when it starts
      

    end

    def self.set_players

        url = "https://www.balldontlie.io/api/v1/players"

        uri = URI(url)
        #binding.pry
        response = Net::HTTP.get(uri)
        better_response = JSON.parse(response)
        better_response["data"].each do | player |
          #binding.pry
          Player.new(player)
        end
      

    end


    def self.get_game

        url = "https://www.balldontlie.io/api/v1/games?seasons[]=2020&team_ids[]=1"

        uri = URI(url)
        response = Net::HTTP.get(uri)
        JSON.parse(response)
      
    end

  end