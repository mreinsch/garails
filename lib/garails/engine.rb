module Garails
  class Engine < ::Rails::Engine
    initializer 'garails.mobile.helper' do |app|
      ActionController::Base.helper Garails::MobileHelper, Garails::JavascriptHelper
    end
  end
end
