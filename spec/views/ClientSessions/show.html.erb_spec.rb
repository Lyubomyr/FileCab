require 'spec_helper'

describe "client_sessions/show" do
  before(:each) do
    @clientsession = assign(:clientsession, stub_model(ClientSession,
      :username => "Username",
      :password => "Password"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Username/)
    rendered.should match(/Password/)
  end
end
