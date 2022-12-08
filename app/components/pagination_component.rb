# frozen_string_literal: true

class PaginationComponent < ViewComponent::Base
  include Pagy::Frontend

  def initialize(pagy:)
    super
    @pagy = pagy
  end
end
