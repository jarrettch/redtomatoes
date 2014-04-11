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
          @apikey = ENV['REDBOX_API_KEY']
      end
    end
  end
end
