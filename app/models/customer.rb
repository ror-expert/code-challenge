class Customer < ApplicationRecord
  belongs_to :company

  validates_presence_of :first_name, :last_name, :email 
end
