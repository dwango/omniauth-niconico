require 'omniauth-oauth2'

module OmniAuth
  module Strategies
    class Niconico < OmniAuth::Strategies::OAuth2
      option :name, 'niconico'

      option :client_options,
             site: 'https://oauth.nicovideo.jp',
             authorize_url: '/oauth2/authorize',
             token_url: '/oauth2/token',
             credentials: nil

      uid { raw_info['userId'] }

      info do
        {
          id: raw_info['userId'],
          name: raw_info['nickName'],
          image: raw_info['thumbnailUrl'],
          small_image: raw_info['thumbnailSmallUrl']
        }
      end

      extra do
        {
          raw_info: raw_info
        }
      end

      def request_phase
        set_options
        super
      end

      def callback_phase
        set_options
        super
      end

      def raw_info
        return @raw_info if @raw_info
        user = access_token.get('/v1/user.json').parsed
        raise unless user['meta']['status'] == 200
        @raw_info = user['data']
      end

      def callback_url
        full_host + script_name + callback_path
      end

      private

      def identifier
        identifier_key = 'omniauth.niconico.identifier'
        identifier = request.params['identifier'] || session[identifier_key]
        session[identifier_key] = identifier unless identifier.nil?
        identifier
      end

      def set_options
        return unless identifier && options.credentials
        client_id, client_secret = options.credentials.call(identifier)
        options.client_id = client_id
        options.client_secret = client_secret
      end
    end
  end
end
