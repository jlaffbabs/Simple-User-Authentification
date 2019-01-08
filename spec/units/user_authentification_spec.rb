require 'User'

describe User do
  #let(:user) {User.new(something@gmail.com, secret123)}
  #let(:newuser) {User.new}
  it "should return nil if user does not exist" do
    expect(User.authenticate("blabla@gmail.com", "somethign")).to eq(nil)
  end 

end
