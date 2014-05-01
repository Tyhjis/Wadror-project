require 'spec_helper'

describe "exercise_groups/show" do
  before(:each) do
    @exercise_group = assign(:exercise_group, stub_model(ExerciseGroup,
      :name => "Name"
    ))
  end

  it "renders attributes in <p>" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    rendered.should match(/Name/)
  end
end
