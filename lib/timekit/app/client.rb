module Timekit
  class App
    # Client class for the app resource
    class Client < Timekit::Client
      def path
        Timekit::APP_API_PATH
      end

      def list
        super
      end

      def create(name, settings = {})
        params = {
          name: name
        }

        params[:settings] = settings if settings

        post('', params)
      end

      def update(slug, settings)
        params = settings

        put("/#{slug}", params)
      end

      def delete(slug)
        super("/#{slug}")
      end
    end
  end
end
