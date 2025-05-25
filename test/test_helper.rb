ENV["RAILS_ENV"] ||= "test"
require_relative "../config/environment"
require "rails/test_help"
require "test_helpers/controller_test_assertions"

module ActiveSupport
  class TestCase
    include TestHelpers::ControllerTestAssertions

    # Run tests in parallel with specified workers
    parallelize(workers: :number_of_processors, threshold: 2)

    # Setup all fixtures in test/fixtures/*.yml for all tests in alphabetical order.
    fixtures :all

    # Add more helper methods to be used by all tests here...
    def login_as(user, password: "password")
      post(session_path, params: {email: user.email, password:})
    end
  end
end
