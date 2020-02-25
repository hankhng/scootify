class BookingsController < ApplicationController
  def index
    @bookings = Booking.all
  end

  def new
    @booking = Booking.new
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.valid?
      @booking.save
      redirect_to @booking, notice: 'Booking successfully completed.'
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  private

  def booking_params
    params.require(:booking).permit(:renter_id, :scooter_id, :date, :booking_price, :comment)
  end
end

