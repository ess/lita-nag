module Lita
  module Handlers
    class Nag < Handler
      route(/^nag\s+(.+)/, :nag, command: true)

      def nag(response)
        response.reply("Added '#{response.args.join(" ")}'")
        response.reply("response methods: '#{response.methods.sort}'")
        response.reply("room == '#{response.room.name} (#{response.room.id})'")
      end

      Lita.register_handler(self)
    end
  end
end
