class NbaBestGames::CLI

    def call
        Get.set_teams
        puts ""
        puts "Welcome my NBA franchise information CLI!"
        puts ""
        puts "To see the full list of teams, hit '1'"
        puts "To get the full information about a specific team, hit '2'"
        puts ""
        puts "What would you like to do?"
        puts "To quit, enter 'exit'."
        input = gets.chomp

    
            if input == "1"
                list_teams
            elsif input == "2"
                team_info
            elsif input == "exit"
                exit
            else
                puts "I'm sorry, I didn't get that. Please take another look at the options!"
                call
            
            end

    end

    def list_teams
        #binding.pry
        team_list = Team.all.uniq
        new_array = team_list.sort { | team_1, team_2 | team_1.name <=> team_2.name }
        new_array.each_with_index do | team, index |
            puts "#{index + 1}. #{team.name}"
        end
        
        call
          


    end

    def team_info
        puts "Enter the team name here: "
        user_input = gets.chomp

        
        Team.all.select do | team |
            if team.name == user_input
                puts ""
                puts "They play their home games in #{team.city}"
                puts "They play in the #{team.division} Division"
                puts "Which is in the #{team.conference}ern Conference"
                puts "Their scoreboard abbreviation is #{team.abbreviation}"
                puts ""
                puts "Would you like to search another team? Please enter 'Y,' 'N' or 'exit' to quit."
                second_input = gets.chomp
                if second_input == "Y"
                    team_info
                elsif second_input == "N"
                    call
                elsif second_input == "exit" || "Exit"
                    exit
                else
                    puts "I'm sorry, I don't understand. Please select a team to learn more about."
                    team_info
                end
            end
        end
        
    end

end