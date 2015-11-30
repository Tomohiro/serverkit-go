require 'serverkit/resources/base'

module Serverkit
  module Resources
    class Goget < Base
      attribute :url, required: true, type: String

      # @note Override
      def apply
        run_command("go get -u #{url}")
      end

      # @note Override
      def check
        Dir.exists?("#{ENV['GOPATH']}/src/#{url}")
      end
    end
  end
end
