class GamesController < ApplicationController
  before_action :set_game, only: %i[show edit update destroy]

  def index
    render Views::Games::Index.new
  end

  def show
    render Views::Games::Show.new
  end

  def new
    render Views::Games::New.new
  end

  def create
    Game.create(params.require(:game).permit(:name))
    redirect_to :index
  end

  def edit
    render Views::Games::Edit.new
  end

  def update
  end

  def destroy
  end

  private

  def set_game
    @game = Game.find(params[:id])
  end
end
