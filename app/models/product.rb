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
class Product < ApplicationRecord
  include AttachmentUploader::Attachment.new(:attachment)

  has_many :cart_products, dependent: :destroy

  enum category: { books: 0, paintings: 1, courses: 2 }

  # Validations
  monetize :price_cents, numericality: { greater_than_or_equal_to: 0 }
  validates :title, presence: true
  validates :count, presence: true
  validates :category, presence: true, inclusion: { in: categories.keys }
end
