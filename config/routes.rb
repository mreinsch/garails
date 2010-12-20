Rails.application.routes.draw do
  match "utm" => "garails/google_analytics#utm", :as => "utm", :format => :gif
end
