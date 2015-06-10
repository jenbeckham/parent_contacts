require 'test_helper'

class ParentTest < ActiveSupport::TestCase
  test "teacher assign" do
    assert_equal 3, Parent.assign_teacher(1).count
  end
end
