class Team

    attr_reader :name, :players, :points
    attr_accessor :coach

    def initialize (name, players, coach)
        @name = name
        @players = players
        @coach = coach
        @points = 0
    end

    def add_player (player)
        @players.push(player)
    end

    def check_player_exists (player)
        @players.each{ |current_player| 
        if (current_player == player)
             return true
        end
        }
        return false
    end

    def add_match_result (won)
        @points += 3 if won
    end

end