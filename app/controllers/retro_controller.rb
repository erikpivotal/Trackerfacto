class RetroController < ApplicationController
  def index
     @retros = Retro.all
  end

  def create
  end
end
