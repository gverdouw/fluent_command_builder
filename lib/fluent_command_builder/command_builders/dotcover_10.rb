require File.expand_path(File.dirname(__FILE__) + '/../command_base')
require File.expand_path(File.dirname(__FILE__) + '/../command_builder')

module FluentCommandBuilder
  module DotCover
    module V10
      COMMAND_NAME = 'dotCover'
      class DotCover < CommandBase
        def initialize(builder)
          super builder
        end
        def analyse(configuration_file=nil)
          @builder.append ' analyse'
          @builder.append " #{@builder.format configuration_file}" unless configuration_file.nil?
          yield @builder if block_given?
          self
        end
        def cover(configuration_file=nil)
          @builder.append ' cover'
          @builder.append " #{@builder.format configuration_file}" unless configuration_file.nil?
          yield @builder if block_given?
          self
        end
        def delete(configuration_file=nil)
          @builder.append ' delete'
          @builder.append " #{@builder.format configuration_file}" unless configuration_file.nil?
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
        def list(configuration_file=nil)
          @builder.append ' list'
          @builder.append " #{@builder.format configuration_file}" unless configuration_file.nil?
          yield @builder if block_given?
          self
        end
        def merge(configuration_file=nil)
          @builder.append ' merge'
          @builder.append " #{@builder.format configuration_file}" unless configuration_file.nil?
          yield @builder if block_given?
          self
        end
        def report(configuration_file=nil)
          @builder.append ' report'
          @builder.append " #{@builder.format configuration_file}" unless configuration_file.nil?
          yield @builder if block_given?
          self
        end
      end
      def dotcover
        builder = CommandBuilder.new COMMAND_NAME
        command = DotCover.new builder
        yield builder if block_given?
        command
      end
    end
  end
  def dotcover_10
    builder = CommandBuilder.new DotCover::V10::COMMAND_NAME
    command = DotCover::V10::DotCover.new builder
    yield builder if block_given?
    command
  end
end