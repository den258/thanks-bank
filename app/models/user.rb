
class User < ActiveRecord::Base

  attr_accessible :account_no
  attr_accessible :area
  attr_accessible :memo
  attr_accessible :name

  validates :account_no,
    presence: true,
    uniqueness: true,
    format: {with: /^\d{3}$/}

  validates :area,
    presence: true

  validates :name,
    presence: true

end
