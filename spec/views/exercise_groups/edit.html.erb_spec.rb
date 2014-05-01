require 'spec_helper'

describe "exercise_groups/edit" do
  before(:each) do
    @exercise_group = assign(:exercise_group, stub_model(ExerciseGroup,
      :name => "MyString"
    ))
  end

  it "renders the edit exercise_group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", exercise_group_path(@exercise_group), "post" do
      assert_select "input#exercise_group_name[name=?]", "exercise_group[name]"
    end
  end
end
