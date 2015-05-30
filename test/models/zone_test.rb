require 'test_helper'

class ZoneTest < ActiveSupport::TestCase
  def setup
    @z = Zone.new(name:"may", barangay_id:"1")
  end

  test "should be valid" do
    assert @z.valid?
  end

  test "name should be present" do
    @z.name = "     "
    assert_not @z.valid?
  end

  test "barangay_id should be present" do
    @z.barangay_id = "     "
    assert_not @z.valid?
  end
end
