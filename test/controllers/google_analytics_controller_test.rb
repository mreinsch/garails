require 'test_helper'

class GoogleAnalyticsControllerTest < ActionController::TestCase
  tests Garails::GoogleAnalyticsController

  context "GET to :utm" do
    setup { get :utm, :format => :gif }
    should respond_with :success
    should assign_to(:visitor_id)
  end

  context "GET to :utm with guid" do
    setup do
      request.env["HTTP_X_DCMGUID"] = "blah"
      get :utm, :format => :gif
    end
    should respond_with :success
    should assign_to(:visitor_id)
  end

end
