# == Schema Information
#
# Table name: products
#
#  id          :bigint           not null, primary key
#  title       :string           not null
#  description :text
#  count       :integer          default(1), not null
#  category    :integer          default("books"), not null
#  price_cents :integer          default(0), not null
#  created_at  :datetime         not null
#  updated_at  :datetime         not null
#
FactoryBot.define do
  factory :product do
    title { "MyString" }
    description { "MyText" }
    count { 1 }
    category { 1 }
    price_cents { 1 }
  end
end
