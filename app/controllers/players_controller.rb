class PlayersController < ApplicationController
  before_action :set_player, only: [:show, :edit, :update, :destroy]

  # GET /players
  # GET /players.json
  def index
    @players = Player.all
  end

  # GET /players/1
  # GET /players/1.json
  def show
    games = @player.matches.pluck(:game_id).uniq
    @win = 0
    @loss = 0
    Game.where(id: games).each do |game|
      game.matches.order('score DESC').first.player_id == @player.id ? @win +=1 : @loss +=1
    end
    fetch_opponent
  end

  # GET /players/new
  def new
    @player = Player.new
  end

  # GET /players/1/edit
  def edit
  end

  # POST /players
  # POST /players.json
  def create
    @player = Player.new(player_params)

    respond_to do |format|
      if @player.save
        format.html { redirect_to @player, notice: 'Player was successfully created.' }
        format.json { render :show, status: :created, location: @player }
      else
        format.html { render :new }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /players/1
  # PATCH/PUT /players/1.json
  def update
    respond_to do |format|
      if @player.update(player_params)
        format.html { redirect_to @player, notice: 'Player was successfully updated.' }
        format.json { render :show, status: :ok, location: @player }
      else
        format.html { render :edit }
        format.json { render json: @player.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /players/1
  # DELETE /players/1.json
  def destroy
    @player.destroy
    respond_to do |format|
      format.html { redirect_to players_url, notice: 'Player was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_player
      @player = Player.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def player_params
      params.require(:player).permit(:first_name, :last_name, :contact_number, :email)
    end

    def fetch_opponent
      @average_score = (@player&.matches.count > 0) ? (@player&.matches.pluck(:score).sum / @player&.matches.pluck(:score).count) : 0
      @highest_score = winner&.score || 0
      @matches = winner&.game&.matches
      fetch_opponent_details
    end

    def winner
      @player&.matches.order('score DESC')&.first
    end

    def fetch_opponent_details
      @created_at = "Not Yet Played"
      @opponent = "No Match Found"
      if @matches.present?
        @matches.each do |match|
          unless match.player_id == @player.id
            @opponent = match.player.first_name 
            @created_at = match.created_at
          end
        end
      else
        return 0
      end
    end

end
