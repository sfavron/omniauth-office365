require 'omniauth/strategies/oauth2'

module OmniAuth
  module Strategies
    class Office365 < OmniAuth::Strategies::OAuth2
      # Scopes and permissions => https://msdn.microsoft.com/en-us/office/office365/howto/authenticate-Office-365-APIs-using-v2
      DEFAULT_SCOPE = 'https://outlook.office.com/mail.read'

      option :client_options, {
        site:          'https://login.live.com',
        authorize_url: '/oauth20_desktop.srf',
        token_url:     '/oauth20_token.srf'
      }

      option :authorize_params, {
        response_type: 'code'
      }

      option :name, 'office365'

      def callback_url
        full_host + script_name + callback_path
      end
    end
  end
end

OmniAuth.config.add_camelization 'office365', 'Office365'
