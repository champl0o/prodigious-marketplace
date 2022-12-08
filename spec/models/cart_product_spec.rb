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
require 'rails_helper'

RSpec.describe CartProduct, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
