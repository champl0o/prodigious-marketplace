# frozen_string_literal: true

class ListComponent < ViewComponent::Base
  def initialize(collection:)
    super
    @collection = collection
  end
end
