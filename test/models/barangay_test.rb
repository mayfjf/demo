require 'test_helper'

class BarangayTest < ActiveSupport::TestCase

  def setup
    @barangay = Barangay.new(name:"name", municipal_id:"1")
  end

  test "should be valid" do
    assert @barangay.valid?
  end

  test "Name should be present" do
    @barangay.name = "     "
    assert_not @barangay.valid?
  end

  test "Municipal ID should be present" do
    @barangay.municipal_id = "     "
    assert_not @barangay.valid?
  end


    
end
