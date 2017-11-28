class Student < ApplicationRecord
    has_many :enrollments
    has_many :sections, through: :enrollments
    has_many :professors, through: :sections

    validates_presence_of :name
    validates_uniqueness_of :name
    validates_length_of :name, :maximum => 255
    
    def self.search(search)
      where("name LIKE ?", "%#{search}%") 
    end
  end
  