class BookingsController < ApplicationController
   before_action :set_booking, only: [:show]
   before_action :set_scooter, only: [:new, :create]

  def index
    # @bookings = Booking.all
    @bookings = policy_scope(Booking).order(created_at: :desc)
  end

  def new
    @booking = Booking.new
    authorize @booking
  end

  def create
    @booking = Booking.new(booking_params)
    @booking.renter = current_user
    @booking.scooter = @scooter
    authorize @booking

    if @booking.save
      redirect_to @booking, notice: 'Booking successfully completed.'
    else
      render :new
    end
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def owned
    @bookings = current_user.bookings
    authorize @bookings
  end

  private

    # Use callbacks to share common setup or constraints between actions.
  def set_booking
    @booking = Booking.find(params[:id])
    authorize @booking
  end

  def set_scooter
    @scooter = Scooter.find(params[:scooter_id])
  end


  def booking_params
    params.require(:booking).permit(:renter_id, :scooter_id, :start_date, :end_date, :booking_price, :comment)
  end
end

