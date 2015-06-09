class Parent < ActiveRecord::Base
  belongs_to :teacher
  validates :email, uniqueness: true

  def self.assign_teacher(teach)
    parents = self.select {|parent| parent.teacher_id == teach}
    p parents
  end
end
