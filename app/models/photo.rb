class Photo < ActiveRecord::Base
  validates_presence_of :name, :url

  belongs_to :user
  belongs_to :album
end
