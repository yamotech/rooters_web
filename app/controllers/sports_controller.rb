class SportsController < ApplicationController
  def index
    @sports = Sport.order(created_at: :desc).page(params[:page]).per(10)
  end

  def show
    @sport = Sport.find(params[:id])
    @comment = Comment.new
    @comments = @sport.comments
  end
end
