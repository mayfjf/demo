require 'test_helper'

class AgencyTest < ActiveSupport::TestCase
  def setup
    @a = Agency.new(name:"may", head:"aaa", prioritynum:"1", contactnum:"09177148752")
  end

  test "should be valid" do
    assert @a.valid?
  end

  test "name should be present" do
    @a.name = "     "
    assert_not @a.valid?
  end

  test "head should be present" do
    @a.head = "     "
    assert_not @a.valid?
  end

  test "priority number should be present" do
    @a.prioritynum = "     "
    assert_not @a.valid?
  end

  test "head should be present" do
    @a.contactnum = "     "
    assert_not @a.valid?
  end
end
