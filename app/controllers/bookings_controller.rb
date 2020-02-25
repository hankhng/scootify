class BookingsController < ApplicationController
   before_action :set_booking, only: [:show]

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
    authorize @booking

    if @booking.valid?
      @booking.save
      redirect_to @booking, notice: 'Booking successfully completed.'
    else
      render :new
    end
  end

  def show
  end

  private

    # Use callbacks to share common setup or constraints between actions.
  def set_scooter
    @booking = Booking.find(params[:id])
    authorize @booking

  end


  def booking_params
    params.require(:booking).permit(:renter_id, :scooter_id, :date, :booking_price, :comment)
  end
end

