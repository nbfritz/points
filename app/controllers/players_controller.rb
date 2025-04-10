class PlayersController < ApplicationController
  before_action :set_player, only: %i[show edit update destroy]
  before_action :new_player, only: %i[new]

  def index
    players = Player.all
    render Views::Players::Index.new(players:)
  end

  def show
    render Views::Players::Show.new(player: @player)
  end

  def new
    @player = Player.new
    render Views::Players::New.new(player: @player)
  end

  def create
    Player.create(params.require(:player).permit(:name))
    redirect_to players_path
  end

  def edit
    render Views::Players::Edit.new(player: @player)
  end

  def update
    @player.update(params.require(:player).permit(:name))
    redirect_to players_path
  end

  def destroy
  end

  private

  def set_player
    @player = Player.find(params[:id])
  end

  def new_player
    @player = Player.new
  end
end