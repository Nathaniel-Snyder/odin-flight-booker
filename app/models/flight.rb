class Flight < ActiveRecord::Base
	belongs_to :to_airport, 	  class_name: "Airport"
	belongs_to :from_airport, 	class_name: "Airport"
  has_many :bookings
  has_many :passengers, through: :bookings
  

	validates :to_airport, 		presence: true
	validates :from_airport, 	presence: true

  def self.search(params)
    if params[:search]
      Flight.where(from_airport_id:  params[:from_airport_id], 
      			       to_airport_id:    params[:to_airport_id])
 #                  start_time:       params[:start_time] )
    else
      Flight.none
    end
  end

	def formatted_start_time
		start_time.strftime("%x at %r")
	end

end