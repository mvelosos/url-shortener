require 'rails_helper'

RSpec.describe "links/edit", type: :view do
  before(:each) do
    @link = assign(:link, Link.create!(
      :source_url => "MyString",
      :short => "MyString",
      :clicks => 1,
      :title => "MyString"
    ))
  end

  it "renders the edit link form" do
    render

    assert_select "form[action=?][method=?]", link_path(@link), "post" do

      assert_select "input[name=?]", "link[source_url]"

      assert_select "input[name=?]", "link[short]"

      assert_select "input[name=?]", "link[clicks]"

      assert_select "input[name=?]", "link[title]"
    end
  end
end
