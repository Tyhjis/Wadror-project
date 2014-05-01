require 'spec_helper'

describe "exercise_groups/new" do
  before(:each) do
    assign(:exercise_group, stub_model(ExerciseGroup,
      :name => "MyString"
    ).as_new_record)
  end

  it "renders new exercise_group form" do
    render

    # Run the generator again with the --webrat flag if you want to use webrat matchers
    assert_select "form[action=?][method=?]", exercise_groups_path, "post" do
      assert_select "input#exercise_group_name[name=?]", "exercise_group[name]"
    end
  end
end
