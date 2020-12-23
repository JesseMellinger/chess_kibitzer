class ChessService
  def self.get_leaderboard()
   response = conn.get '/pub/leaderboards'
   parse_results(response) 
  end

  private
  def self.conn
    Faraday.new('https://api.chess.com')
  end

  def self.parse_results(response)
    JSON.parse(response.body, symbolize_names: true)
  end
end
