class CharactersController < ApplicationController
  before_action :find_character, only: [:show]

  def index
    @characters = Character.all
  end

  def show
  end

  def new
    @character = Character.new
  end

  def create
    @character = Character.new(character_params)
    if @character.save
      redirect_to character_path(@character)
    else
      render :new
    end
  end

  private

  def find_character
    @character = Character.find(params[:id])
  end

  def character_params
    params.require(:character).permit(:name, :photo, :description, :specie_id)
  end
end
