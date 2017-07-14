#! /usr/bin/env ruby
# frozen_string_literal: true

#
# handler-ansible.rb
#
# DESCRIPTION:
#   This handler runs an Ansible playbook (http://www.ansible.com/) passing the
#   check event as additional variables.
#
#   Two settings are supported in ansible.json:
#     command  : (optional) the ansible-playbook command
#     playbook : (required) the playbook to run
#
#   Additionally, the playbook may be over ridden by the check definition.#
#
# OUTPUT:
#
# PLATFORMS:
#   Linux
#
# DEPENDENCIES:
#   gem: sensu-plugin
#   gem: json
#
# USAGE:
#  #YELLOW
#
# NOTES:
#   enable extended mod_status
#
# LICENSE:
#   Copyright 2014 Aaron Iles <aaron.iles@gmail.com>
#   Released under the same terms as Sensu (the MIT license); see LICENSE
#   for details.
#

require 'sensu-handler'
require 'json'

#
# Ansible
#
class Ansible < Sensu::Handler
  def handle
    ansible = settings['ansible']['command'] || 'ansible-playbook'
    playbook = settings['ansible']['playbook'] || nil
    extra_vars = JSON.generate(@event)

    unless @event['check']['ansible'].nil?
      playbook = @event['check']['ansible']['playbook'] || playbook
    end

    command = "#{ansible} -e '#{extra_vars}' #{playbook}"
    output = `#{command}`

    if $CHILD_STATUS.exitstatus.positive?
      puts output
      exit 1
    else
      puts "SUCCESS: #{command}"
    end
  end
end
