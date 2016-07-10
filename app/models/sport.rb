class Sport < ActiveRecord::Base
  has_many :comments, dependent: :destroy
  has_many :bookmarks
end
