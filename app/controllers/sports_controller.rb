class SportsController < ApplicationController
  def index
    @sports = Sport.all.order(created_at: :desc)
  end

  def show
  end
end
