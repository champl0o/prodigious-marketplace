# frozen_string_literal: true

class BlankMessageComponent < ApplicationComponent
  def initialize(blank_message: 'Nothing to show.')
    super
    @blank_message = blank_message
  end
end
