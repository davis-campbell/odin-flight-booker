class PassengerMailer < ApplicationMailer
  default from: 'odin-flights@example.com'

  def thank_you(passenger)
    @passenger = passenger
    @flight = @passenger.flights[0]
    mail(to: @passenger.email, subject: "Thanks for booking with odin-flights")
  end
end
