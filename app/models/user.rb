class User < ActiveRecord::Base
  has_and_belongs_to_many :questions
  attr_accessible :email, :username

  validates :inquiry, :presence => true
  validates :answer, :presence => true
  validates :answer, :presence => true,
            :length => { :minimum => 1 }


end
