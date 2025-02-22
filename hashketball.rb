# Write your code here!

require "pry"


def game_hash
  game_hash = {
    :home => {
      :team_name => "Brooklyn Nets",
      :colors => ["Black", "White"],
      :players => {
        "Alan Anderson" => {
         :number => 0,
         :shoe => 16,
         :points => 22,
         :rebounds => 12,
         :assists => 12,
         :steals => 3,
         :blocks => 1,
         :slam_dunks => 1
        },
        "Reggie Evans" => {
         :number => 30,
         :shoe => 14,
         :points => 12,
         :rebounds => 12,
         :assists => 12,
         :steals => 12,
         :blocks => 12,
         :slam_dunks => 7 
        },
        "Brook Lopez" => {
         :number => 11,
         :shoe => 17,
         :points => 17,
         :rebounds => 19,
         :assists => 10,
         :steals => 3,
         :blocks => 1,
         :slam_dunks => 15 
        },
        "Mason Plumlee" => {
         :number => 1,
         :shoe => 19,
         :points => 26,
         :rebounds => 11,
         :assists => 6,
         :steals => 3,
         :blocks => 8,
         :slam_dunks => 5   
        },
        "Jason Terry" => {
         :number => 31,
         :shoe => 15,
         :points => 19,
         :rebounds => 2,
         :assists => 2,
         :steals => 4,
         :blocks => 11,
         :slam_dunks => 1   
        }
      }
    }, 
    :away => {
      :team_name => "Charlotte Hornets",
      :colors => ["Turquoise", "Purple"],
      :players => {
        "Jeff Adrien" => {
         :number => 4,
         :shoe => 18,
         :points => 10,
         :rebounds => 1,
         :assists => 1,
         :steals => 2,
         :blocks => 7,
         :slam_dunks => 2
        },
        "Bismack Biyombo" => {
         :number => 0,
         :shoe => 16,
         :points => 12,
         :rebounds => 4,
         :assists => 7,
         :steals => 22,
         :blocks => 15,
         :slam_dunks => 10 
        },
        "DeSagna Diop" => {
         :number => 2,
         :shoe => 14,
         :points => 24,
         :rebounds => 12,
         :assists => 12,
         :steals => 4,
         :blocks => 5,
         :slam_dunks => 5 
        },
        "Ben Gordon" => {
         :number => 8,
         :shoe => 15,
         :points => 33,
         :rebounds => 3,
         :assists => 2,
         :steals => 1,
         :blocks => 1,
         :slam_dunks => 0   
        },
        "Kemba Walker" => {
         :number => 33,
         :shoe => 15,
         :points => 6,
         :rebounds => 12,
         :assists => 12,
         :steals => 7,
         :blocks => 5,
         :slam_dunks => 12   
        }
      }
    }
  }
end


 def num_points_scored(player_name)
  game_hash.each do |location, team|
    team.each do |attribute, data|
      if attribute == :players
         data.each do |player, stats|
           if player == player_name
              return stats[:points]
            end
          end
      end
    end
  end
end

def shoe_size(player_name)
  game_hash.each do |location, team|
    team.each do |attribute, data|
      if attribute == :players
         data.each do |player, stats|
           if player == player_name
              return stats[:shoe]
            end
          end
      end
    end
  end
  shoe_size
end

def team_colors(team_name)
  game_hash.each do |location, team|
    if team[:team_name] == team_name
        return team[:colors]
    end
  end
  team_colors
end

def team_names
  team_names = []
  game_hash.each do |location, team|
    team_names << team[:team_name]
  end
  team_names
end

def player_numbers(team_name)
  jersey_numbers = []
  game_hash.each do |location, team|
    if team[:team_name] == team_name
      team.each do |attribute, data|
        if attribute == :players
          data.each do |player, stats|
            jersey_numbers << stats[:number]
          end
        end
      end
    end
  end
  jersey_numbers
end

def player_stats(name)
   game_hash.each do |location, team_data|
      team_data[:players].each do |player_name, value|
         if player_name == name
            return value
         end
      end
   end
end
  
end

def shoe_size(player_name)
  game_hash.each do |home_away, keys|
    keys[:players].each do |player|
      return player[:shoe] if player[:player_name] == player_name
    end
  end
end

def big_shoe_rebounds
  biggest_shoe = 0
  player_w_biggest_shoe = nil
  player_rebounds = nil
  game_hash.each do |team, attributes|
    game_hash[team].each do |attribute, value|
      if attribute == :players
        game_hash[team][:players].each do |player, stats|
          game_hash[team][:players][player].each do |stat, val|
            if stat == :shoe && val > biggest_shoe
              biggest_shoe = val
              player_w_biggest_shoe = player
            end
          end
          if player == player_w_biggest_shoe
            player_rebounds = game_hash[team][:players][player][:rebounds]
          end
        end
      end
    end
  end
  player_rebounds
end