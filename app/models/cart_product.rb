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
class CartProduct < ApplicationRecord
  belongs_to :cart
  belongs_to :product

  monetize :sum_in_cents, numericality: { greater_than_or_equal_to: 0 }
  validates :quantity, presence: true, numericality: { greater_than_or_equal_to: 1 }
end
