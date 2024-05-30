class BookingsController < ApplicationController
  before_action :set_killer, only: :create

  def new
    @booking = Booking.new
  end

  def create
    @killer = Killer.new(killer_params)
    @killer.user = current_user
    if @user.save
      redirect_to killer_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

def set_killer
  @killer = Killer.find(params[:id])
end
end
