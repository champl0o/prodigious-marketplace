# == Schema Information
#
# Table name: carts
#
#  id             :bigint           not null, primary key
#  user_id        :bigint           not null
#  total_in_cents :integer          default(0), not null
#  created_at     :datetime         not null
#  updated_at     :datetime         not null
#
require 'rails_helper'

RSpec.describe Cart, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
