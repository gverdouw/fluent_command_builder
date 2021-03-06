# Generated code. Do not modify.

require File.expand_path(File.dirname(__FILE__) + '/../internal/command_base')
require File.expand_path(File.dirname(__FILE__) + '/../internal/command_builder_config')
require File.expand_path(File.dirname(__FILE__) + '/../internal/underlying_builder')

module FluentCommandBuilder
  module NUnit
    module V25
      VERSION = '2.5'
      @@config = CommandBuilderConfig.new FluentCommandBuilder::NUnit::COMMAND_NAME, VERSION
      @@config.version_detector = FluentCommandBuilder::NUnit.version_detector
      def configure_nunit
        yield @@config
        @@config.validate_path
        @@config.validate_version
      end
      def nunit(input_files=nil)
        b = UnderlyingBuilder.new @@config
        c = NUnit.new(b, input_files)
        yield b if block_given?
        c
      end
      class NUnit < CommandBase
        def initialize(underlying_builder, input_files=nil)
          super underlying_builder
          @b.append " #{@b.format input_files}" unless input_files.nil?
        end
        def input_files(input_files)
          @b.append " #{@b.format input_files}"
          yield @b if block_given?
          self
        end
        def fixture(fixture)
          @b.append " -fixture:#{@b.format fixture}"
          yield @b if block_given?
          self
        end
        def load(fixture)
          @b.append " -load:#{@b.format fixture}"
          yield @b if block_given?
          self
        end
        def run(test)
          @b.append " -run:#{@b.format test}"
          yield @b if block_given?
          self
        end
        def config(config)
          @b.append " -config:#{@b.format config}"
          yield @b if block_given?
          self
        end
        def xml(file)
          @b.append " -xml:#{@b.format file}"
          yield @b if block_given?
          self
        end
        def xml_console
          @b.append ' -xmlConsole'
          yield @b if block_given?
          self
        end
        def output(file)
          @b.append " -output:#{@b.format file}"
          yield @b if block_given?
          self
        end
        def out(file)
          @b.append " -out:#{@b.format file}"
          yield @b if block_given?
          self
        end
        def err(file)
          @b.append " -err:#{@b.format file}"
          yield @b if block_given?
          self
        end
        def labels
          @b.append ' -labels'
          yield @b if block_given?
          self
        end
        def trace(level)
          @b.append " -trace:#{@b.format level}"
          yield @b if block_given?
          self
        end
        def include(category)
          @b.append " -include:#{@b.format category}"
          yield @b if block_given?
          self
        end
        def exclude(category)
          @b.append " -exclude:#{@b.format category}"
          yield @b if block_given?
          self
        end
        def process(process)
          @b.append " -process:#{@b.format process}"
          yield @b if block_given?
          self
        end
        def domain(domain)
          @b.append " -domain:#{@b.format domain}"
          yield @b if block_given?
          self
        end
        def framework(framework)
          @b.append " -framework:#{@b.format framework}"
          yield @b if block_given?
          self
        end
        def no_shadow
          @b.append ' -noShadow'
          yield @b if block_given?
          self
        end
        def no_thread
          @b.append ' -noThread'
          yield @b if block_given?
          self
        end
        def timeout(timeout)
          @b.append " -timeout:#{@b.format timeout}"
          yield @b if block_given?
          self
        end
        def wait
          @b.append ' -wait'
          yield @b if block_given?
          self
        end
        def no_logo
          @b.append ' -noLogo'
          yield @b if block_given?
          self
        end
        def no_dots
          @b.append ' -noDots'
          yield @b if block_given?
          self
        end
        def help
          @b.append ' -help'
          yield @b if block_given?
          self
        end
      end

    end
  end
end