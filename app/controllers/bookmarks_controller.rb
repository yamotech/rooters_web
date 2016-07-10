class BookmarksController < ApplicationController
  def toggle
    sport_id = params[:sport_id]
    user_bookmarks = current_user.bookmarks
    if user_bookmarks.exists?(sport: sport_id)
      user_bookmarks.where(sport: sport_id).destroy_all
    else
      user_bookmarks.create(user: current_user, sport: Sport.find(sport_id))
    end
    render :nothing => true
  end
end
