# frozen_string_literal: true

class ProductComponent < ApplicationComponent
  def initialize(product:)
    super
    @product = product
  end
end
