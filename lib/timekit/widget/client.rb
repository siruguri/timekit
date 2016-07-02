module Timekit
  class Widget
    # Client class for the widget resource
    class Client < Timekit::Client
      def path
        Timekit::WIDGET_API_PATH
      end

      def list
        super
      end

      def embed(id)
        get("/embed/#{id}")
      end

      def hosted(slug)
        get("/hosted/#{slug}")
      end

      def update(
        id,
        config,
        name = nil,
        slug = nil
      )
        params = {
          config: config
        }

        params[:name] = name if name
        params[:slug] = slug if slug

        put("/#{id}", params)
      end

      def create(
        config,
        name,
        slug
      )
        params = {
          config: config,
          name: name,
          slug: slug
        }

        post('', params)
      end

      def delete(id)
        super("/#{id}")
      end
    end
  end
end
