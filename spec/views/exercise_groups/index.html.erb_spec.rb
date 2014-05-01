require 'spec_helper'

describe "exercise_groups/index" do
  before(:each) do
    assign(:exercise_groups, [
      stub_model(ExerciseGroup,
        :name => "Name"
      ),
      stub_model(ExerciseGroup,
        :name => "Name"
      )
    ])
  end

  it "renders a list of exercise_groups" do
    render
    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "tr>td", :text => "Name".to_s, :count => 2
  end
end
