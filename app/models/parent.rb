class Parent < ActiveRecord::Base
  belongs_to :teacher
  validates :email, uniqueness: true

  def self.assign_teacher(num)
    parents = self.select {|parent| parent.teacher_id == num}
    parents
  end
end
