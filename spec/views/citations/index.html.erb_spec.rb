require 'rails_helper'

RSpec.describe "citations/index", :type => :view do
  before(:each) do
    assign(:citations, [
      Citation.create!(
        :author => "Author",
        :title => "Title",
        :pub_info => "Pub Info",
        :classification => "Classification",
        :line_numbers_quoted => "Line Numbers Quoted"
      ),
      Citation.create!(
        :author => "Author",
        :title => "Title",
        :pub_info => "Pub Info",
        :classification => "Classification",
        :line_numbers_quoted => "Line Numbers Quoted"
      )
    ])
  end

  it "renders a list of citations" do
    render
    assert_select "tr>td", :text => "Author".to_s, :count => 2
    assert_select "tr>td", :text => "Title".to_s, :count => 2
    assert_select "tr>td", :text => "Pub Info".to_s, :count => 2
    assert_select "tr>td", :text => "Classification".to_s, :count => 2
    assert_select "tr>td", :text => "Line Numbers Quoted".to_s, :count => 2
  end
end
