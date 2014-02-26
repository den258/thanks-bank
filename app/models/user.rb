
class User < ActiveRecord::Base

  attr_accessible :account_no
  attr_accessible :area
  attr_accessible :memo
  attr_accessible :name
  attr_accessible :give_me
  attr_accessible :give_you

  validates :account_no,
    presence: true,
    uniqueness: true,
    format: {with: /^\d{3}$/}

  validates :area,
    presence: true

  validates :name,
    presence: true

end
