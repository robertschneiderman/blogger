require 'test_helper'

class AuthorTest < ActiveSupport::TestCase
  # test "the truth" do
  #   assert true
  # end

  authenticates_with_sorcery!
  validates_confirmation_of :password, message: "should match confirmation", if: :password
end
