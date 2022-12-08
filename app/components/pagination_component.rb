# frozen_string_literal: true

class PaginationComponent < ApplicationComponent
  include Pagy::Frontend

  def initialize(pagy:)
    super
    @pagy = pagy
  end
end
