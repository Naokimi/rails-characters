class PowersController < ApplicationController
  before_action :find_character

  def new
    @power = Power.new
  end

  def create
    @power = Power.new(power_params)
    @power.name = @power.name.split.map(&:capitalize).join(' ')
    @power.character = @character
    if @power.save
      redirect_to character_path(@power.character.id)
    else
      render :new
    end
  end

  private

  def find_character
    @character = Character.find(params[:character_id])
  end

  def power_params
    params.require(:power).permit(:name)
  end
end
