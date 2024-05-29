class KillersController < ApplicationController
  before_action :set_killer, only: :show
  def index
    @killers = Killer.all
  end

  def new
    @killer = Killer.new
  end

  def show
  end

  def create
    @killer = Killer.new(killer_params)
    @killer.user = current_user
      if @killer.save
       redirect_to killer_path(@killer), notice: "Yeeey! You've created a new killer"
     else
       render :new, status: :unprocessable_entity
      end
  end

  private

  def set_killer
    @killer = Killer.find(params[:id])
  end

  def killer_params
    params.require(:killer).permit(:first_name, :last_name, :description, :rating, photos: [])
  end
end
