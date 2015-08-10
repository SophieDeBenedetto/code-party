class Lab < ActiveRecord::Base
  has_many :snippets
  has_many :users, through: :snippets
  belongs_to :admin, :class_name => :User, :foreign_key => "user_id"

  validates_presence_of :name
end
