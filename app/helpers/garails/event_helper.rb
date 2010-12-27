module Garails::EventHelper
  def ga_event(category, action, label = nil, value = nil)
    return unless Garails.ga_setup?
    g = Garails.gabba(request)
    g.event(category, action, label, value)
  end
end
