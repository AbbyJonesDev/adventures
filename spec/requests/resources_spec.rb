require 'rails_helper'

RSpec.describe "Resources", :type => :request do
  describe "GET /resources" do
    it "works! (now write some real specs)" do
      get resources_path
      expect(response.status).to be(200)
    end
  end
end
