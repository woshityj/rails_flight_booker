class PassengerMailer < ApplicationMailer
    default from: "notifications@example.com"

    def thank_you_email
        @booking = Booking.find(params[:id])
        @url = booking_url(@booking.id)
        mail(to: @booking.passengers.pluck(:email), subject: "Flight Confirmation")
    end
end
