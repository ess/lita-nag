module Lita
  module Handlers
    class Nag < Handler
      route(/^nag\s+(.+)/, :nag, command: true)

      def nag(response)
        response.reply("Added '#{response.args.join(" ")}'")
      end

      Lita.register_handler(self)
    end
  end
end
