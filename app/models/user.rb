
class User < ActiveRecord::Base

  attr_accessible :account_no
  attr_accessible :area
  attr_accessible :memo
  attr_accessible :name

end
