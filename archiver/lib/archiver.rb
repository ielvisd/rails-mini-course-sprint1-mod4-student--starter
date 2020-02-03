require "archiver/version"

# NOTE: The `archive`, `restore`, and `archived?` methods should work based on the `archived_at` field on the active record model. The gem's assumption is that it will be used on models that already have the `archived_at` field.

module Archiver

  # TODO: 1. Add `archive` method to set `archived_at` to the current time.
  def archive
    update(archived_at: Time.now)
  end

  # TODO: 2. Add `restore` method to set `archived_at` to `nil`.
  def restore
    update(archived_at: nil)
  end

  # TODO: 3. Add `archived?` method to check if `archived_at` is set.
  def archived?
    !archived_at.nil?
  end
end
