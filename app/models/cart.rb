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
class Cart < ApplicationRecord
  belongs_to :user
  has_many :cart_products, dependent: :destroy
  has_many :products, through: :cart_products

  monetize :total_in_cents, numericality: { greater_than_or_equal_to: 0 }
end
