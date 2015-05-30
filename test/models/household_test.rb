require 'test_helper'

class HouseholdTest < ActiveSupport::TestCase
  def setup
    @h = Household.new(name:"name", head:"1", zone_id:"1")
  end

  test "should be valid" do
    assert @h.valid?
  end

  test "name should be present" do
    @h.name = "     "
    assert_not @h.valid?
  end

   test "head should be present" do
    @h.head = "     "
    assert_not @h.valid?
  end

   test "zone_id should be present" do
    @h.zone_id = "     "
    assert_not @h.valid?
  end
end
