class CommentsController < ApplicationController
  def create
    @comment = Comment.new(comment_params)
    if @comment.save
      redirect_to sport_url(@comment.sport_id), notice: 'コメントを登録しました。'
    else
      redirect_to sport_url(@comment.sport_id)
    end
  end

  def edit
    @comment = Comment.find(params[:id])
  end

  def update
    @comment = Comment.find(params[:id])
    if @comment.update(comment_params)
      redirect_to sport_url(@comment.sport_id), notice: 'コメントを更新しました'
    else
      redirect_to sport_url(@comment.sport_id)
    end
  end

  def destroy
    @comment = Comment.find(params[:id])
    sport_id = @comment.sport_id
    @comment.destroy
    redirect_to sport_url(sport_id), alert: 'コメントを削除しました'
  end

  private

  def comment_params
    params.require(:comment).permit(:body, :sport_id)
  end
end
