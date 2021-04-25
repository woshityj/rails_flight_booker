class BookingsController < ApplicationController
  def index
  end

  def show
    @booking = Booking.find(params[:id])
  end

  def new
    if params[:id]
      @flight_id = params[:id]
      @flight = Flight.where(:id => params[:id]).all
      @passengers = params[:passengers]
      @booking = Booking.new
      @booking.passengers.build
    end
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      redirect_to booking_path(@booking.id)
    else
      render :index
    end
  end

  private
  def booking_params
    params.require(:booking).permit(:flight_id, passengers_attributes: [:name, :email])
  end
end
