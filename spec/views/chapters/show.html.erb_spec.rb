require 'rails_helper'

RSpec.describe "chapters/show", :type => :view do
  before(:each) do
    @chapter = assign(:chapter, Chapter.create!(
      :name => "Name",
      :starting_line_number => 1,
      :ending_line_number => 2
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Name/)
    expect(rendered).to match(/1/)
    expect(rendered).to match(/2/)
  end
end
