require 'spec_helper'

describe "documents/index" do
  before(:each) do
    assign(:documents, [
      stub_model(Document,
        :client_id => 1,
        :cpa_id => 2,
        :bill_id => 3,
        :name => "Name",
        :size => 1.5,
        :by => 4,
        :year => 5,
        :description => "Description"
      ),
      stub_model(Document,
        :client_id => 1,
        :cpa_id => 2,
        :bill_id => 3,
        :name => "Name",
        :size => 1.5,
        :by => 4,
        :year => 5,
        :description => "Description"
      )
    ])
  end

  it "renders a list of documents" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
    assert_select "tr>td", :text => 3.to_s, :count => 2
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.5.to_s, :count => 2
    assert_select "tr>td", :text => 4.to_s, :count => 2
    assert_select "tr>td", :text => 5.to_s, :count => 2
    assert_select "tr>td", :text => "Description".to_s, :count => 2
  end
end
