class FlightsController < ApplicationController
  def index
    @airport_options = Airport.all.map{ |a| [a.name, a.id] }
    @flights = Flight.all

    if params[:from_id]
      @flights_search = Flight.where(:from_id => params[:from_id], :to_id => params[:to_id], :date => params[:date]).all
      @passengers = params[:passengers]
    end
  end
end
