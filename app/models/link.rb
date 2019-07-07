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
  validates :source_url, presence: true
  
  before_create :check_url
  after_create :generate_short, :scrape

  def generate_short
    self.short = self.id.to_s(36)
    self.save
  end

  def get_short_url
    ENV['DEFAULT_URL'] + self.short
  end

  def scrape
    ScrapeWorker.perform_async(self.id)
  end

  def check_url
    if !self.source_url.include?('http://') || !self.source_url.include?('https://')
      self.source_url = "https://#{self.source_url}"
    end
  end

end
