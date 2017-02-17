require "rails_helper"

RSpec.describe BlogTemplatesController, type: :routing do
  describe "routing" do

    it "routes to #index" do
      expect(:get => "/blog_templates").to route_to("blog_templates#index")
    end

    it "routes to #new" do
      expect(:get => "/blog_templates/new").to route_to("blog_templates#new")
    end

    it "routes to #show" do
      expect(:get => "/blog_templates/1").to route_to("blog_templates#show", :id => "1")
    end

    it "routes to #edit" do
      expect(:get => "/blog_templates/1/edit").to route_to("blog_templates#edit", :id => "1")
    end

    it "routes to #create" do
      expect(:post => "/blog_templates").to route_to("blog_templates#create")
    end

    it "routes to #update via PUT" do
      expect(:put => "/blog_templates/1").to route_to("blog_templates#update", :id => "1")
    end

    it "routes to #update via PATCH" do
      expect(:patch => "/blog_templates/1").to route_to("blog_templates#update", :id => "1")
    end

    it "routes to #destroy" do
      expect(:delete => "/blog_templates/1").to route_to("blog_templates#destroy", :id => "1")
    end

  end
end
