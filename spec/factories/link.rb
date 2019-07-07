# Link Factory
FactoryBot.define do
  factory :link do
    source_url { FFaker::Internet.http_url }
  end
end