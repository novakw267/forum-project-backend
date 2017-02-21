require 'rails_helper'

RSpec.describe "BlogTemplates", type: :request do
  describe "GET /blog_templates" do
    it "works! (now write some real specs)" do
      get blog_templates_path
      expect(response).to have_http_status(200)
    end
  end
end
