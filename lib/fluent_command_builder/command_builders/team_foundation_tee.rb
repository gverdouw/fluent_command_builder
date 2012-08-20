require File.expand_path(File.dirname(__FILE__) + '/../underlying_builder')
require File.expand_path(File.dirname(__FILE__) + '/../version')

module FluentCommandBuilder
  def team_foundation_tee(&block)
    TeamFoundationTEE.create &block
  end
  module TeamFoundationTEE
    COMMAND_NAME = 'tf'
    def self.create(&block)
      version_module(TeamFoundationTEE).create &block
    end
  end
end