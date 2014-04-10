module Api
  module V1
    class MoviesController < ApplicationController
      respond_to :json

      def index
          @movie = RottenMovie.find(:title => "Scarface", :limit => 1)
          @box_office = RottenList.find(:type => "box_office", :limit => 10)
          @opening = RottenList.find(:type => "opening", :limit => 5)
          @new_releases = RottenList.find(:type => "new_releases", :limit => 5)
          @top_rentals = RottenList.find(:type => "top_rentals", :limit => 12)
          # response = HTTParty.get("http://api.rottentomatoes.com/api/public/v1.0/lists/dvds/top_rentals.json?apikey=" + ENV['ROTTEN_API_KEY'] + "&limit=12")
          # @top_rentals = JSON.parse(response.body)
          @apikey = ENV['REDBOX_API_KEY']
          respond_with([@apikey,@movie.raw_data,@box_office,@new_releases,@top_rentals])
      end
    end
  end
end
