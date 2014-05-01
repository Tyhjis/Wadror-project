require "spec_helper"

describe ExerciseGroupsController do
  describe "routing" do

    it "routes to #index" do
      get("/exercise_groups").should route_to("exercise_groups#index")
    end

    it "routes to #new" do
      get("/exercise_groups/new").should route_to("exercise_groups#new")
    end

    it "routes to #show" do
      get("/exercise_groups/1").should route_to("exercise_groups#show", :id => "1")
    end

    it "routes to #edit" do
      get("/exercise_groups/1/edit").should route_to("exercise_groups#edit", :id => "1")
    end

    it "routes to #create" do
      post("/exercise_groups").should route_to("exercise_groups#create")
    end

    it "routes to #update" do
      put("/exercise_groups/1").should route_to("exercise_groups#update", :id => "1")
    end

    it "routes to #destroy" do
      delete("/exercise_groups/1").should route_to("exercise_groups#destroy", :id => "1")
    end

  end
end
