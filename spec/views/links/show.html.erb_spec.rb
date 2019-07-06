require 'rails_helper'

RSpec.describe "links/show", type: :view do
  before(:each) do
    @link = assign(:link, Link.create!(
      :source_url => "Source Url",
      :short => "Short",
      :clicks => 2,
      :title => "Title"
    ))
  end

  it "renders attributes in <p>" do
    render
    expect(rendered).to match(/Source Url/)
    expect(rendered).to match(/Short/)
    expect(rendered).to match(/2/)
    expect(rendered).to match(/Title/)
  end
end
