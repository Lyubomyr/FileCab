require 'spec_helper'

describe "clients/new" do
  before(:each) do
    assign(:client, stub_model(Client,
      :cpa_id => 1,
      :email => "MyString",
      :password => "MyString",
      :password_salt => "MyString",
      :first => "MyString",
      :last => "MyString",
      :address => "MyString",
      :persistence_token => "MyString",
      :login_count => 1,
      :failed_login_count => 1,
      :current_login_ip => "MyString",
      :last_login_ip => "MyString"
    ).as_new_record)
  end

  it "renders new client form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => clients_path, :method => "post" do
      assert_select "input#client_cpa_id", :name => "client[cpa_id]"
      assert_select "input#client_email", :name => "client[email]"
      assert_select "input#client_password", :name => "client[password]"
      assert_select "input#client_password_salt", :name => "client[password_salt]"
      assert_select "input#client_first", :name => "client[first]"
      assert_select "input#client_last", :name => "client[last]"
      assert_select "input#client_address", :name => "client[address]"
      assert_select "input#client_persistence_token", :name => "client[persistence_token]"
      assert_select "input#client_login_count", :name => "client[login_count]"
      assert_select "input#client_failed_login_count", :name => "client[failed_login_count]"
      assert_select "input#client_current_login_ip", :name => "client[current_login_ip]"
      assert_select "input#client_last_login_ip", :name => "client[last_login_ip]"
    end
  end
end
