require 'rails_helper'

RSpec.describe "citations/new", :type => :view do
  before(:each) do
    assign(:citation, Citation.new(
      :author => "MyString",
      :title => "MyString",
      :pub_info => "MyString",
      :classification => "MyString",
      :line_numbers_quoted => "MyString"
    ))
  end

  it "renders new citation form" do
    render

    assert_select "form[action=?][method=?]", citations_path, "post" do

      assert_select "input#citation_author[name=?]", "citation[author]"

      assert_select "input#citation_title[name=?]", "citation[title]"

      assert_select "input#citation_pub_info[name=?]", "citation[pub_info]"

      assert_select "input#citation_classification[name=?]", "citation[classification]"

      assert_select "input#citation_line_numbers_quoted[name=?]", "citation[line_numbers_quoted]"
    end
  end
end
