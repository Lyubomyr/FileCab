require 'spec_helper'

describe "clients/show" do
  before(:each) do
    @client = assign(:client, stub_model(Client,
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
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/Email/)
    rendered.should match(/Password/)
    rendered.should match(/Password Salt/)
    rendered.should match(/First/)
    rendered.should match(/Last/)
    rendered.should match(/Address/)
    rendered.should match(/Persistence Token/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Current Login Ip/)
    rendered.should match(/Last Login Ip/)
  end
end
