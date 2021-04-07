class Group < ApplicationRecord
  
  has_many :posts
  has_many :belongings
  has_many :students, through: :belongings
  accepts_nested_attributes_for :belongings
end
