module Timekit
  class User
    # Client class for the user resource
    class Client < Timekit::Client
      def path
        Timekit::USER_API_PATH
      end

      def me
        show('me')
      end

      def timezone(email)
        get("/timezone/#{email}")
      end

      def update(
        first_name = nil,
        last_name = nil,
        timezone = nil,
        password = nil
      )
        params = {}

        params[:first_name] = first_name if first_name
        params[:last_name] = last_name if last_name
        params[:timezone] = timezone if timezone
        params[:password] = password if password

        put('/me', params)
      end

      def reset_password(email)
        params = {
          email: email
        }

        post('/resetpassword', params)
      end
    end
  end
end
