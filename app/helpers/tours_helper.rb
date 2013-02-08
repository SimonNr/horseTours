module ToursHelper
	def iframe_url(tour)
		tour.url + "&output=embed&z=11"
	end
end