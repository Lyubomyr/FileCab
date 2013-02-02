require 'spec_helper'

describe "documents/show" do
  before(:each) do
    @document = assign(:document, stub_model(Document,
      :client_id => 1,
      :cpa_id => 2,
      :bill_id => 3,
      :name => "Name",
      :size => 1.5,
      :by => 4,
      :year => 5,
      :description => "Description"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/1/)
    rendered.should match(/2/)
    rendered.should match(/3/)
    rendered.should match(/Name/)
    rendered.should match(/1.5/)
    rendered.should match(/4/)
    rendered.should match(/5/)
    rendered.should match(/Description/)
  end
end
