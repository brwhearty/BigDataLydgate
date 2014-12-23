require 'rails_helper'

RSpec.describe "Citations", :type => :request do
  describe "GET /citations" do
    it "works! (now write some real specs)" do
      get citations_path
      expect(response).to have_http_status(200)
    end
  end
end
