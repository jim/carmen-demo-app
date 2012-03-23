class Order < ActiveRecord::Base
  validates_presence_of :name, message: 'is invalid, and this is a demo app and you can\'t save anything anyway.'

  attr_accessible :country_code, :state_code
end
