# == Schema Information
#
# Table name: cart_products
#
#  id           :bigint           not null, primary key
#  cart_id      :bigint           not null
#  product_id   :bigint           not null
#  quantity     :integer          default(1), not null
#  sum_in_cents :integer          default(0), not null
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#
FactoryBot.define do
  factory :cart_product do
    cart { nil }
    product { nil }
    quantity { 1 }
    sum_in_cents { 1 }
  end
end
