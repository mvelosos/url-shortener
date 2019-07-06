require 'rails_helper'

RSpec.describe "links/new", type: :view do
  before(:each) do
    assign(:link, Link.new(
      :source_url => "MyString",
      :short => "MyString",
      :clicks => 1,
      :title => "MyString"
    ))
  end

  it "renders new link form" do
    render

    assert_select "form[action=?][method=?]", links_path, "post" do

      assert_select "input[name=?]", "link[source_url]"

      assert_select "input[name=?]", "link[short]"

      assert_select "input[name=?]", "link[clicks]"

      assert_select "input[name=?]", "link[title]"
    end
  end
end
