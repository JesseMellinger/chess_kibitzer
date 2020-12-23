class Player
  attr_reader :section,
              :url,
              :username,
              :score,
              :title,
              :avatar
  def initialize(section, player_data)
    @section = section
    @url = player_data[:url]
    @username = player_data[:username]
    @score = player_data[:score]
    @title = player_data[:title]
    @avatar = player_data[:avatar] 
  end
end
