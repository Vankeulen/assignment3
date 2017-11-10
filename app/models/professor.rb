class Professor < ApplicationRecord
  has_many :sections
  has_many :students
  
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_length_of :name, :maximum => 255
  
  def self.search(search)
    where("name LIKE ?", "%#{search}%") 
  end
end
