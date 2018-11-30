# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.0 on 2017-10-13 16:16:26.

require 'ad_manager_api/errors'

module AdManagerApi; module V201711; module ProposalService
  class ProposalServiceRegistry
    PROPOSALSERVICE_METHODS = {:create_proposals=>{:input=>[{:name=>:proposals, :type=>"Proposal", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"create_proposals_response", :fields=>[{:name=>:rval, :type=>"Proposal", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_marketplace_comments_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_marketplace_comments_by_statement_response", :fields=>[{:name=>:rval, :type=>"MarketplaceCommentPage", :min_occurs=>0, :max_occurs=>1}]}}, :get_proposals_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_proposals_by_statement_response", :fields=>[{:name=>:rval, :type=>"ProposalPage", :min_occurs=>0, :max_occurs=>1}]}}, :perform_proposal_action=>{:input=>[{:name=>:proposal_action, :type=>"ProposalAction", :min_occurs=>0, :max_occurs=>1}, {:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"perform_proposal_action_response", :fields=>[{:name=>:rval, :type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1}]}}, :update_proposals=>{:input=>[{:name=>:proposals, :type=>"Proposal", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_proposals_response", :fields=>[{:name=>:rval, :type=>"Proposal", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    PROPOSALSERVICE_TYPES = {:ObjectValue=>{:fields=>[], :abstract=>true, :base=>"Value"}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_path_elements, :type=>"FieldPathElement", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApiVersionError=>{:fields=>[{:name=>:reason, :type=>"ApiVersionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AppliedLabel=>{:fields=>[{:name=>:label_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_negated, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :ArchiveProposals=>{:fields=>[], :base=>"ProposalAction"}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AvailableBillingError=>{:fields=>[{:name=>:reason, :type=>"AvailableBillingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BaseCustomFieldValue=>{:fields=>[{:name=>:custom_field_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :BillingError=>{:fields=>[{:name=>:reason, :type=>"BillingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :BypassProposalWorkflowRules=>{:fields=>[], :base=>"ProposalAction"}, :CancelRetractionForProposals=>{:fields=>[], :base=>"ProposalAction"}, :CollectionSizeError=>{:fields=>[{:name=>:reason, :type=>"CollectionSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CommonError=>{:fields=>[{:name=>:reason, :type=>"CommonError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CustomFieldValue=>{:fields=>[{:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseCustomFieldValue"}, :CustomFieldValueError=>{:fields=>[{:name=>:reason, :type=>"CustomFieldValueError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :original_name=>"timeZoneID", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DateValue=>{:fields=>[{:name=>:value, :type=>"Date", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DealError=>{:fields=>[{:name=>:reason, :type=>"DealError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DiscardLocalVersionEdits=>{:fields=>[], :base=>"ProposalAction"}, :DropDownCustomFieldValue=>{:fields=>[{:name=>:custom_field_option_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseCustomFieldValue"}, :EditProposalsForNegotiation=>{:fields=>[], :base=>"ProposalAction"}, :EntityChildrenLimitReachedError=>{:fields=>[{:name=>:reason, :type=>"EntityChildrenLimitReachedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityLimitReachedError=>{:fields=>[{:name=>:reason, :type=>"EntityLimitReachedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ExchangeRateError=>{:fields=>[{:name=>:reason, :type=>"ExchangeRateError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FeatureError=>{:fields=>[{:name=>:reason, :type=>"FeatureError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FieldPathElement=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :ForecastError=>{:fields=>[{:name=>:reason, :type=>"ForecastError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InvalidUrlError=>{:fields=>[{:name=>:reason, :type=>"InvalidUrlError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LabelEntityAssociationError=>{:fields=>[{:name=>:reason, :type=>"LabelEntityAssociationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LineItemOperationError=>{:fields=>[{:name=>:reason, :type=>"LineItemOperationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :MarketplaceComment=>{:fields=>[{:name=>:proposal_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:comment, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:creation_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:created_by_seller, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :MarketplaceCommentPage=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"MarketplaceComment", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ProposalMarketplaceInfo=>{:fields=>[{:name=>:has_local_version_edits, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:negotiation_status, :type=>"NegotiationStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:marketplace_comment, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_new_version_from_buyer, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:buyer_account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Money=>{:fields=>[{:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :NotNullError=>{:fields=>[{:name=>:reason, :type=>"NotNullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :OfflineError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:reason, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :PackageActionError=>{:fields=>[{:name=>:reason, :type=>"PackageActionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PackageError=>{:fields=>[{:name=>:reason, :type=>"PackageError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ParseError=>{:fields=>[{:name=>:reason, :type=>"ParseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PermissionError=>{:fields=>[{:name=>:reason, :type=>"PermissionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PrecisionError=>{:fields=>[{:name=>:reason, :type=>"PrecisionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProductError=>{:fields=>[{:name=>:reason, :type=>"ProductError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProposalAction=>{:fields=>[], :abstract=>true}, :ProposalActionError=>{:fields=>[{:name=>:reason, :type=>"ProposalActionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProposalLink=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:creator_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:creation_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}]}, :ProposalCompanyAssociation=>{:fields=>[{:name=>:company_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"ProposalCompanyAssociationType", :min_occurs=>0, :max_occurs=>1}, {:name=>:contact_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}]}, :Proposal=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_programmatic, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:dfp_order_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:pricing_model, :type=>"PricingModel", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"ProposalStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_archived, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:advertiser, :type=>"ProposalCompanyAssociation", :min_occurs=>0, :max_occurs=>1}, {:name=>:agencies, :type=>"ProposalCompanyAssociation", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:probability_of_close, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:billing_cap, :type=>"BillingCap", :min_occurs=>0, :max_occurs=>1}, {:name=>:billing_schedule, :type=>"BillingSchedule", :min_occurs=>0, :max_occurs=>1}, {:name=>:billing_source, :type=>"BillingSource", :min_occurs=>0, :max_occurs=>1}, {:name=>:billing_base, :type=>"BillingBase", :min_occurs=>0, :max_occurs=>1}, {:name=>:po_number, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:internal_notes, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:budget, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:primary_salesperson, :type=>"SalespersonSplit", :min_occurs=>0, :max_occurs=>1}, {:name=>:secondary_salespeople, :type=>"SalespersonSplit", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:sales_planner_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:primary_trafficker_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:secondary_trafficker_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:seller_contact_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:applied_team_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:custom_field_values, :type=>"BaseCustomFieldValue", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:effective_applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:advertiser_discount, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:proposal_discount, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:exchange_rate, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:refresh_exchange_rate, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:agency_commission, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:value_added_tax, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_sold, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:approval_status, :type=>"ProposalApprovalStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:workflow_progress, :type=>"WorkflowProgress", :min_occurs=>0, :max_occurs=>1}, {:name=>:last_modified_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:resources, :type=>"ProposalLink", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:actual_expiry_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:expected_expiry_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:third_party_ad_server_id, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:custom_third_party_ad_server_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:terms_and_conditions, :type=>"ProposalTermsAndConditions", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:last_retraction_details, :type=>"RetractionDetails", :min_occurs=>0, :max_occurs=>1}, {:name=>:marketplace_info, :type=>"ProposalMarketplaceInfo", :min_occurs=>0, :max_occurs=>1}, {:name=>:offline_errors, :type=>"OfflineError", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:has_offline_errors, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :ProposalError=>{:fields=>[{:name=>:reason, :type=>"ProposalError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProposalLineItemError=>{:fields=>[{:name=>:reason, :type=>"ProposalLineItemError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProposalLineItemProgrammaticError=>{:fields=>[{:name=>:reason, :type=>"ProposalLineItemProgrammaticError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProposalPage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"Proposal", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ProposalTermsAndConditions=>{:fields=>[{:name=>:terms_and_conditions_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:content, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :PublisherQueryLanguageContextError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageContextError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageSyntaxError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageSyntaxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaError=>{:fields=>[{:name=>:reason, :type=>"QuotaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequestApprovalProgressAction=>{:fields=>[{:name=>:approver_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:eligible_approver_user_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:eligible_approver_team_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:comment, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:approval_status, :type=>"WorkflowApprovalRequestStatus", :min_occurs=>0, :max_occurs=>1}], :base=>"ProgressAction"}, :RequestBuyerAcceptance=>{:fields=>[], :base=>"ProposalAction"}, :RequiredCollectionError=>{:fields=>[{:name=>:reason, :type=>"RequiredCollectionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredNumberError=>{:fields=>[{:name=>:reason, :type=>"RequiredNumberError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReserveInventoryProgressAction=>{:fields=>[], :base=>"ProgressAction"}, :ReserveProposals=>{:fields=>[{:name=>:allow_overbook, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"ProposalAction"}, :RetractProposals=>{:fields=>[{:name=>:retraction_details, :type=>"RetractionDetails", :min_occurs=>0, :max_occurs=>1}], :base=>"ProposalAction"}, :RetractionDetails=>{:fields=>[{:name=>:retraction_reason_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:comments, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SalespersonSplit=>{:fields=>[{:name=>:user_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:split, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :AudienceSegmentError=>{:fields=>[{:name=>:reason, :type=>"AudienceSegmentError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SendNotificationProgressAction=>{:fields=>[], :base=>"ProgressAction"}, :ServerError=>{:fields=>[{:name=>:reason, :type=>"ServerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SetValue=>{:fields=>[{:name=>:values, :type=>"Value", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Value"}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :StatementError=>{:fields=>[{:name=>:reason, :type=>"StatementError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :SubmitProposalsForApprovalBypassValidation=>{:fields=>[], :base=>"ProposalAction"}, :SubmitProposalsForApproval=>{:fields=>[], :base=>"ProposalAction"}, :SubmitProposalsForArchival=>{:fields=>[], :base=>"ProposalAction"}, :TeamError=>{:fields=>[{:name=>:reason, :type=>"TeamError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :TerminateNegotiations=>{:fields=>[], :base=>"ProposalAction"}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :TimeZoneError=>{:fields=>[{:name=>:reason, :type=>"TimeZoneError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :TypeError=>{:fields=>[], :base=>"ApiError"}, :UnarchiveProposals=>{:fields=>[], :base=>"ProposalAction"}, :UniqueError=>{:fields=>[], :base=>"ApiError"}, :UpdateOrderWithSellerData=>{:fields=>[], :base=>"ProposalAction"}, :UpdateResult=>{:fields=>[{:name=>:num_changes, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :Value=>{:fields=>[], :abstract=>true}, :WorkflowActionError=>{:fields=>[{:name=>:reason, :type=>"WorkflowActionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProgressAction=>{:fields=>[{:name=>:evaluation_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:evaluation_status, :type=>"EvaluationStatus", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :WorkflowProgress=>{:fields=>[{:name=>:steps, :type=>"ProgressStep", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:submitter_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:evaluation_status, :type=>"EvaluationStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:submission_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:evaluation_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_processing, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :ProgressStep=>{:fields=>[{:name=>:rules, :type=>"ProgressRule", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:evaluation_status, :type=>"EvaluationStatus", :min_occurs=>0, :max_occurs=>1}]}, :ProgressRule=>{:fields=>[{:name=>:actions, :type=>"ProgressAction", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:evaluation_status, :type=>"WorkflowEvaluationStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:evaluation_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_external, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :WorkflowValidationError=>{:fields=>[{:name=>:reason, :type=>"WorkflowValidationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :"ApiVersionError.Reason"=>{:fields=>[]}, :WorkflowApprovalRequestStatus=>{:fields=>[]}, :"AuthenticationError.Reason"=>{:fields=>[]}, :"AvailableBillingError.Reason"=>{:fields=>[]}, :BillingBase=>{:fields=>[]}, :BillingCap=>{:fields=>[]}, :"BillingError.Reason"=>{:fields=>[]}, :BillingSchedule=>{:fields=>[]}, :BillingSource=>{:fields=>[]}, :"CollectionSizeError.Reason"=>{:fields=>[]}, :"CommonError.Reason"=>{:fields=>[]}, :EvaluationStatus=>{:fields=>[]}, :"CustomFieldValueError.Reason"=>{:fields=>[]}, :"DealError.Reason"=>{:fields=>[]}, :"EntityChildrenLimitReachedError.Reason"=>{:fields=>[]}, :"EntityLimitReachedError.Reason"=>{:fields=>[]}, :"ExchangeRateError.Reason"=>{:fields=>[]}, :"FeatureError.Reason"=>{:fields=>[]}, :"ForecastError.Reason"=>{:fields=>[]}, :"InternalApiError.Reason"=>{:fields=>[]}, :"InvalidUrlError.Reason"=>{:fields=>[]}, :"LabelEntityAssociationError.Reason"=>{:fields=>[]}, :"LineItemOperationError.Reason"=>{:fields=>[]}, :ProposalApprovalStatus=>{:fields=>[]}, :NegotiationStatus=>{:fields=>[]}, :"NotNullError.Reason"=>{:fields=>[]}, :"NullError.Reason"=>{:fields=>[]}, :"PackageActionError.Reason"=>{:fields=>[]}, :"PackageError.Reason"=>{:fields=>[]}, :"ParseError.Reason"=>{:fields=>[]}, :"PermissionError.Reason"=>{:fields=>[]}, :"PrecisionError.Reason"=>{:fields=>[]}, :PricingModel=>{:fields=>[]}, :"ProductError.Reason"=>{:fields=>[]}, :"ProposalActionError.Reason"=>{:fields=>[]}, :ProposalCompanyAssociationType=>{:fields=>[]}, :"ProposalError.Reason"=>{:fields=>[]}, :"ProposalLineItemError.Reason"=>{:fields=>[]}, :"ProposalLineItemProgrammaticError.Reason"=>{:fields=>[]}, :ProposalStatus=>{:fields=>[]}, :"PublisherQueryLanguageContextError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageSyntaxError.Reason"=>{:fields=>[]}, :"QuotaError.Reason"=>{:fields=>[]}, :"RangeError.Reason"=>{:fields=>[]}, :"RequiredCollectionError.Reason"=>{:fields=>[]}, :"RequiredError.Reason"=>{:fields=>[]}, :"RequiredNumberError.Reason"=>{:fields=>[]}, :"AudienceSegmentError.Reason"=>{:fields=>[]}, :"ServerError.Reason"=>{:fields=>[]}, :"StatementError.Reason"=>{:fields=>[]}, :"StringLengthError.Reason"=>{:fields=>[]}, :"TeamError.Reason"=>{:fields=>[]}, :"TimeZoneError.Reason"=>{:fields=>[]}, :"WorkflowActionError.Reason"=>{:fields=>[]}, :WorkflowEvaluationStatus=>{:fields=>[]}, :"WorkflowValidationError.Reason"=>{:fields=>[]}}
    PROPOSALSERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return PROPOSALSERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return PROPOSALSERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return PROPOSALSERVICE_NAMESPACES[index]
    end
  end

  # Base class for exceptions.
  class ApplicationException < AdManagerApi::Errors::ApiException
    attr_reader :message  # string
  end

  # Exception class for holding a list of service errors.
  class ApiException < ApplicationException
    attr_reader :errors  # ApiError
    def initialize(exception_fault)
      @array_fields ||= []
      @array_fields << 'errors'
      super(exception_fault, ProposalServiceRegistry)
    end
  end
end; end; end
