module KamiKakushi
  extend ActiveSupport::Concern

  included do
    default_scope { where(deleted_at: nil) }
    alias_method_chain :destroy, :kami_kakushi
  end

  def destroy_with_kami_kakushi
    self.deleted_at = Time.current
  end
end
