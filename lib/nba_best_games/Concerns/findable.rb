module Concerns::Findable

    def find_by_name(player_name)
        self.all.find{|player_name| player.name == player_name}
    end

    def find_or_create_by_name(name)
        self.find_by_name(name) || self.create(name)
 
     end

end