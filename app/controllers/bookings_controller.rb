class BookingsController < ApplicationController
  before_action :set_killer, only: :create
  before_action :set_booking, only: [:confirmation]

  def create
    @booking = Booking.new(booking_params)
    @booking.user = current_user

    if @user.save
      redirect_to killer_path(@user)
    @booking.killer = @killer
    if @booking.save
      redirect_to confirmation_path(@booking)
    else
      render "killers/show", status: :unprocessable_entity
    end
  end

  def confirmation
  end

  private


def set_killer
  @booking = Killer.find(params[:id])
end
def booking_params
end
  def set_killer
    @killer = Killer.find(params[:killer_id])
  end

  def set_booking
    @booking = Booking.find(params[:id])
  end

  def booking_params
    params.require(:booking).permit(:start_time, :end_time)
  end
end
