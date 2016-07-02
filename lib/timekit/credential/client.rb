module Timekit
  class Credential
    # Client class for the credential resource
    class Client < Timekit::Client
      def path
        Timekit::CREDENTIAL_API_PATH
      end

      def list
        super
      end

      def create(
        type, # 'client-token' or 'server-token'
        scopes, # 'global' or 'widget'
        description,
        referrer = nil,
        expires = nil # default 1 year from now (timestamp)
      )
        params = {
          type: type,
          scopes: scopes,
          description: description
        }

        params[:referrer] = referrer if referrer
        params[:expires] = expires if expires

        post('', params)
      end

      def delete(id)
        super("/#{id}")
      end
    end
  end
end
