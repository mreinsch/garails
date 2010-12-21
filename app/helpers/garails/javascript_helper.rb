module Garails::JavascriptHelper
  def google_analytics_tracking_javascript
    return "" unless Garails.ga_setup?
    render :template => "garails/google_analytics"
  end
end
