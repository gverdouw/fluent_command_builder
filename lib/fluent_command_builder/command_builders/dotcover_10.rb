require File.expand_path(File.dirname(__FILE__) + '/../command_base')
require File.expand_path(File.dirname(__FILE__) + '/../underlying_builder')

module FluentCommandBuilder
  def dotcover_10()
    b = UnderlyingBuilder.new
    c = DotCover::V10.create b
    yield b if block_given?
    c
  end
  module DotCover
    module V10
      def self.create(underlying_builder)
        DotCover.new underlying_builder
      end
      def dotcover()
        b = UnderlyingBuilder.new
        c = V10.create b
        yield b if block_given?
        c
      end
      class DotCover < CommandBase
  def initialize(underlying_builder)
    super underlying_builder
    @builder.command_name = 'dotCover'
  end
  def analyse(configuration_file)
    @builder.append " analyse #{@builder.format configuration_file}"
    yield @builder if block_given?
    self
  end
  def cover(configuration_file)
    @builder.append " cover #{@builder.format configuration_file}"
    yield @builder if block_given?
    self
  end
  def delete(configuration_file)
    @builder.append " delete #{@builder.format configuration_file}"
    yield @builder if block_given?
    self
  end
  def help(command=nil, file_name=nil)
    @builder.append ' help'
    @builder.append " #{@builder.format command}" unless command.nil?
    @builder.append " #{@builder.format file_name}" unless file_name.nil?
    yield @builder if block_given?
    self
  end
  def list(configuration_file)
    @builder.append " list #{@builder.format configuration_file}"
    yield @builder if block_given?
    self
  end
  def merge(configuration_file)
    @builder.append " merge #{@builder.format configuration_file}"
    yield @builder if block_given?
    self
  end
  def report(configuration_file)
    @builder.append " report #{@builder.format configuration_file}"
    yield @builder if block_given?
    self
  end
end

    end
  end
end