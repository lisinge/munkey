# frozen_string_literal: true

module Bot
  module GroupBuys
    extend Discordrb::Commands::CommandContainer

    command :enable_gb_alerts, Bot::ADMIN_PERMISSIONS do |event|
      channel = Channel.upsert!(event.channel)
      channel.enable_gb_alerts!
      "GB alerts enabled in this channel"
    end

    command :disable_gb_alerts, Bot::ADMIN_PERMISSIONS do |event|
      channel = Channel.upsert!(event.channel)
      channel.disable_gb_alerts!
      "GB alerts disabled in this channel"
    end
  end
end
