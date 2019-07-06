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
  pending "add some examples to (or delete) #{__FILE__}"
end
