require "test_helper"

class PasswordsControllerTest < ActionDispatch::IntegrationTest
  def test_get_shows_form
    get(new_password_path)
    assert_response(:success)
    assert_dom("input[name='email']")
  end

  def test_post_with_valid_email_succeeds
    emails = capture_emails do
      post(passwords_path(email: "one@example.com"))
    end
    assert_redirected_with_flash(new_session_path, notice: "reset instructions sent")
    assert_equal(1, emails.length)
    assert_equal(emails.last.to, [ "one@example.com" ])
  end

  def test_post_with_invalid_email_doesnt_reveal_failure
    emails = capture_emails do
      post(passwords_path(email: "unknown@example.com"))
    end
    assert_redirected_with_flash(new_session_path, notice: "reset instructions sent")
    assert_equal(0, emails.length)
  end

  def test_get_edit_with_valid_token_shows_form
    get(edit_password_path(users(:one).password_reset_token))
    assert_response(:success)
    assert_dom("input[name='password']")
    assert_dom("input[name='password_confirmation']")
  end

  def test_get_edit_with_invalid_token_fails
    get(edit_password_path("bogus_token"))
    assert_redirected_with_flash(new_password_path, alert: "invalid or has expired")
  end

  def test_put_with_valid_token_and_matching_passwords_succeeds
    token = users(:one).password_reset_token
    put(password_path(token), params: {password: "password", password_confirmation: "password"})
    assert_redirected_with_flash(new_session_path, notice: "has been reset")
  end

  def test_put_with_valid_token_and_mismatched_passwords_fails
    token = users(:one).password_reset_token
    put(password_path(token), params: {password: "password", password_confirmation: "unmatched"})
    assert_redirected_with_flash(edit_password_path(token), alert: "did not match")
  end

  def test_put_with_invalid_token_fails
    put(password_path("bogus_token"), params: {password: "password", password_confirmation: "password"})
    assert_redirected_with_flash(new_password_path, alert: "invalid or has expired")
  end
end
