class Snippet < ActiveRecord::Base

  belongs_to :user
  belongs_to :lab

  validates_presence_of :content
end
