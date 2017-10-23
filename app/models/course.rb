class Course < ApplicationRecord
  has_many :sections
  
  validates_presence_of :name
  validates_uniqueness_of :name
  validates_length_of :name, :maximum => 255
  validates_presence_of :department
  validates_length_of :department, :maximum => 255
  validates_presence_of :hours
  
  def self.search(search)
    where("name LIKE ? OR department LIKE ?", "%#{search}%", "%#{search}%") 
  end
end
