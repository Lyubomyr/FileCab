require 'spec_helper'

describe "client_sessions/new" do
  before(:each) do
    assign(:clientsession, stub_model(ClientSession,
      :username => "MyString",
      :password => "MyString"
    ).as_new_record)
  end

  it "renders new clientsession form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => user_sessions_path, :method => "post" do
      assert_select "input#user_session_username", :name => "clientsession[username]"
      assert_select "input#user_session_password", :name => "clientsession[password]"
    end
  end
end
