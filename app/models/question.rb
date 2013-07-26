class Question < ActiveRecord::Base
  attr_accessible :answer, :inquiry

  #has_and_belongs_to_many :users

  validates :inquiry, :presence => true


end
