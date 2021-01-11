require_relative "./nba_best_games/version"
require_relative "./nba_best_games/cli"
require_relative "./nba_best_games/team.rb"
require_relative "./nba_best_games/api.rb"
require 'net/http'
require 'open-uri'
require 'json'

require 'pry'

module NbaBestGames
  class Error < StandardError; end
end
