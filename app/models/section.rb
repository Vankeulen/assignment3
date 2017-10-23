class Section < ApplicationRecord
  belongs_to :professor
  belongs_to :course
  
  validates_presence_of :number
  validates_uniqueness_of :number, :scope => :course_id
  
  def self.search(search)
    where( "number LIKE ?", "%#{search}%" )
  end
end
