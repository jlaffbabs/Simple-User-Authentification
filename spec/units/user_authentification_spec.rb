require 'User'

describe User do
  
  it "should return nil if user does not exist" do
    expect(User.authenticate("blabla@gmail.com", "somethign")).to eq(nil)
  end 

  it "should return nil if user exists but password is incorrect" do
    user = User.create(email: "somethingesle@gmail.com", password: "aaaa")
    expect(User.authenticate("somethinelseg@gmail.com", "somethingelse")).to eq(nil)
  end

  it "should return user if correct details" do  
    user = User.create(email: "something@gmail.com", password: "somethingspecific", id:5)
    expect(User.authenticate("something@gmail.com", "somethingspecific")).to eq(user)
  end
end
