require 'pry'

#HELPER METHOD
def all_contestants data
  data.values.flatten
end


def get_first_name_of_season_winner(data, season)
  winning_contestant = data[season].find do |contestant| 
    contestant["status"] == "Winner"
  end
    winning_contestant["name"].split[0]
end
#ORIGINAL CODE
# def get_first_name_of_season_winner(data, season)
#   first_name =[]
#   winner = []
#   data[season].each do |contestants|
#     if contestants["status"] == "Winner"
#       winner = contestants["name"].split
#     end
#   end
#   first_name = winner[0]
#   return first_name
# end


def get_contestant_name data, occupation
  all_contestants(data).find do | contestant |
    occupation == contestant["occupation"]
  end["name"]
end
# def get_contestant_name(data, occupation)
#   data.each do |contestants|
#     contestants[1].each do |contestant_info|
#       if contestant_info["occupation"] == occupation
#         return contestant_info["name"]
#       end
#     end
#   end
# end


def count_contestants_by_hometown data, hometown
  all_contestants(data).count do |contestant|
    hometown == contestant["hometown"]
  end
end
# def count_contestants_by_hometown(data, hometown)
#   count = 0
#   data.each do |contestants|
#     contestants[1].each do |contestant_info|
#         if contestant_info["hometown"] == hometown
#         count += 1
#         end
#       end
#     end
#   count
# end


def get_occupation(data, hometown)
  all_contestants(data).find do |contestants|
    contestants["hometown"] == hometown
  end["occupation"]
end
# def get_occupation(data, hometown)
#   data.each do |contestants|
#     contestants[1].each do |contestant_info|
#       if contestant_info["hometown"] == hometown
#         return contestant_info["occupation"]
#       end
#     end
#   end
# end


def get_average_age_for_season(data, season)
  age_array = data[season].map {|contestants| contestants["age"].to_f}
  (age_array.sum / age_array.length).round
end
# def get_average_age_for_season(data, season)
#   age_array = []
#   solution = 0
#   data[season].each do |contestants|
#     age_array << contestants["age"].to_f
#   end
#   solution = age_array.sum / age_array.length
#   solution.round
# end

# binding.pry
# 0