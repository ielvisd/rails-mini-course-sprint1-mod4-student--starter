require "deactivator/version"

module Deactivator
  # class Error < StandardError; end
  # We don't need ^ this error code for this so let's comment it out

  # deactivated_at:timestamp

  def activate
    # NOTE: "update" is a method that comes from ActiveRecord, this gem cannot be run in isolation
    # NOTE: This method changes the deactivated_at key on an ActiveRecord and makes it "nil"
    update(deactivated_at: nil)
  end

  def active?
    # NOTE: nil check
    deactivated_at.nil?
  end

  def deactivate
    # NOTE: Time.now is from Ruby
    update(deactivated_at: Time.now)
  end
end
