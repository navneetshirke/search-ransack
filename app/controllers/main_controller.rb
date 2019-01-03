class MainController < ApplicationController
  def index
  end

  def search

    @movies = Movie.ransack(city_cont: params[:q]).result(distinct: true)
    @directors = Movie.ransack(name_cont: params[:q]).result(distinct: true)

      respond_to do |format|
        format.html {}
        format.json {
          @movies    = @movies.limit(10)
          @directors = @directors.limit(5)
      }
    end
  end
end

