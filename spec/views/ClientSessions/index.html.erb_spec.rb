require 'spec_helper'

describe "client_sessions/index" do
  before(:each) do
    assign(:client_sessions, [
      stub_model(ClientSession,
        :username => "Username",
        :password => "Password"
      ),
      stub_model(ClientSession,
        :username => "Username",
        :password => "Password"
      )
    ])
  end

  it "renders a list of client_sessions" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Username".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
  end
end
