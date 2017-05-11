class Specie < ActiveRecord::base
  belongs_to :category
  has_many :comments
end
