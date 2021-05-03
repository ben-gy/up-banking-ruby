# openapi_client

OpenapiClient - the Ruby gem for the Up API

The Up API gives you programmatic access to your balances and
transaction data. You can request past transactions or set up
webhooks to receive real-time events when new transactions hit your
account. It’s new, it’s exciting and it’s just the beginning.


This SDK is automatically generated by the [OpenAPI Generator](https://openapi-generator.tech) project:

- API version: v1
- Package version: 1.0.0
- Build package: org.openapitools.codegen.languages.RubyClientCodegen
For more information, please visit [https://github.com/up-banking/api](https://github.com/up-banking/api)

## Installation

### Build a gem

To build the Ruby code into a gem:

```shell
gem build openapi_client.gemspec
```

Then either install the gem locally:

```shell
gem install ./openapi_client-1.0.0.gem
```

(for development, run `gem install --dev ./openapi_client-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'openapi_client', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'openapi_client', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'openapi_client'

# Setup authorization
OpenapiClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = OpenapiClient::AccountsApi.new
opts = {
  page_size: 30 # Integer | The number of records to return in each page. 
}

begin
  #List accounts
  result = api_instance.accounts_get(opts)
  p result
rescue OpenapiClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.up.com.au/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*OpenapiClient::AccountsApi* | [**accounts_get**](docs/AccountsApi.md#accounts_get) | **GET** /accounts | List accounts
*OpenapiClient::AccountsApi* | [**accounts_id_get**](docs/AccountsApi.md#accounts_id_get) | **GET** /accounts/{id} | Retrieve account
*OpenapiClient::CategoriesApi* | [**categories_get**](docs/CategoriesApi.md#categories_get) | **GET** /categories | List categories
*OpenapiClient::CategoriesApi* | [**categories_id_get**](docs/CategoriesApi.md#categories_id_get) | **GET** /categories/{id} | Retrieve category
*OpenapiClient::TagsApi* | [**tags_get**](docs/TagsApi.md#tags_get) | **GET** /tags | List tags
*OpenapiClient::TagsApi* | [**transactions_transaction_id_relationships_tags_delete**](docs/TagsApi.md#transactions_transaction_id_relationships_tags_delete) | **DELETE** /transactions/{transactionId}/relationships/tags | Remove tags from transaction
*OpenapiClient::TagsApi* | [**transactions_transaction_id_relationships_tags_post**](docs/TagsApi.md#transactions_transaction_id_relationships_tags_post) | **POST** /transactions/{transactionId}/relationships/tags | Add tags to transaction
*OpenapiClient::TransactionsApi* | [**accounts_account_id_transactions_get**](docs/TransactionsApi.md#accounts_account_id_transactions_get) | **GET** /accounts/{accountId}/transactions | List transactions by account
*OpenapiClient::TransactionsApi* | [**transactions_get**](docs/TransactionsApi.md#transactions_get) | **GET** /transactions | List transactions
*OpenapiClient::TransactionsApi* | [**transactions_id_get**](docs/TransactionsApi.md#transactions_id_get) | **GET** /transactions/{id} | Retrieve transaction
*OpenapiClient::UtilityEndpointsApi* | [**util_ping_get**](docs/UtilityEndpointsApi.md#util_ping_get) | **GET** /util/ping | Ping
*OpenapiClient::WebhooksApi* | [**webhooks_get**](docs/WebhooksApi.md#webhooks_get) | **GET** /webhooks | List webhooks
*OpenapiClient::WebhooksApi* | [**webhooks_id_delete**](docs/WebhooksApi.md#webhooks_id_delete) | **DELETE** /webhooks/{id} | Delete webhook
*OpenapiClient::WebhooksApi* | [**webhooks_id_get**](docs/WebhooksApi.md#webhooks_id_get) | **GET** /webhooks/{id} | Retrieve webhook
*OpenapiClient::WebhooksApi* | [**webhooks_post**](docs/WebhooksApi.md#webhooks_post) | **POST** /webhooks | Create webhook
*OpenapiClient::WebhooksApi* | [**webhooks_webhook_id_logs_get**](docs/WebhooksApi.md#webhooks_webhook_id_logs_get) | **GET** /webhooks/{webhookId}/logs | List webhook logs
*OpenapiClient::WebhooksApi* | [**webhooks_webhook_id_ping_post**](docs/WebhooksApi.md#webhooks_webhook_id_ping_post) | **POST** /webhooks/{webhookId}/ping | Ping webhook


## Documentation for Models

 - [OpenapiClient::AccountResource](docs/AccountResource.md)
 - [OpenapiClient::AccountResourceAttributes](docs/AccountResourceAttributes.md)
 - [OpenapiClient::AccountResourceLinks](docs/AccountResourceLinks.md)
 - [OpenapiClient::AccountResourceRelationships](docs/AccountResourceRelationships.md)
 - [OpenapiClient::AccountResourceRelationshipsTransactions](docs/AccountResourceRelationshipsTransactions.md)
 - [OpenapiClient::AccountResourceRelationshipsTransactionsLinks](docs/AccountResourceRelationshipsTransactionsLinks.md)
 - [OpenapiClient::AccountTypeEnum](docs/AccountTypeEnum.md)
 - [OpenapiClient::CashbackObject](docs/CashbackObject.md)
 - [OpenapiClient::CategoryResource](docs/CategoryResource.md)
 - [OpenapiClient::CategoryResourceAttributes](docs/CategoryResourceAttributes.md)
 - [OpenapiClient::CategoryResourceRelationships](docs/CategoryResourceRelationships.md)
 - [OpenapiClient::CategoryResourceRelationshipsChildren](docs/CategoryResourceRelationshipsChildren.md)
 - [OpenapiClient::CategoryResourceRelationshipsChildrenData](docs/CategoryResourceRelationshipsChildrenData.md)
 - [OpenapiClient::CategoryResourceRelationshipsParent](docs/CategoryResourceRelationshipsParent.md)
 - [OpenapiClient::CategoryResourceRelationshipsParentData](docs/CategoryResourceRelationshipsParentData.md)
 - [OpenapiClient::CreateWebhookRequest](docs/CreateWebhookRequest.md)
 - [OpenapiClient::CreateWebhookResponse](docs/CreateWebhookResponse.md)
 - [OpenapiClient::ErrorObject](docs/ErrorObject.md)
 - [OpenapiClient::ErrorObjectSource](docs/ErrorObjectSource.md)
 - [OpenapiClient::ErrorResponse](docs/ErrorResponse.md)
 - [OpenapiClient::GetAccountResponse](docs/GetAccountResponse.md)
 - [OpenapiClient::GetCategoryResponse](docs/GetCategoryResponse.md)
 - [OpenapiClient::GetTransactionResponse](docs/GetTransactionResponse.md)
 - [OpenapiClient::GetWebhookResponse](docs/GetWebhookResponse.md)
 - [OpenapiClient::HoldInfoObject](docs/HoldInfoObject.md)
 - [OpenapiClient::ListAccountsResponse](docs/ListAccountsResponse.md)
 - [OpenapiClient::ListAccountsResponseLinks](docs/ListAccountsResponseLinks.md)
 - [OpenapiClient::ListCategoriesResponse](docs/ListCategoriesResponse.md)
 - [OpenapiClient::ListTagsResponse](docs/ListTagsResponse.md)
 - [OpenapiClient::ListTransactionsResponse](docs/ListTransactionsResponse.md)
 - [OpenapiClient::ListWebhookDeliveryLogsResponse](docs/ListWebhookDeliveryLogsResponse.md)
 - [OpenapiClient::ListWebhooksResponse](docs/ListWebhooksResponse.md)
 - [OpenapiClient::MoneyObject](docs/MoneyObject.md)
 - [OpenapiClient::PingResponse](docs/PingResponse.md)
 - [OpenapiClient::PingResponseMeta](docs/PingResponseMeta.md)
 - [OpenapiClient::RoundUpObject](docs/RoundUpObject.md)
 - [OpenapiClient::TagInputResourceIdentifier](docs/TagInputResourceIdentifier.md)
 - [OpenapiClient::TagResource](docs/TagResource.md)
 - [OpenapiClient::TransactionResource](docs/TransactionResource.md)
 - [OpenapiClient::TransactionResourceAttributes](docs/TransactionResourceAttributes.md)
 - [OpenapiClient::TransactionResourceRelationships](docs/TransactionResourceRelationships.md)
 - [OpenapiClient::TransactionResourceRelationshipsAccount](docs/TransactionResourceRelationshipsAccount.md)
 - [OpenapiClient::TransactionResourceRelationshipsAccountData](docs/TransactionResourceRelationshipsAccountData.md)
 - [OpenapiClient::TransactionResourceRelationshipsTags](docs/TransactionResourceRelationshipsTags.md)
 - [OpenapiClient::TransactionResourceRelationshipsTagsData](docs/TransactionResourceRelationshipsTagsData.md)
 - [OpenapiClient::TransactionResourceRelationshipsTagsLinks](docs/TransactionResourceRelationshipsTagsLinks.md)
 - [OpenapiClient::TransactionStatusEnum](docs/TransactionStatusEnum.md)
 - [OpenapiClient::UpdateTransactionTagsRequest](docs/UpdateTransactionTagsRequest.md)
 - [OpenapiClient::WebhookDeliveryLogResource](docs/WebhookDeliveryLogResource.md)
 - [OpenapiClient::WebhookDeliveryLogResourceAttributes](docs/WebhookDeliveryLogResourceAttributes.md)
 - [OpenapiClient::WebhookDeliveryLogResourceAttributesRequest](docs/WebhookDeliveryLogResourceAttributesRequest.md)
 - [OpenapiClient::WebhookDeliveryLogResourceAttributesResponse](docs/WebhookDeliveryLogResourceAttributesResponse.md)
 - [OpenapiClient::WebhookDeliveryLogResourceRelationships](docs/WebhookDeliveryLogResourceRelationships.md)
 - [OpenapiClient::WebhookDeliveryLogResourceRelationshipsWebhookEvent](docs/WebhookDeliveryLogResourceRelationshipsWebhookEvent.md)
 - [OpenapiClient::WebhookDeliveryLogResourceRelationshipsWebhookEventData](docs/WebhookDeliveryLogResourceRelationshipsWebhookEventData.md)
 - [OpenapiClient::WebhookDeliveryStatusEnum](docs/WebhookDeliveryStatusEnum.md)
 - [OpenapiClient::WebhookEventCallback](docs/WebhookEventCallback.md)
 - [OpenapiClient::WebhookEventResource](docs/WebhookEventResource.md)
 - [OpenapiClient::WebhookEventResourceAttributes](docs/WebhookEventResourceAttributes.md)
 - [OpenapiClient::WebhookEventResourceRelationships](docs/WebhookEventResourceRelationships.md)
 - [OpenapiClient::WebhookEventResourceRelationshipsTransaction](docs/WebhookEventResourceRelationshipsTransaction.md)
 - [OpenapiClient::WebhookEventResourceRelationshipsTransactionData](docs/WebhookEventResourceRelationshipsTransactionData.md)
 - [OpenapiClient::WebhookEventResourceRelationshipsWebhook](docs/WebhookEventResourceRelationshipsWebhook.md)
 - [OpenapiClient::WebhookEventResourceRelationshipsWebhookData](docs/WebhookEventResourceRelationshipsWebhookData.md)
 - [OpenapiClient::WebhookEventTypeEnum](docs/WebhookEventTypeEnum.md)
 - [OpenapiClient::WebhookInputResource](docs/WebhookInputResource.md)
 - [OpenapiClient::WebhookInputResourceAttributes](docs/WebhookInputResourceAttributes.md)
 - [OpenapiClient::WebhookResource](docs/WebhookResource.md)
 - [OpenapiClient::WebhookResourceAttributes](docs/WebhookResourceAttributes.md)
 - [OpenapiClient::WebhookResourceRelationships](docs/WebhookResourceRelationships.md)


## Documentation for Authorization


### bearer_auth

- **Type**: Bearer authentication
