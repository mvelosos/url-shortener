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

class Link < ApplicationRecord

  def generate_short
    self.short = self.id.to_s(36)
    self.save
  end

  def get_short_url
    ENV['DEFAULT_URL'] + self.short
  end

end
