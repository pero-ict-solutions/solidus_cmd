require "solidus_cmd/version"

require 'thor'
require 'thor/group'

case ARGV.first
  when 'version', '-v', '--version'
    puts SolidusCmd::VERSION
  when 'extension'
    ARGV.shift
    require 'solidus_cmd/extension'
    SpreeCmd::Extension.start
end
