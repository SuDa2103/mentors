class Mentor < ApplicationRecord
  validates :name, presence: true, uniqueness: true
  has_many :users, :through => :meetings
  has_many :meetings, :dependent => :destroy
end
