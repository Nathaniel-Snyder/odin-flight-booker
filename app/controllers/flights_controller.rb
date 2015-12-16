class FlightsController < ApplicationController

	def index
		@flights = Flight.search(params)
		@airports = Airport.pluck(:code, :id).sort

		@start_times = Flight.all.map { |f| [f.formatted_start_time, 
										f.start_time] }
		@passengers = (1..4)
	end
end
