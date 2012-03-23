class Order < ActiveRecord::Base
  validates :name, presence: true
end
