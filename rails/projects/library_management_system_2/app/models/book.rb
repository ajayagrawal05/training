class Book < ApplicationRecord
  validates :id, comparison: {greater_than: 1000}, uniqueness: true
  validates :name, presence: true, length: {maximum: 50}
  validates :isbn, length: {is: 6}, uniqueness: true, allow_nil: true
  validates :author_id, presence: true
  validates :price, presence: true, numericality: true
  validates :copies, presence: true, numericality: {only_integer: true}
  belongs_to :author
  #has_many :issues
  #has_many :students, through: :issues
  has_and_belongs_to_many :students
end
