class FlightsController < ApplicationController

  def index
    @dates = Flight.all.map { |flight| flight.departure.to_date }.uniq
    if params[:from_airport].nil?
      @flights = nil
    else
      @flights = Flight.all.select do |flight|
        flight.to_airport.name == params[:to_airport] &&
        flight.from_airport.name == params[:from_airport] &&
        flight.departure.strftime('%Y-%m-%d') == params[:date]
      end
      @number_of_passengers = params[:number_of_passengers]
    end
  end

end
