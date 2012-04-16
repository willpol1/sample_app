require 'spec_helper'

describe "Users" do
  
RSpec.configure do |config|

def test_sign_in(user)
  controller.sign_in(user)
end

def integration_sign_in(user)
  visit signin_path
  fill_in :email,	:with => user.email
  fill_in :password, :with => user.password
  click_button
end

=begin
  describe "GET /users" do
    it "works! (now write some real specs)" do
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      get users_index_path
      response.status.should be(200)
    end
  end
=end  

end
end
