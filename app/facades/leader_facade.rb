class LeaderFacade
  def self.get_leaders()
    leader_data = ChessService.get_leaderboard()
    leader_data.map do |section, player_data|
      Player.new(section, player_data.first)
    end
  end
end
