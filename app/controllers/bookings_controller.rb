class BookingsController < ApplicationController
  def new
    @flight_id = params[:flight_id]
    number_of_passengers = params[:number_of_passengers].to_i
    @booking = Booking.new
    number_of_passengers.times { @booking.passengers.build }
  end

  def create
    @booking = Booking.new(booking_params)
    if @booking.save
      flash[:success] = "Successfully booked flight"
      redirect_to @booking
    else
      render :new
      flash.now[:danger] = "Failed to book tickets"
    end
  end

  def show
    @booking = Booking.find(params[:id])
    
  end

  private

    def booking_params
      params.require(:booking).permit(:flight_id, :passengers_attributes => [:name, :email])
    end
end
