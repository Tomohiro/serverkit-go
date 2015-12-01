require 'serverkit/resources/base'

module Serverkit
  module Resources
    class GoPackage < Base
      attribute :path, required: true, type: String

      # @note Override
      def apply
        run_command("go get -u #{path}")
      end

      # @note Override
      def check
        go_package_path = "#{ENV['GOPATH']}/src/#{path}"
        check_command(
          backend.command.get(:check_file_is_directory, go_package_path)
        )
      end
    end
  end
end
