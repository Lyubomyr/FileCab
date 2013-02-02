require 'spec_helper'

describe "client_sessions/edit" do
  before(:each) do
    @clientsession = assign(:clientsession, stub_model(ClientSession,
      :username => "MyString",
      :password => "MyString"
    ))
  end

  it "renders the edit clientsession form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_sessions_path(@clientsession), :method => "post" do
      assert_select "input#user_session_username", :name => "clientsession[username]"
      assert_select "input#user_session_password", :name => "clientsession[password]"
    end
  end
end
