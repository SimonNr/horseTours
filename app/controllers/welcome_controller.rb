class WelcomeController < ApplicationController
	def index
    @tours = Tour.all

    respond_to do |format|
      format.html # index.html.erb
      format.json { render json: @tours }
    end
  end
end