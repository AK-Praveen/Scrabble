class LeaderBoardsController < ApplicationController
  def index
  	players_ids = Player.joins(:matches).group('players.id').having("count(matches.id)>=10")
  	@players = Player.where(id: players_ids).includes(:matches).order("matches.score desc").limit(10)
  end
end
