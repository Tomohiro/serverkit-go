require 'serverkit/resources/base'

module Serverkit
  module Resources
    class GoPackage < Base
      attribute :url, required: true, type: String

      # @note Override
      def apply
        run_command("go get -u #{url}")
      end

      # @note Override
      def check
        go_package_dir_path = "#{ENV['GOPATH']}/src/#{url}"
        check_command(
          backend.command.get(:check_file_is_directory, go_package_dir_path)
        )
      end
    end
  end
end
