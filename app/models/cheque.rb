class Cheque < ActiveRecord::Base
  validates :payment_date, presence: true
  validates :recipient, presence: true
  validates :value, presence: true
end
