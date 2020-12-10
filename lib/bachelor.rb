require 'pry'

def get_first_name_of_season_winner(data, season)
  first_name =[]
  winner = []
  data[season].each do |contestants|
    if contestants["status"] == "Winner"
      winner = contestants["name"].split
    end
  end
  first_name = winner[0]
  return first_name
end


def get_contestant_name(data, occupation)
  data.each do |contestants|
    contestants[1].each do |contestant_info|
      if contestant_info["occupation"] == occupation
        return contestant_info["name"]
      end
    end
  end
end

def count_contestants_by_hometown(data, hometown)
  count = 0
  data.each do |contestants|
    contestants[1].each do |contestant_info|
      if contestant_info["hometown"] == hometown
        count += 1
      end
    end
  end
  count
end

def get_occupation(data, hometown)
  data.each do |contestants|
    contestants[1].each do |contestant_info|
      if contestant_info["hometown"] == hometown
        return contestant_info["occupation"]
      end
    end
  end
end

def get_average_age_for_season(data, season)
  age_array = []
  solution = 0
  data[season].each do |contestants|
    age_array << contestants["age"].to_f
  end
  solution = age_array.sum / age_array.length
  solution.round
end
