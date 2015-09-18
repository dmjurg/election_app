require 'rails_helper'

RSpec.describe "voters/index", type: :view do
  before(:each) do
    assign(:voters, [
      Voter.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => 1
      ),
      Voter.create!(
        :first_name => "First Name",
        :last_name => "Last Name",
        :address => "Address",
        :city => "City",
        :state => "State",
        :zip => 1
      )
    ])
  end

  it "renders a list of voters" do
    render
    assert_select "tr>td", :text => "First Name".to_s, :count => 2
    assert_select "tr>td", :text => "Last Name".to_s, :count => 2
    assert_select "tr>td", :text => "Address".to_s, :count => 2
    assert_select "tr>td", :text => "City".to_s, :count => 2
    assert_select "tr>td", :text => "State".to_s, :count => 2
    assert_select "tr>td", :text => 1.to_s, :count => 2
  end
end
