require 'sigh/version'
require 'sigh/resign'
require 'sigh/manager'
require 'sigh/options'
require 'sigh/local_manage'

require 'fastlane_core'

module Sigh
  # Use this to just setup the configuration attribute and set it later somewhere else
  class << self
    attr_accessor :config
  end

  Helper = FastlaneCore::Helper # you gotta love Ruby: Helper.* should use the Helper class contained in FastlaneCore
  UI = FastlaneCore::UI

  ENV['FASTLANE_TEAM_ID'] ||= ENV["SIGH_TEAM_ID"]
  ENV['DELIVER_USER'] ||= ENV["SIGH_USERNAME"]

  FastlaneCore::FeatureManager.addFeatures([
    Feature.new(key: :mykey,
      description: "yo",
      env_var: 'FASTLANE_SIGH_MYFEATURE')
    ])
end
