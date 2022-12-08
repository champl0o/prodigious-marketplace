# frozen_string_literal: true

class BlankMessages::BlankMessageComponent < ViewComponent::Base
  def initialize(blank_message: 'Nothing to show.')
    @blank_message = blank_message
  end
end
