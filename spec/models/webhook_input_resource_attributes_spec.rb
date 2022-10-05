=begin
#Up API

#The Up API gives you programmatic access to your balances and transaction data. You can request past transactions or set up webhooks to receive real-time events when new transactions hit your account. It’s new, it’s exciting and it’s just the beginning. 

The version of the OpenAPI document: v1

Generated by: https://openapi-generator.tech
OpenAPI Generator version: 6.2.0

=end

require 'spec_helper'
require 'json'
require 'date'

# Unit tests for UpBankingClient::WebhookInputResourceAttributes
# Automatically generated by openapi-generator (https://openapi-generator.tech)
# Please update as you see appropriate
describe UpBankingClient::WebhookInputResourceAttributes do
  let(:instance) { UpBankingClient::WebhookInputResourceAttributes.new }

  describe 'test an instance of WebhookInputResourceAttributes' do
    it 'should create an instance of WebhookInputResourceAttributes' do
      expect(instance).to be_instance_of(UpBankingClient::WebhookInputResourceAttributes)
    end
  end
  describe 'test attribute "url"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

  describe 'test attribute "description"' do
    it 'should work' do
      # assertion here. ref: https://www.relishapp.com/rspec/rspec-expectations/docs/built-in-matchers
    end
  end

end
