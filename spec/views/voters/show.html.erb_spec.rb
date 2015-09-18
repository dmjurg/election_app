require 'rails_helper'

RSpec.describe "voters/show", type: :view do
  before(:each) do
    @voter = assign(:voter, Voter.create!(
      :first_name => "First Name",
      :last_name => "Last Name",
      :address => "Address",
      :city => "City",
      :state => "State",
      :zip => 1
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/First Name/)
    expect(rendered).to match(/Last Name/)
    expect(rendered).to match(/Address/)
    expect(rendered).to match(/City/)
    expect(rendered).to match(/State/)
    expect(rendered).to match(/1/)
  end
end
