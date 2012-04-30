describe "GET :show" do

before(:each) do
@user = Factory(:user)
end

it "should show the right number of the user's microposts" do
mp1 = Factory(:micropost, :user => @user, :content => "Foo bar")
mp2 = Factory(:micropost, :user => @user, :content => "Baz quux")
get :show, :id => @user
response.should have_selector("td", :content => "Microposts 2" )
end 