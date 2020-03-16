require 'rails_helper'

RSpec.describe "doctors/new", type: :view do
  before(:each) do
    assign(:doctor, Doctor.new(
      :name => "MyString",
      :designation => "MyString",
      :mobile_no => 1
    ))
  end

  it "renders new doctor form" do
    render

    assert_select "form[action=?][method=?]", doctors_path, "post" do

      assert_select "input[name=?]", "doctor[name]"

      assert_select "input[name=?]", "doctor[designation]"

      assert_select "input[name=?]", "doctor[mobile_no]"
    end
  end
end
