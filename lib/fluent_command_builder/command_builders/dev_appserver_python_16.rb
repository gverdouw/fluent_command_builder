# Generated code. Do not modify.

require File.expand_path(File.dirname(__FILE__) + '/../internal/command_base')
require File.expand_path(File.dirname(__FILE__) + '/../internal/command_builder_config')
require File.expand_path(File.dirname(__FILE__) + '/../internal/underlying_builder')

module FluentCommandBuilder
  module DevAppserverPython
    module V16
      VERSION = '1.6'
      @@config = CommandBuilderConfig.new FluentCommandBuilder::DevAppserverPython::COMMAND_NAME, VERSION
      @@config.version_detector = FluentCommandBuilder::DevAppserverPython.version_detector
      def configure_dev_appserver_python
        yield @@config
        @@config.validate_path
        @@config.validate_version
      end
      def dev_appserver_python(application_root=nil)
        b = UnderlyingBuilder.new @@config
        c = DevAppserverPython.new(b, application_root)
        yield b if block_given?
        c
      end
      class DevAppserverPython < CommandBase
        def initialize(underlying_builder, application_root=nil)
          super underlying_builder
          @b.append " #{@b.format application_root}" unless application_root.nil?
        end
        def application_root(application_root)
          @b.append " #{@b.format application_root}"
          yield @b if block_given?
          self
        end
        def address(address)
          @b.append " --address=#{@b.format address}"
          yield @b if block_given?
          self
        end
        def clear_datastore
          @b.append ' --clear_datastore'
          yield @b if block_given?
          self
        end
        def debug
          @b.append ' --debug'
          yield @b if block_given?
          self
        end
        def help
          @b.append ' --help'
          yield @b if block_given?
          self
        end
        def port(port)
          @b.append " --port=#{@b.format port}"
          yield @b if block_given?
          self
        end
        def allow_skipped_files
          @b.append ' --allow_skipped_files'
          yield @b if block_given?
          self
        end
        def auth_domain
          @b.append ' --auth_domain'
          yield @b if block_given?
          self
        end
        def backends
          @b.append ' --backends'
          yield @b if block_given?
          self
        end
        def blobstore_path(dir)
          @b.append " --blobstore_path=#{@b.format dir}"
          yield @b if block_given?
          self
        end
        def clear_prospective_search
          @b.append ' --clear_prospective_search'
          yield @b if block_given?
          self
        end
        def datastore_path(ds_file)
          @b.append " --datastore_path=#{@b.format ds_file}"
          yield @b if block_given?
          self
        end
        def debug_imports
          @b.append ' --debug_imports'
          yield @b if block_given?
          self
        end
        def default_partition
          @b.append ' --default_partition'
          yield @b if block_given?
          self
        end
        def disable_static_caching
          @b.append ' --disable_static_caching'
          yield @b if block_given?
          self
        end
        def disable_task_running
          @b.append ' --disable_task_running'
          yield @b if block_given?
          self
        end
        def enable_sendmail
          @b.append ' --enable_sendmail'
          yield @b if block_given?
          self
        end
        def high_replication
          @b.append ' --high_replication'
          yield @b if block_given?
          self
        end
        def history_path(path)
          @b.append " --history_path=#{@b.format path}"
          yield @b if block_given?
          self
        end
        def multiprocess_min_port
          @b.append ' --multiprocess_min_port'
          yield @b if block_given?
          self
        end
        def mysql_host(hostname)
          @b.append " --mysql_host=#{@b.format hostname}"
          yield @b if block_given?
          self
        end
        def mysql_port(port)
          @b.append " --mysql_port=#{@b.format port}"
          yield @b if block_given?
          self
        end
        def mysql_user(user)
          @b.append " --mysql_user=#{@b.format user}"
          yield @b if block_given?
          self
        end
        def mysql_password(password)
          @b.append " --mysql_password=#{@b.format_password password}"
          yield @b if block_given?
          self
        end
        def mysql_socket(path)
          @b.append " --mysql_socket=#{@b.format path}"
          yield @b if block_given?
          self
        end
        def persist_logs
          @b.append ' --persist_logs'
          yield @b if block_given?
          self
        end
        def require_indexes
          @b.append ' --require_indexes'
          yield @b if block_given?
          self
        end
        def show_mail_body
          @b.append ' --show_mail_body'
          yield @b if block_given?
          self
        end
        def skip_sdk_update_check
          @b.append ' --skip_sdk_update_check'
          yield @b if block_given?
          self
        end
        def smtp_host(hostname)
          @b.append " --smtp_host=#{@b.format hostname}"
          yield @b if block_given?
          self
        end
        def smtp_port(port)
          @b.append " --smtp_port=#{@b.format port}"
          yield @b if block_given?
          self
        end
        def smtp_user(user)
          @b.append " --smtp_user=#{@b.format user}"
          yield @b if block_given?
          self
        end
        def smtp_password(password)
          @b.append " --smtp_password=#{@b.format_password password}"
          yield @b if block_given?
          self
        end
        def task_retry_seconds
          @b.append ' --task_retry_seconds'
          yield @b if block_given?
          self
        end
        def use_sqlite
          @b.append ' --use_sqlite'
          yield @b if block_given?
          self
        end
      end

    end
  end
end