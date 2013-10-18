class Album < ActiveRecord::Base
  validates :title, :presence => true

  has_many :photos
  has_one :user, :through => :photo
end
