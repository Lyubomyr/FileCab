require 'spec_helper'

describe "cpas/show" do
  before(:each) do
    @cpa = assign(:cpa, stub_model(Cpa,
      :email => "Email",
      :password => "Password",
      :password_salt => "Password Salt",
      :name => "Name",
      :capacity => 1,
      :allow_client => false,
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
    rendered.should match(/Email/)
    rendered.should match(/Password/)
    rendered.should match(/Password Salt/)
    rendered.should match(/Name/)
    rendered.should match(/1/)
    rendered.should match(/false/)
    rendered.should match(/Persistence Token/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Current Login Ip/)
    rendered.should match(/Last Login Ip/)
  end
end
