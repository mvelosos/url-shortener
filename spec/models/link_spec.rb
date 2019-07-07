# == Schema Information
#
# Table name: links
#
#  id         :bigint           not null, primary key
#  source_url :string
#  short      :string
#  clicks     :integer          default(0)
#  title      :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

require 'rails_helper'

RSpec.describe Link, type: :model do
  it 'is valid with source_url attribute' do
    link = build(:link)
    expect(link).to be_valid
  end

  it 'is not valid without source_url attribute' do
    link = build(:link, source_url: nil)
    expect(link).to_not be_valid
  end

  it 'has short url when is created' do
    link = create(:link)
    expect(link.short).to be_truthy
  end

  it 'has clicks count equal 0' do
    link = create(:link)
    expect(link.clicks).to eql(0)
  end
end
