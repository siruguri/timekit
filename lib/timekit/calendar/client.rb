module Timekit
  class Calendar
    # Client class for the calendar resource
    class Client < Timekit::Client
      def path
        Timekit::CALENDAR_API_PATH
      end

      def create(
        name,
        description,
        background_color = nil,
        foreground_color = nil
      )
        params = {
          name: name,
          description: description
        }

        params[:backgroundcolor] = background_color if background_color
        params[:foregroundcolor] = foreground_color if foreground_color

        post('', params)
      end

      def list
        super
      end

      def show(id)
        super
      end

      def delete(id)
        super("/#{id}")
      end
    end
  end
end
