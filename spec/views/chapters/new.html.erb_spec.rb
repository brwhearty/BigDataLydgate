require 'rails_helper'

RSpec.describe "chapters/new", :type => :view do
  before(:each) do
    assign(:chapter, Chapter.new(
      :name => "MyString",
      :starting_line_number => 1,
      :ending_line_number => 1
    ))
  end

  it "renders new chapter form" do
    render

    assert_select "form[action=?][method=?]", chapters_path, "post" do

      assert_select "input#chapter_name[name=?]", "chapter[name]"

      assert_select "input#chapter_starting_line_number[name=?]", "chapter[starting_line_number]"

      assert_select "input#chapter_ending_line_number[name=?]", "chapter[ending_line_number]"
    end
  end
end
