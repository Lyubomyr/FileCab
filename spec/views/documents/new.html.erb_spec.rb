require 'spec_helper'

describe "documents/new" do
  before(:each) do
    assign(:document, stub_model(Document,
      :client_id => 1,
      :cpa_id => 1,
      :bill_id => 1,
      :name => "MyString",
      :size => 1.5,
      :by => 1,
      :year => 1,
      :description => "MyString"
    ).as_new_record)
  end

  it "renders new document form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form", :action => documents_path, :method => "post" do
      assert_select "input#document_client_id", :name => "document[client_id]"
      assert_select "input#document_cpa_id", :name => "document[cpa_id]"
      assert_select "input#document_bill_id", :name => "document[bill_id]"
      assert_select "input#document_name", :name => "document[name]"
      assert_select "input#document_size", :name => "document[size]"
      assert_select "input#document_by", :name => "document[by]"
      assert_select "input#document_year", :name => "document[year]"
      assert_select "input#document_description", :name => "document[description]"
    end
  end
end
