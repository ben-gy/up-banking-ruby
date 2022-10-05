# up_banking

UpBankingClient - the Ruby gem for the Up API

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
gem build up_banking.gemspec
```

Then either install the gem locally:

```shell
gem install ./up_banking-1.0.0.gem
```

(for development, run `gem install --dev ./up_banking-1.0.0.gem` to install the development dependencies)

or publish the gem to a gem hosting service, e.g. [RubyGems](https://rubygems.org/).

Finally add this to the Gemfile:

    gem 'up_banking', '~> 1.0.0'

### Install from Git

If the Ruby gem is hosted at a git repository: https://github.com/GIT_USER_ID/GIT_REPO_ID, then add the following in the Gemfile:

    gem 'up_banking', :git => 'https://github.com/GIT_USER_ID/GIT_REPO_ID.git'

### Include the Ruby code directly

Include the Ruby code directly using `-I` as follows:

```shell
ruby -Ilib script.rb
```

## Getting Started

Please follow the [installation](#installation) procedure and then run the following code:

```ruby
# Load the gem
require 'up_banking'

# Setup authorization
UpBankingClient.configure do |config|
  # Configure Bearer authorization: bearer_auth
  config.access_token = 'YOUR_BEARER_TOKEN'
end

api_instance = UpBankingClient::AccountsApi.new
opts = {
  page_size: 30, # Integer | The number of records to return in each page. 
  filter_account_type: UpBankingClient::AccountTypeEnum::SAVER, # AccountTypeEnum | The type of account for which to return records. This can be used to filter Savers from spending accounts. 
  filter_ownership_type: UpBankingClient::OwnershipTypeEnum::INDIVIDUAL # OwnershipTypeEnum | The account ownership structure for which to return records. This can be used to filter 2Up accounts from Up accounts. 
}

begin
  #List accounts
  result = api_instance.accounts_get(opts)
  p result
rescue UpBankingClient::ApiError => e
  puts "Exception when calling AccountsApi->accounts_get: #{e}"
end

