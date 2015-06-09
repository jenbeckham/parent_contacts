require 'test_helper'

class ParentTest < ActiveSupport::TestCase
  test "parent teacher assignment" do
    assert_equal 3, Parent.assign_teacher(:best.id)
  end
end
