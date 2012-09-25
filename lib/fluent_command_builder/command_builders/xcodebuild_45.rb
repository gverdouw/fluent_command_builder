# Generated code. Do not modify.

require File.expand_path(File.dirname(__FILE__) + '/../internal/command_base')
require File.expand_path(File.dirname(__FILE__) + '/../internal/command_builder_config')
require File.expand_path(File.dirname(__FILE__) + '/../internal/underlying_builder')

module FluentCommandBuilder
  module XCodeBuild
    module V45
      VERSION = '4.5'
      @@config = CommandBuilderConfig.new FluentCommandBuilder::XCodeBuild::COMMAND_NAME, VERSION
      @@config.version_detector = FluentCommandBuilder::XCodeBuild.version_detector
      def configure_xcodebuild
        yield @@config
        @@config.validate_path
        @@config.validate_version
      end
      def xcodebuild
        b = UnderlyingBuilder.new @@config
        c = XCodeBuild.new(b)
        yield b if block_given?
        c
      end
      class XCodeBuild < CommandBase
        def initialize(underlying_builder)
          super underlying_builder
        end
        def build_project(build_action=nil)
          BuildProject.new @b, build_action
        end
        def build_project_scheme(build_action=nil)
          BuildProjectScheme.new @b, build_action
        end
        def build_workspace(workspace_name, build_action=nil)
          BuildWorkspace.new @b, workspace_name, build_action
        end
        def version
          Version.new @b
        end
        def list
          @b.append ' -list'
          yield @b if block_given?
          self
        end
        def list_project(project_name)
          @b.append " -list -project #{@b.format project_name}"
          yield @b if block_given?
          self
        end
        def list_workspace(workspace_name)
          @b.append " -list -workspace #{@b.format workspace_name}"
          yield @b if block_given?
          self
        end
        def find_executable(name)
          @b.append " -find-executable #{@b.format name}"
          yield @b if block_given?
          self
        end
        def find_library(name)
          @b.append " -find-library #{@b.format name}"
          yield @b if block_given?
          self
        end
        def help
          @b.append ' -help'
          yield @b if block_given?
          self
        end
        def license
          @b.append ' -license'
          yield @b if block_given?
          self
        end
        def show_sdks
          @b.append ' -showsdks'
          yield @b if block_given?
          self
        end
        def usage
          @b.append ' -usage'
          yield @b if block_given?
          self
        end
      end
      class BuildProject < CommandBase
        def initialize(underlying_builder, build_action=nil)
          super underlying_builder
          @b.append ' '
          @b.append "#{@b.format build_action, ' '}" unless build_action.nil?
        end
        def all_targets
          @b.append ' -alltargets'
          yield @b if block_given?
          self
        end
        def architecture(architecture)
          @b.append " -arch #{@b.format architecture}"
          yield @b if block_given?
          self
        end
        def configuration(configuration_name)
          @b.append " -configuration #{@b.format configuration_name}"
          yield @b if block_given?
          self
        end
        def dry_run
          @b.append ' -dry-run'
          yield @b if block_given?
          self
        end
        def jobs(number)
          @b.append " -jobs #{@b.format number}"
          yield @b if block_given?
          self
        end
        def parallelize_targets
          @b.append ' -parallelizeTargets'
          yield @b if block_given?
          self
        end
        def project(project_name)
          @b.append " -project #{@b.format project_name}"
          yield @b if block_given?
          self
        end
        def target(target_name)
          @b.append " -target #{@b.format target_name}"
          yield @b if block_given?
          self
        end
        def sdk(sdk_name)
          @b.append " -sdk #{@b.format sdk_name}"
          yield @b if block_given?
          self
        end
        def show_build_settings
          @b.append ' -showBuildSettings'
          yield @b if block_given?
          self
        end
        def toolchain(name)
          @b.append " -toolchain #{@b.format name}"
          yield @b if block_given?
          self
        end
        def verbose
          @b.append ' -verbose'
          yield @b if block_given?
          self
        end
        def xcconfig(path)
          @b.append " -xcconfig #{@b.format path}"
          yield @b if block_given?
          self
        end
        def setting(setting, value)
          @b.append " #{@b.format setting}=#{@b.format value}"
          yield @b if block_given?
          self
        end
        def build_action(build_action)
          @b.append " #{@b.format build_action, ' '}"
          yield @b if block_given?
          self
        end
      end
      class BuildProjectScheme < CommandBase
        def initialize(underlying_builder, build_action=nil)
          super underlying_builder
          @b.append ' '
          @b.append "#{@b.format build_action, ' '}" unless build_action.nil?
        end
        def architecture(architecture)
          @b.append " -arch #{@b.format architecture}"
          yield @b if block_given?
          self
        end
        def configuration(configuration_name)
          @b.append " -configuration #{@b.format configuration_name}"
          yield @b if block_given?
          self
        end
        def dry_run
          @b.append ' -dry-run'
          yield @b if block_given?
          self
        end
        def jobs(number)
          @b.append " -jobs #{@b.format number}"
          yield @b if block_given?
          self
        end
        def parallelize_targets
          @b.append ' -parallelizeTargets'
          yield @b if block_given?
          self
        end
        def scheme(scheme_name)
          @b.append " -scheme #{@b.format scheme_name}"
          yield @b if block_given?
          self
        end
        def sdk(sdk_name)
          @b.append " -sdk #{@b.format sdk_name}"
          yield @b if block_given?
          self
        end
        def show_build_settings
          @b.append ' -showBuildSettings'
          yield @b if block_given?
          self
        end
        def toolchain(name)
          @b.append " -toolchain #{@b.format name}"
          yield @b if block_given?
          self
        end
        def verbose
          @b.append ' -verbose'
          yield @b if block_given?
          self
        end
        def xcconfig(path)
          @b.append " -xcconfig #{@b.format path}"
          yield @b if block_given?
          self
        end
        def setting(setting, value)
          @b.append " #{@b.format setting}=#{@b.format value}"
          yield @b if block_given?
          self
        end
        def build_action(build_action)
          @b.append " #{@b.format build_action, ' '}"
          yield @b if block_given?
          self
        end
      end
      class BuildWorkspace < CommandBase
        def initialize(underlying_builder, workspace_name, build_action=nil)
          super underlying_builder
          @b.append " -workspace #{@b.format workspace_name}"
          @b.append " #{@b.format build_action, ' '}" unless build_action.nil?
        end
        def architecture(architecture)
          @b.append " -arch #{@b.format architecture}"
          yield @b if block_given?
          self
        end
        def configuration(configuration_name)
          @b.append " -configuration #{@b.format configuration_name}"
          yield @b if block_given?
          self
        end
        def dry_run
          @b.append ' -dry-run'
          yield @b if block_given?
          self
        end
        def jobs(number)
          @b.append " -jobs #{@b.format number}"
          yield @b if block_given?
          self
        end
        def parallelize_targets
          @b.append ' -parallelizeTargets'
          yield @b if block_given?
          self
        end
        def scheme(scheme_name)
          @b.append " -scheme #{@b.format scheme_name}"
          yield @b if block_given?
          self
        end
        def sdk(sdk_name)
          @b.append " -sdk #{@b.format sdk_name}"
          yield @b if block_given?
          self
        end
        def show_build_settings
          @b.append ' -showBuildSettings'
          yield @b if block_given?
          self
        end
        def toolchain(name)
          @b.append " -toolchain #{@b.format name}"
          yield @b if block_given?
          self
        end
        def verbose
          @b.append ' -verbose'
          yield @b if block_given?
          self
        end
        def xcconfig(path)
          @b.append " -xcconfig #{@b.format path}"
          yield @b if block_given?
          self
        end
        def setting(setting, value)
          @b.append " #{@b.format setting}=#{@b.format value}"
          yield @b if block_given?
          self
        end
        def build_action(build_action)
          @b.append " #{@b.format build_action, ' '}"
          yield @b if block_given?
          self
        end
      end
      class Version < CommandBase
        def initialize(underlying_builder)
          super underlying_builder
          @b.append ' -version'
        end
        def sdk(sdk_name)
          @b.append " -sdk #{@b.format sdk_name}"
          yield @b if block_given?
          self
        end
        def info_item(info_item)
          @b.append " #{@b.format info_item}"
          yield @b if block_given?
          self
        end
      end

    end
  end
end