```

## Documentation for API Endpoints

All URIs are relative to *https://api.up.com.au/api/v1*

Class | Method | HTTP request | Description
------------ | ------------- | ------------- | -------------
*UpBankingClient::AccountsApi* | [**accounts_get**](docs/AccountsApi.md#accounts_get) | **GET** /accounts | List accounts
*UpBankingClient::AccountsApi* | [**accounts_id_get**](docs/AccountsApi.md#accounts_id_get) | **GET** /accounts/{id} | Retrieve account
*UpBankingClient::CategoriesApi* | [**categories_get**](docs/CategoriesApi.md#categories_get) | **GET** /categories | List categories
*UpBankingClient::CategoriesApi* | [**categories_id_get**](docs/CategoriesApi.md#categories_id_get) | **GET** /categories/{id} | Retrieve category
*UpBankingClient::CategoriesApi* | [**transactions_transaction_id_relationships_category_patch**](docs/CategoriesApi.md#transactions_transaction_id_relationships_category_patch) | **PATCH** /transactions/{transactionId}/relationships/category | Categorize transaction
*UpBankingClient::TagsApi* | [**tags_get**](docs/TagsApi.md#tags_get) | **GET** /tags | List tags
*UpBankingClient::TagsApi* | [**transactions_transaction_id_relationships_tags_delete**](docs/TagsApi.md#transactions_transaction_id_relationships_tags_delete) | **DELETE** /transactions/{transactionId}/relationships/tags | Remove tags from transaction
*UpBankingClient::TagsApi* | [**transactions_transaction_id_relationships_tags_post**](docs/TagsApi.md#transactions_transaction_id_relationships_tags_post) | **POST** /transactions/{transactionId}/relationships/tags | Add tags to transaction
*UpBankingClient::TransactionsApi* | [**accounts_account_id_transactions_get**](docs/TransactionsApi.md#accounts_account_id_transactions_get) | **GET** /accounts/{accountId}/transactions | List transactions by account
*UpBankingClient::TransactionsApi* | [**transactions_get**](docs/TransactionsApi.md#transactions_get) | **GET** /transactions | List transactions
*UpBankingClient::TransactionsApi* | [**transactions_id_get**](docs/TransactionsApi.md#transactions_id_get) | **GET** /transactions/{id} | Retrieve transaction
*UpBankingClient::UtilityEndpointsApi* | [**util_ping_get**](docs/UtilityEndpointsApi.md#util_ping_get) | **GET** /util/ping | Ping
*UpBankingClient::WebhooksApi* | [**webhooks_get**](docs/WebhooksApi.md#webhooks_get) | **GET** /webhooks | List webhooks
*UpBankingClient::WebhooksApi* | [**webhooks_id_delete**](docs/WebhooksApi.md#webhooks_id_delete) | **DELETE** /webhooks/{id} | Delete webhook
*UpBankingClient::WebhooksApi* | [**webhooks_id_get**](docs/WebhooksApi.md#webhooks_id_get) | **GET** /webhooks/{id} | Retrieve webhook
*UpBankingClient::WebhooksApi* | [**webhooks_post**](docs/WebhooksApi.md#webhooks_post) | **POST** /webhooks | Create webhook
*UpBankingClient::WebhooksApi* | [**webhooks_webhook_id_logs_get**](docs/WebhooksApi.md#webhooks_webhook_id_logs_get) | **GET** /webhooks/{webhookId}/logs | List webhook logs
*UpBankingClient::WebhooksApi* | [**webhooks_webhook_id_ping_post**](docs/WebhooksApi.md#webhooks_webhook_id_ping_post) | **POST** /webhooks/{webhookId}/ping | Ping webhook


## Documentation for Models

 - [UpBankingClient::AccountResource](docs/AccountResource.md)
 - [UpBankingClient::AccountResourceAttributes](docs/AccountResourceAttributes.md)
 - [UpBankingClient::AccountResourceAttributesBalance](docs/AccountResourceAttributesBalance.md)
 - [UpBankingClient::AccountResourceLinks](docs/AccountResourceLinks.md)
 - [UpBankingClient::AccountResourceRelationships](docs/AccountResourceRelationships.md)
 - [UpBankingClient::AccountResourceRelationshipsTransactions](docs/AccountResourceRelationshipsTransactions.md)
 - [UpBankingClient::AccountResourceRelationshipsTransactionsLinks](docs/AccountResourceRelationshipsTransactionsLinks.md)
 - [UpBankingClient::AccountTypeEnum](docs/AccountTypeEnum.md)
 - [UpBankingClient::CashbackObject](docs/CashbackObject.md)
 - [UpBankingClient::CashbackObjectAmount](docs/CashbackObjectAmount.md)
 - [UpBankingClient::CategoryInputResourceIdentifier](docs/CategoryInputResourceIdentifier.md)
 - [UpBankingClient::CategoryResource](docs/CategoryResource.md)
 - [UpBankingClient::CategoryResourceAttributes](docs/CategoryResourceAttributes.md)
 - [UpBankingClient::CategoryResourceRelationships](docs/CategoryResourceRelationships.md)
 - [UpBankingClient::CategoryResourceRelationshipsChildren](docs/CategoryResourceRelationshipsChildren.md)
 - [UpBankingClient::CategoryResourceRelationshipsChildrenDataInner](docs/CategoryResourceRelationshipsChildrenDataInner.md)
 - [UpBankingClient::CategoryResourceRelationshipsParent](docs/CategoryResourceRelationshipsParent.md)
 - [UpBankingClient::CategoryResourceRelationshipsParentData](docs/CategoryResourceRelationshipsParentData.md)
 - [UpBankingClient::CreateWebhookRequest](docs/CreateWebhookRequest.md)
 - [UpBankingClient::CreateWebhookRequestData](docs/CreateWebhookRequestData.md)
 - [UpBankingClient::CreateWebhookResponse](docs/CreateWebhookResponse.md)
 - [UpBankingClient::CreateWebhookResponseData](docs/CreateWebhookResponseData.md)
 - [UpBankingClient::ErrorObject](docs/ErrorObject.md)
 - [UpBankingClient::ErrorObjectSource](docs/ErrorObjectSource.md)
 - [UpBankingClient::ErrorResponse](docs/ErrorResponse.md)
 - [UpBankingClient::GetAccountResponse](docs/GetAccountResponse.md)
 - [UpBankingClient::GetAccountResponseData](docs/GetAccountResponseData.md)
 - [UpBankingClient::GetCategoryResponse](docs/GetCategoryResponse.md)
 - [UpBankingClient::GetCategoryResponseData](docs/GetCategoryResponseData.md)
 - [UpBankingClient::GetTransactionResponse](docs/GetTransactionResponse.md)
 - [UpBankingClient::GetTransactionResponseData](docs/GetTransactionResponseData.md)
 - [UpBankingClient::GetWebhookResponse](docs/GetWebhookResponse.md)
 - [UpBankingClient::GetWebhookResponseData](docs/GetWebhookResponseData.md)
 - [UpBankingClient::HoldInfoObject](docs/HoldInfoObject.md)
 - [UpBankingClient::HoldInfoObjectAmount](docs/HoldInfoObjectAmount.md)
 - [UpBankingClient::HoldInfoObjectForeignAmount](docs/HoldInfoObjectForeignAmount.md)
 - [UpBankingClient::ListAccountsResponse](docs/ListAccountsResponse.md)
 - [UpBankingClient::ListAccountsResponseLinks](docs/ListAccountsResponseLinks.md)
 - [UpBankingClient::ListCategoriesResponse](docs/ListCategoriesResponse.md)
 - [UpBankingClient::ListTagsResponse](docs/ListTagsResponse.md)
 - [UpBankingClient::ListTransactionsResponse](docs/ListTransactionsResponse.md)
 - [UpBankingClient::ListWebhookDeliveryLogsResponse](docs/ListWebhookDeliveryLogsResponse.md)
 - [UpBankingClient::ListWebhooksResponse](docs/ListWebhooksResponse.md)
 - [UpBankingClient::MoneyObject](docs/MoneyObject.md)
 - [UpBankingClient::OwnershipTypeEnum](docs/OwnershipTypeEnum.md)
 - [UpBankingClient::PingResponse](docs/PingResponse.md)
 - [UpBankingClient::PingResponseMeta](docs/PingResponseMeta.md)
 - [UpBankingClient::RoundUpObject](docs/RoundUpObject.md)
 - [UpBankingClient::RoundUpObjectAmount](docs/RoundUpObjectAmount.md)
 - [UpBankingClient::RoundUpObjectBoostPortion](docs/RoundUpObjectBoostPortion.md)
 - [UpBankingClient::TagInputResourceIdentifier](docs/TagInputResourceIdentifier.md)
 - [UpBankingClient::TagResource](docs/TagResource.md)
 - [UpBankingClient::TransactionResource](docs/TransactionResource.md)
 - [UpBankingClient::TransactionResourceAttributes](docs/TransactionResourceAttributes.md)
 - [UpBankingClient::TransactionResourceAttributesAmount](docs/TransactionResourceAttributesAmount.md)
 - [UpBankingClient::TransactionResourceAttributesCashback](docs/TransactionResourceAttributesCashback.md)
 - [UpBankingClient::TransactionResourceAttributesForeignAmount](docs/TransactionResourceAttributesForeignAmount.md)
 - [UpBankingClient::TransactionResourceAttributesHoldInfo](docs/TransactionResourceAttributesHoldInfo.md)
 - [UpBankingClient::TransactionResourceAttributesRoundUp](docs/TransactionResourceAttributesRoundUp.md)
 - [UpBankingClient::TransactionResourceRelationships](docs/TransactionResourceRelationships.md)
 - [UpBankingClient::TransactionResourceRelationshipsAccount](docs/TransactionResourceRelationshipsAccount.md)
 - [UpBankingClient::TransactionResourceRelationshipsAccountData](docs/TransactionResourceRelationshipsAccountData.md)
 - [UpBankingClient::TransactionResourceRelationshipsCategory](docs/TransactionResourceRelationshipsCategory.md)
 - [UpBankingClient::TransactionResourceRelationshipsCategoryLinks](docs/TransactionResourceRelationshipsCategoryLinks.md)
 - [UpBankingClient::TransactionResourceRelationshipsTags](docs/TransactionResourceRelationshipsTags.md)
 - [UpBankingClient::TransactionResourceRelationshipsTagsDataInner](docs/TransactionResourceRelationshipsTagsDataInner.md)
 - [UpBankingClient::TransactionResourceRelationshipsTagsLinks](docs/TransactionResourceRelationshipsTagsLinks.md)
 - [UpBankingClient::TransactionResourceRelationshipsTransferAccount](docs/TransactionResourceRelationshipsTransferAccount.md)
 - [UpBankingClient::TransactionResourceRelationshipsTransferAccountData](docs/TransactionResourceRelationshipsTransferAccountData.md)
 - [UpBankingClient::TransactionStatusEnum](docs/TransactionStatusEnum.md)
 - [UpBankingClient::UpdateTransactionCategoryRequest](docs/UpdateTransactionCategoryRequest.md)
 - [UpBankingClient::UpdateTransactionCategoryRequestData](docs/UpdateTransactionCategoryRequestData.md)
 - [UpBankingClient::UpdateTransactionTagsRequest](docs/UpdateTransactionTagsRequest.md)
 - [UpBankingClient::WebhookDeliveryLogResource](docs/WebhookDeliveryLogResource.md)
 - [UpBankingClient::WebhookDeliveryLogResourceAttributes](docs/WebhookDeliveryLogResourceAttributes.md)
 - [UpBankingClient::WebhookDeliveryLogResourceAttributesRequest](docs/WebhookDeliveryLogResourceAttributesRequest.md)
 - [UpBankingClient::WebhookDeliveryLogResourceAttributesResponse](docs/WebhookDeliveryLogResourceAttributesResponse.md)
 - [UpBankingClient::WebhookDeliveryLogResourceRelationships](docs/WebhookDeliveryLogResourceRelationships.md)
 - [UpBankingClient::WebhookDeliveryLogResourceRelationshipsWebhookEvent](docs/WebhookDeliveryLogResourceRelationshipsWebhookEvent.md)
 - [UpBankingClient::WebhookDeliveryLogResourceRelationshipsWebhookEventData](docs/WebhookDeliveryLogResourceRelationshipsWebhookEventData.md)
 - [UpBankingClient::WebhookDeliveryStatusEnum](docs/WebhookDeliveryStatusEnum.md)
 - [UpBankingClient::WebhookEventCallback](docs/WebhookEventCallback.md)
 - [UpBankingClient::WebhookEventCallbackData](docs/WebhookEventCallbackData.md)
 - [UpBankingClient::WebhookEventResource](docs/WebhookEventResource.md)
 - [UpBankingClient::WebhookEventResourceAttributes](docs/WebhookEventResourceAttributes.md)
 - [UpBankingClient::WebhookEventResourceRelationships](docs/WebhookEventResourceRelationships.md)
 - [UpBankingClient::WebhookEventResourceRelationshipsTransaction](docs/WebhookEventResourceRelationshipsTransaction.md)
 - [UpBankingClient::WebhookEventResourceRelationshipsTransactionData](docs/WebhookEventResourceRelationshipsTransactionData.md)
 - [UpBankingClient::WebhookEventResourceRelationshipsWebhook](docs/WebhookEventResourceRelationshipsWebhook.md)
 - [UpBankingClient::WebhookEventResourceRelationshipsWebhookData](docs/WebhookEventResourceRelationshipsWebhookData.md)
 - [UpBankingClient::WebhookEventTypeEnum](docs/WebhookEventTypeEnum.md)
 - [UpBankingClient::WebhookInputResource](docs/WebhookInputResource.md)
 - [UpBankingClient::WebhookInputResourceAttributes](docs/WebhookInputResourceAttributes.md)
 - [UpBankingClient::WebhookResource](docs/WebhookResource.md)
 - [UpBankingClient::WebhookResourceAttributes](docs/WebhookResourceAttributes.md)
 - [UpBankingClient::WebhookResourceRelationships](docs/WebhookResourceRelationships.md)


## Documentation for Authorization


### bearer_auth

- **Type**: Bearer authentication

