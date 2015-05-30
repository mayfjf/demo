require 'test_helper'

class PasscodeTest < ActiveSupport::TestCase
  
  def setup
    @passcode = Passcode.new(municipal_id:"1", barangay_id:"1",
                     pass:"foobar")
  end

  test "should be valid" do
    assert @passcode.valid?
  end

  test "municipal_id should be present" do
    @passcode.municipal_id = "     "
    assert_not @passcode.valid?
  end

  test "barangay_id should be present" do
    @passcode.barangay_id = "     "
    assert_not @passcode.valid?
  end

  test "barangay_id should be unique" do
    duplicate_passcode = @passcode.dup
    duplicate_passcode.barangay_id = @passcode.barangay_id
    @passcode.save
    assert_not duplicate_passcode.valid?
  end
end
