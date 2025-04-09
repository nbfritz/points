class PlayersController < ApplicationController
  def index
    render Views::Players::Index.new
  end

  def show
    render Views::Players::Show.new
  end

  def new
    render Views::Players::New.new
  end

  def create
  end

  def edit
    render Views::Players::Edit.new
  end

  def update
  end

  def destroy
  end
end
