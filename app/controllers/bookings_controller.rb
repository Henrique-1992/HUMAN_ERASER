class BookingsController < ApplicationController
  before_action :set_killer, only: :create

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user
    if @user.save
      redirect_to killer_path(@user)
    else
      render :new, status: :unprocessable_entity
    end
  end

  private

def set_killer
  @booking = Killer.find(params[:id])
end
def booking_params
end
end
