require File.expand_path(File.dirname(__FILE__) + '/../command_builder')

module FluentCommandBuilder
  module InstallUtil
    module V35
      class InstallUtil
        def initialize builder
          @builder = builder
          @builder.append 'installUtil'
        end
        def assembly_file_name assembly_file_name
          @builder.append " #{@builder.format assembly_file_name}"
          self
        end
        def help 
          @builder.append ' /help'
          self
        end
        def log_file file_name
          @builder.append " /logFile=#{@builder.format file_name}"
          self
        end
        def assembly_name assembly_strong_name
          @builder.append " /assemblyName=#{@builder.format assembly_strong_name}"
          self
        end
        def log_to_console bool
          @builder.append " /logToConsole=#{@builder.format bool}"
          self
        end
        def show_call_stack 
          @builder.append ' /showCallStack'
          self
        end
        def uninstall 
          @builder.append ' /uninstall'
          self
        end
        def to_s 
          @builder.to_s
        end
      end
      def installutil 
        InstallUtil.new CommandBuilder.new
      end
    end
  end
  def installutil_35 
    InstallUtil::V35::InstallUtil.new CommandBuilder.new
  end
end
