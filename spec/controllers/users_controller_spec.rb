require 'spec_helper'

describe UsersController do
  render_views

  describe "GET 'new'" do
    it "should be successful" do
      get :new
      response.should be_success
    end
    
    describe "GET 'show'" do
      
      before(:each) do
        @user = Factory(:user)
      end
    end
    
    it "should have the right title" do
      get :new
      response.should have_selector("title", :content => "Sign up")
    end
    
    it "should have a name field" do
      get :new
      response.should have_selector("input[name='user[name]'][type='text']")
    end
    
    it "should have an email field" do
      get :new
      response.should have_selector("input[name='user[email]'][type='text']")
    end
    
    it "should have a password field" do
      get :new
      response.should have_selector("input[name='user[password]'][type='text']")
    end
    
    it "should have a password confirmation field" do
      get :new
      response.should have_selector("input[name='user[password_confirmation]'][type='text']")
    end
    
  end
  
  describe "GET 'edit'" do
before(:each) do @user = Factory(:user) test_sign_in(@user)
end
it "should be successful" do
  get :edit, :id => @user
  response.should be_success
end
it "should have the right title" do
  get :edit, :id => @user
  response.should have_selector("title", :content => "Edit user")
end
it "should have a link to change the Gravatar" do
  get :edit, :id => @user
  gravatar_url = "http://gravatar.com/emails"
  response.should have_selector("a", :href => gravatar_url,
:content => "change")
end end

end
