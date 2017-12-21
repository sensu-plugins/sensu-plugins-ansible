# frozen_string_literal: true

require 'json'

module SensuPluginsAnsible
  module Version
    MAJOR = 2
    MINOR = 0
    PATCH = 0

    VER_STRING = [MAJOR, MINOR, PATCH].compact.join('.')
  end
end
