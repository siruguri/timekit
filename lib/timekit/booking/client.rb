module Timekit
  class Booking
    # Client class for the booking resource
    class Client < Timekit::Client
      def path
        Timekit::BOOKING_API_PATH
      end

      def list
        super
      end

      def show(id)
        super
      end

      def create(
        graph,
        event,
        customer,
        action = nil
      )
        params = {
          graph: graph,
          event: event,
          customer: customer
        }

        params[:action] = action if action

        post('', params)
      end

      def update(
        id,
        action
      )
        put("/#{id}/#{action}")
      end
    end
  end
end
