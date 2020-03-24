require "omniauth-oauth2"

module OmniAuth
  module Strategies
    class Kitt < ::OmniAuth::Strategies::OAuth2
      option :name, :kitt

      option :client_options, {
        :site => "https://kitt.lewagon.com",
        :authorize_url => "/oauth/authorize"
      }

      uid do
        raw_info[:id]
      end

      info do
        raw_info
      end

      def raw_info
        @raw_info ||= access_token.get('/api/v1/me.json').parsed.symbolize_keys
      end
    end
  end
end
