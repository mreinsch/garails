module Garails::JavascriptHelper
  def google_analytics_tracking_javascript
    return "" if Garails.ga_account.blank?
    render :template => "garails/google_analytics"
  end
end
