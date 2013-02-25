module TournamentsHelper
	def iframe_place(tournament)
		tournament.place + "&output=embed&z=11"
	end
end
