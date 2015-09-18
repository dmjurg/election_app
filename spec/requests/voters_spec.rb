require 'rails_helper'

RSpec.describe "Voters", type: :request do
  describe "GET /voters" do
    it "works! (now write some real specs)" do
      get voters_path
      expect(response).to have_http_status(200)
    end
  end
end
