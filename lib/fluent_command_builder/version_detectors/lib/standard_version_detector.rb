require File.expand_path(File.dirname(__FILE__) + '/path_finder')

module FluentCommandBuilder
  class StandardVersionDetector
    def self.version(executable_name, executable_args, path=nil)
      path ||= PathFinder.find_path executable_name
      return unless path
      executable = File.join path, executable_name
      output = `"#{executable}" #{executable_args} 2>&1`
      output.match(/(?:\d+\.)(?:\d+\.?)+/) { |m| m[0] }
    end
  end
end