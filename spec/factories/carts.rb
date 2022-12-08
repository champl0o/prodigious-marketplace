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
FactoryBot.define do
  factory :cart do
    user { nil }
    total_in_cents { 1 }
  end
end
