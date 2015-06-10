class AddTeacherNametoTeachers < ActiveRecord::Migration
  def change
    add_column :teachers, :name, :string
  end
end
