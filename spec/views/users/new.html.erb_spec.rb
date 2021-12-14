require 'rails_helper'

RSpec.describe "users/new", type: :view do
  before(:each) do
    assign(:user, User.new(
      name: "MyString",
      last_name: "MyString",
      age: 1,
      email: "MyText"
    ))
  end

  it "renders new user form" do
    render

    assert_select "form[action=?][method=?]", users_path, "post" do

      assert_select "input[name=?]", "user[name]"

      assert_select "input[name=?]", "user[last_name]"

      assert_select "input[name=?]", "user[age]"

      assert_select "textarea[name=?]", "user[email]"
    end
  end
end
