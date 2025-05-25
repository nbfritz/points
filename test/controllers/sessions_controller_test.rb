require "test_helper"

class SessionsControllerTest < ActionDispatch::IntegrationTest
  def test_get_while_not_logged_in_redirects_to_login
    get session_path
    assert_redirected_to new_session_url
  end

  def test_get_while_logged_in_shows_user
    login_as(users(:one))
    get session_path
    assert_dom("h1", /one@example.com/)
  end

  def test_get_new_while_not_logged_in_displays_login_form
    get new_session_path
    assert_dom("input[name='email']")
    assert_dom("input[name='password']")
  end

  def test_post_with_valid_email_succeeds
    post(session_path, params: {email: users(:one).email, password: "password"})
    assert_redirected_to root_path
  end

  def test_post_with_invalid_email_fails
    post(session_path, params: {email: "unknown@example.com", password: "password"})
    assert_redirected_with_flash(new_session_path, alert: "Try another email address or password.")
  end

  def test_post_with_invalid_password_fails
    post(session_path, params: {email: users(:one).email, password: "invalid"})
    assert_redirected_with_flash(new_session_path, alert: "Try another email address or password.")
  end

  def test_login_and_logout
    post(session_path, params: {email: users(:one).email, password: "password"})
    assert_redirected_to root_path
    delete(session_path)
    assert_redirected_to new_session_path
  end
end
