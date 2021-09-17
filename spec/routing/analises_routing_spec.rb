require "rails_helper"

RSpec.describe AnalisesController, type: :routing do
  describe "routing" do
    it "routes to #index" do
      expect(get: "/analises").to route_to("analises#index")
    end

    it "routes to #new" do
      expect(get: "/analises/new").to route_to("analises#new")
    end

    it "routes to #show" do
      expect(get: "/analises/1").to route_to("analises#show", id: "1")
    end

    it "routes to #edit" do
      expect(get: "/analises/1/edit").to route_to("analises#edit", id: "1")
    end


    it "routes to #create" do
      expect(post: "/analises").to route_to("analises#create")
    end

    it "routes to #update via PUT" do
      expect(put: "/analises/1").to route_to("analises#update", id: "1")
    end

    it "routes to #update via PATCH" do
      expect(patch: "/analises/1").to route_to("analises#update", id: "1")
    end

    it "routes to #destroy" do
      expect(delete: "/analises/1").to route_to("analises#destroy", id: "1")
    end
  end
end
