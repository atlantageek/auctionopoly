class LobbyController < ApplicationController
  def index
    @games=Game.all
  end

  def show
  end

  def join
  end
end
