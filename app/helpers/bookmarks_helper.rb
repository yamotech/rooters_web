module BookmarksHelper
  def bookmark_icon(sport, user)
    if user
      if user.bookmarks.exists?(sport: sport)
        '<i class="fa fa-bookmark fa-2x"></i>'
      else
        '<i class="fa fa-bookmark fa-bookmark-o fa-2x"></i>'
      end
    end
  end
end
