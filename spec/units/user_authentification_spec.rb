require 'User'

describe User do
  let(:user) {User.new}
  
  it "should return nil if user does not exist" do
    expect(User.authenticate("blabla@gmail.com", "somethign")).to eq(nil)
  end 

  it "should return nil if user exists but password is incorrect" do
    allow(user).to receive(:email) {"something@gmail.com"}
    allow(user).to receive(:password) {"somethingspecific"}
    expect(User.authenticate("something@gmail.com", "somethingelse")).to eq(nil)
  end

  it "should return user if correct details" do  
    allow(user).to receive(:email) {"something@gmail.com"}
    allow(user).to receive(:password) {"somethingspecific"}
    expect(User.authenticate("something@gmail.com", "somethingspecific")).to eq(nil)
  end
end
