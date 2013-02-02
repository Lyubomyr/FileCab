require 'spec_helper'

describe "cpas/edit" do
  before(:each) do
    @cpa = assign(:cpa, stub_model(Cpa,
      :email => "MyString",
      :password => "MyString",
      :password_salt => "MyString",
      :name => "MyString",
      :capacity => 1,
      :allow_client => false,
      :persistence_token => "MyString",
      :login_count => 1,
      :failed_login_count => 1,
      :current_login_ip => "MyString",
      :last_login_ip => "MyString"
    ))
  end

  it "renders the edit cpa form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => cpas_path(@cpa), :method => "post" do
      assert_select "input#cpa_email", :name => "cpa[email]"
      assert_select "input#cpa_password", :name => "cpa[password]"
      assert_select "input#cpa_password_salt", :name => "cpa[password_salt]"
      assert_select "input#cpa_name", :name => "cpa[name]"
      assert_select "input#cpa_capacity", :name => "cpa[capacity]"
      assert_select "input#cpa_allow_client", :name => "cpa[allow_client]"
      assert_select "input#cpa_persistence_token", :name => "cpa[persistence_token]"
      assert_select "input#cpa_login_count", :name => "cpa[login_count]"
      assert_select "input#cpa_failed_login_count", :name => "cpa[failed_login_count]"
      assert_select "input#cpa_current_login_ip", :name => "cpa[current_login_ip]"
      assert_select "input#cpa_last_login_ip", :name => "cpa[last_login_ip]"
    end
  end
end
