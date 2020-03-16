require 'rails_helper'

RSpec.describe "doctors/index", type: :view do
  before(:each) do
    assign(:doctors, [
      Doctor.create!(
        :name => "Name",
        :designation => "Designation",
        :mobile_no => 2
      ),
      Doctor.create!(
        :name => "Name",
        :designation => "Designation",
        :mobile_no => 2
      )
    ])
  end

  it "renders a list of doctors" do
    render
    assert_select "tr>td", :text => "Name".to_s, :count => 2
    assert_select "tr>td", :text => "Designation".to_s, :count => 2
    assert_select "tr>td", :text => 2.to_s, :count => 2
  end
end
