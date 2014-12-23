require 'rails_helper'

RSpec.describe "citations/show", :type => :view do
  before(:each) do
    @citation = assign(:citation, Citation.create!(
      :author => "Author",
      :title => "Title",
      :pub_info => "Pub Info",
      :classification => "Classification",
      :line_numbers_quoted => "Line Numbers Quoted"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Author/)
    expect(rendered).to match(/Title/)
    expect(rendered).to match(/Pub Info/)
    expect(rendered).to match(/Classification/)
    expect(rendered).to match(/Line Numbers Quoted/)
  end
end
