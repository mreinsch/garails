module Garails

  # account identifier as issued by google analytics
  mattr_accessor :ga_account
  @@ga_account = nil

  # domain setting. Only set this if you need to (e.g. for subdomain tracking).
  # Corresponds to "_setDomainName".
  mattr_accessor :ga_domain
  @@ga_domain = nil

  def self.ga_setup?
    ! Garails.ga_account.blank?
  end

  def self.ga_mobile_account
    ga_account.sub(/^UA-/, 'MO-')
  end

  def self.gabba(request, opts = {})
    create_gabba(Garails.ga_account, request, opts)
  end

  def self.mobile_gabba(request, opts = {})
    create_gabba(Garails.ga_mobile_account, request, opts)
  end

  def self.create_gabba(account, request, opts = {})
    Gabbara::Gabba.new(account, Garails.ga_domain, opts).tap do |g|
      g.logger = Rails.logger
      g.request = request
    end
  end
end

require 'garails/version'
require 'garails/engine'

