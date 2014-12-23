require 'rails_helper'

RSpec.describe "chapters/index", :type => :view do
  before(:each) do
    assign(:chapters, [
      Chapter.create!(
        :name => "Name",
        :starting_line_number => 1,
        :ending_line_number => 2
      ),
      Chapter.create!(
        :name => "Name",
        :starting_line_number => 1,
        :ending_line_number => 2
      )
    ])
  end

  it "renders a list of chapters" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
