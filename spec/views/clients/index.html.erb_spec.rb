require 'spec_helper'

describe "clients/index" do
  before(:each) do
    assign(:clients, [
      stub_model(Client,
        :cpa_id => 1,
        :email => "Email",
        :password => "Password",
        :password_salt => "Password Salt",
        :first => "First",
        :last => "Last",
        :address => "Address",
        :persistence_token => "Persistence Token",
        :login_count => 2,
        :failed_login_count => 3,
        :current_login_ip => "Current Login Ip",
        :last_login_ip => "Last Login Ip"
      ),
      stub_model(Client,
        :cpa_id => 1,
        :email => "Email",
        :password => "Password",
        :password_salt => "Password Salt",
        :first => "First",
        :last => "Last",
        :address => "Address",
        :persistence_token => "Persistence Token",
        :login_count => 2,
        :failed_login_count => 3,
        :current_login_ip => "Current Login Ip",
        :last_login_ip => "Last Login Ip"
      )
    ])
  end

  it "renders a list of clients" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => "Email".to_s, :count => 2
    assert_select "tr>td", :text => "Password".to_s, :count => 2
    assert_select "tr>td", :text => "Password Salt".to_s, :count => 2
    assert_select "tr>td", :text => "First".to_s, :count => 2
    assert_select "tr>td", :text => "Last".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "Persistence Token".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Current Login Ip".to_s, :count => 2
    assert_select "tr>td", :text => "Last Login Ip".to_s, :count => 2
  end
end
