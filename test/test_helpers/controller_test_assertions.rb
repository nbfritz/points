module TestHelpers
  module ControllerTestAssertions
    def assert_redirected_with_flash(path, options = {}, msg = nil)
      notice, alert = options.values_at(:notice, :alert)
      assert_redirected_to path
      assert_includes(flash[:notice], notice, msg) if notice.present?
      assert_includes(flash[:alert], alert, msg) if alert.present?
    end
  end
end
