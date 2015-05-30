require 'test_helper'

class PeopleTest < ActiveSupport::TestCase
  def setup
    @p = People.new(firstname:"may", middlename:"javellana",
                     familyname:"franco")
  end

  test "should be valid" do
    assert @p.valid?
  end

  test "first name should be present" do
    @p.firstname = "     "
    assert_not @p.valid?
  end

  test "middle name should be present" do
    @p.middlename = "     "
    assert_not @p.valid?
  end

  test "last name should be present" do
    @p.familyname = "     "
    assert_not @p.valid?
  end

  
end
