class SportsController < ApplicationController
  def index
    @q = Sport.order(created_at: :ASC).ransack(params[:q])
    @sports = @q.result.page(params[:page]).per(10)
  end

  def show
    @sport = Sport.find(params[:id])
    @comment = Comment.new
    @comments = @sport.comments
  end
end
