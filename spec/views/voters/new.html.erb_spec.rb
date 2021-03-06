require 'rails_helper'

RSpec.describe "voters/new", type: :view do
  before(:each) do
    assign(:voter, Voter.new(
      :first_name => "MyString",
      :last_name => "MyString",
      :address => "MyString",
      :city => "MyString",
      :state => "MyString",
      :zip => 1
    ))
  end

  it "renders new voter form" do
    render

    assert_select "form[action=?][method=?]", voters_path, "post" do

      assert_select "input#voter_first_name[name=?]", "voter[first_name]"

      assert_select "input#voter_last_name[name=?]", "voter[last_name]"

      assert_select "input#voter_address[name=?]", "voter[address]"

      assert_select "input#voter_city[name=?]", "voter[city]"

      assert_select "input#voter_state[name=?]", "voter[state]"

      assert_select "input#voter_zip[name=?]", "voter[zip]"
    end
  end
end
