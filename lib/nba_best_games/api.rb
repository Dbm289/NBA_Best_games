require 'httparty'

class Get

  include HTTParty 

    def self.set_teams
        
        url = "https://www.balldontlie.io/api/v1/teams"


        uri = URI(url)
        
        response = Net::HTTP.get(uri)
        
        better_response = JSON.parse(response)
      
        better_response["data"].each do | team |
          Team.new(team)
        end
        
      

    end

    
  end