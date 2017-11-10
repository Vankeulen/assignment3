class Enrollment < ApplicationRecord
  belongs_to :section
  belongs_to :student

  validates_presence_of :number
  validates_uniqueness_of :number, :scope => :student_id

  def self.search(search)
    where( "number LIKE ?", "%#{search}%" )
  end
end
