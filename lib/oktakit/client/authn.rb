module Oktakit
  class Client
    module Authn
      # Check Recovery Token
      #
      # @params recovery_token [string] The recovery token to validate.
      # @param options[:query] [Hash] Optional. Query params for request
      # @param options[:headers] [Hash] Optional. Header params for the request.
      # @param options[:accept] [String] Optional. The content type to accept. Default application/json
      # @param options[:content_type] [String] Optional. The content type for the request. Default application/json
      # @param options [Hash] Optional. Body params for request.
      # @return [Hash<Sawyer::Resource>] The enrolled Factor with a status of either PENDING_ACTIVATION or ACTIVE.
      # @see https://developer.okta.com/docs/api/resources/authn.html#verify-recovery-token
      # @example
      #   Oktakit.verify_recovery_token('recoverytoken')
      def verify_recovery_token(recovery_token, options = {})
        options['recoveryToken'] = recovery_token
        post("/authn/recovery/token", options)
      end
    end
  end
end
