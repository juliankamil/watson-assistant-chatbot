# chatbot.rb
# Julian I. Kamil / @juliankamil
# 2018/04/04

require 'rest-client'
require 'json'

module WatsonAssistant
    API_PROTOCOL = 'https'
    API_SERVICE  = 'assistant'

    class Chatbot
        attr_accessor :user_id, :password, :workspace_id

        @api_domain  = 'gateway.watsonplatform.net'
        @api_version = '2018-02-16'

        class << self
            attr_accessor :api_domain, :api_version
        end

        def initialize(user_id, password, workspace_id)
            @user_id      = user_id
            @password     = password
            @workspace_id = workspace_id
        end

        def message(request)
            response = RestClient::Request.new(
                :method   => :post,
                :url      => message_url,
                :user     => user_id,
                :password => password,
                :payload  => request,
                :headers  => { :accept => :json, :content_type => :json }
                ).execute

            results = JSON.parse(response.to_str)
        end

        private def message_url
            "#{API_PROTOCOL}://#{self.class.api_domain}" \
            "/#{API_SERVICE}/api/v1"                     \
            "/workspaces/#{workspace_id}"                \
            "/message?version=#{self.class.api_version}"
        end
    end
end
