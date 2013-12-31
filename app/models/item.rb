class Item < ActiveRecord::Base

  validates :title, presence: true
  validates :description, presence: true
  validates :quantity, presence: true

end
