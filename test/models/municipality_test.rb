require 'test_helper'

class MunicipalityTest < ActiveSupport::TestCase

  def setup
    @municipality = Municipality.new(name:"name", mayor:"1", area:"123.11")
  end

  test "should be valid" do
    assert @municipality.valid?
  end

  test "Name should be present" do
    @municipality.name = "     "
    assert_not @municipality.valid?
  end

  test "mayor ID should be present" do
    @municipality.mayor = "     "
    assert_not @municipality.valid?
  end

 test "Value of Area should be present" do
    @municipality.area = "     "
    assert_not @municipality.valid?
  end



  
end
