class SportsController < ApplicationController
  def index
    @sports = Sport.all.order(created_at: :desc)
  end

  def show
    @sport = Sport.find(params[:id])
    @comment = Comment.new
    @comments = @sport.comments
  end
end
