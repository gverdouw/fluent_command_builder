require File.expand_path(File.dirname(__FILE__) + '/../internal/path_finder')
require File.expand_path(File.dirname(__FILE__) + '/../internal/version')
require File.expand_path(File.dirname(__FILE__) + '/../command_executors/backticks_executor')

module FluentCommandBuilder
  class StandardVersionDetector

    attr_accessor :path_finder, :backticks_executor

    def initialize(command_name, command_arg=nil)
      @command_name = command_name
      @command_arg = command_arg
      @path_finder = FluentCommandBuilder.path_finder
      @backticks_executor = BackticksExecutor.new
    end

    def version(path=nil)
      path ||= @path_finder.find_path @command_name
      return unless path && File.exist?(path)
      Dir.chdir path do
        command = %Q["#{@command_name}" #{@command_arg} 2>&1]
        output = @backticks_executor.execute command
        v = Version.match(output)
        v ? v.version : nil
      end
    end

  end
end