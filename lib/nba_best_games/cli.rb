class NbaBestGames::CLI

    def call
        Get.set_teams
        puts "Welcome my NBA franchise information CLI!"
        puts ""
        puts "To see the full list of teams, hit '1'"
        puts "To get the full information about a specific team, hit '2'"
        puts ""
        puts "What would you like to do?"
        puts "To quit, enter 'exit'."
        input = gets.chomp

        while input != "exit"
            if input == "1"
                list_teams
            elsif input == "2"
                
           
            end

            input = gets.chomp
        end

    end

    def list_players
        
        player_list = Player.all
        new_array = player_list.sort { | player_1, player_2 | player_1.name <=> player_2.name }
        new_array.each_with_index do | player, index | 
            puts "#{index + 1}. #{player.first_name}"
        end

    end

    def list_teams
        #binding.pry
        team_list = Team.all
        new_array = team_list.sort { | team_1, team_2 | team_1.name <=> team_2.name }
        new_array.each_with_index do | team, index |
            puts "#{index + 1}. #{team.name}"
          
        end

    end

    def team_info
        puts "#{team.full_name}"
        puts ""
        puts "#{team.division}"
        puts ""
        puts "#{team.conference}"
        puts ""
        puts "#{team.abbreviation}"

    end

    
    def list_players_on_team
        puts "Choose your squad:"
        input = gets.chomp
        team_name = Team.find_by_name(input)
        if team_name
       
        new_array = team_name.players
        final_array = new_array.sort { | player_1, player_2 | player_1.name <=> player_2.name }
        final_array.each_with_index do | player, index | 
           puts "#{index + 1}. #{player.name}"
        end
        else
            nil
        end

    end

    def player_date
        puts "Choose a player:"
        input = gets.chomp

    end

    def team_date

    end

    def player_stats

    end

    #def player_rebounds

    #end

    #def player_assists

    #end

    #def player_blocks

    #end

    #def player_steals

    #end


   







end