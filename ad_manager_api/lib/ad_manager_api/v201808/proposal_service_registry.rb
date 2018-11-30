# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.1 on 2018-08-02 14:04:41.

require 'ad_manager_api/errors'

module AdManagerApi; module V201808; module ProposalService
  class ProposalServiceRegistry
    PROPOSALSERVICE_METHODS = {:create_proposals=>{:input=>[{:name=>:proposals, :type=>"Proposal", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"create_proposals_response", :fields=>[{:name=>:rval, :type=>"Proposal", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_marketplace_comments_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_marketplace_comments_by_statement_response", :fields=>[{:name=>:rval, :type=>"MarketplaceCommentPage", :min_occurs=>0, :max_occurs=>1}]}}, :get_proposals_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_proposals_by_statement_response", :fields=>[{:name=>:rval, :type=>"ProposalPage", :min_occurs=>0, :max_occurs=>1}]}}, :perform_proposal_action=>{:input=>[{:name=>:proposal_action, :type=>"ProposalAction", :min_occurs=>0, :max_occurs=>1}, {:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"perform_proposal_action_response", :fields=>[{:name=>:rval, :type=>"UpdateResult", :min_occurs=>0, :max_occurs=>1}]}}, :update_proposals=>{:input=>[{:name=>:proposals, :type=>"Proposal", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_proposals_response", :fields=>[{:name=>:rval, :type=>"Proposal", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    PROPOSALSERVICE_TYPES = {:ObjectValue=>{:fields=>[], :abstract=>true, :base=>"Value"}, :AdUnitTargeting=>{:fields=>[{:name=>:ad_unit_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:include_descendants, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_path_elements, :type=>"FieldPathElement", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :TechnologyTargeting=>{:fields=>[{:name=>:bandwidth_group_targeting, :type=>"BandwidthGroupTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:browser_targeting, :type=>"BrowserTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:browser_language_targeting, :type=>"BrowserLanguageTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:device_capability_targeting, :type=>"DeviceCapabilityTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:device_category_targeting, :type=>"DeviceCategoryTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:device_manufacturer_targeting, :type=>"DeviceManufacturerTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:mobile_carrier_targeting, :type=>"MobileCarrierTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:mobile_device_targeting, :type=>"MobileDeviceTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:mobile_device_submodel_targeting, :type=>"MobileDeviceSubmodelTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:operating_system_targeting, :type=>"OperatingSystemTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:operating_system_version_targeting, :type=>"OperatingSystemVersionTargeting", :min_occurs=>0, :max_occurs=>1}]}, :ApiVersionError=>{:fields=>[{:name=>:reason, :type=>"ApiVersionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AppliedLabel=>{:fields=>[{:name=>:label_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_negated, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :ArchiveProposals=>{:fields=>[], :base=>"ProposalAction"}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AvailableBillingError=>{:fields=>[{:name=>:reason, :type=>"AvailableBillingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BandwidthGroup=>{:fields=>[], :base=>"Technology"}, :BandwidthGroupTargeting=>{:fields=>[{:name=>:is_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:bandwidth_groups, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :BaseCustomFieldValue=>{:fields=>[{:name=>:custom_field_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :BillingError=>{:fields=>[{:name=>:reason, :type=>"BillingError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :Browser=>{:fields=>[{:name=>:major_version, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:minor_version, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Technology"}, :BrowserLanguage=>{:fields=>[], :base=>"Technology"}, :BrowserLanguageTargeting=>{:fields=>[{:name=>:is_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:browser_languages, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :BrowserTargeting=>{:fields=>[{:name=>:is_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:browsers, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :BuyerRfp=>{:fields=>[{:name=>:cost_per_unit, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:units, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:budget, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:description, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_placeholders, :type=>"CreativePlaceholder", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:targeting, :type=>"Targeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:additional_terms, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_exchange_environment, :type=>"AdExchangeEnvironment", :min_occurs=>0, :max_occurs=>1}, {:name=>:rfp_type, :type=>"RfpType", :min_occurs=>0, :max_occurs=>1}]}, :BypassProposalWorkflowRules=>{:fields=>[], :base=>"ProposalAction"}, :CancelRetractionForProposals=>{:fields=>[], :base=>"ProposalAction"}, :CollectionSizeError=>{:fields=>[{:name=>:reason, :type=>"CollectionSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CommonError=>{:fields=>[{:name=>:reason, :type=>"CommonError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ContentMetadataKeyHierarchyTargeting=>{:fields=>[{:name=>:custom_targeting_value_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ContentTargeting=>{:fields=>[{:name=>:targeted_content_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_content_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:targeted_video_content_bundle_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_video_content_bundle_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:targeted_content_metadata, :type=>"ContentMetadataKeyHierarchyTargeting", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_content_metadata, :type=>"ContentMetadataKeyHierarchyTargeting", :min_occurs=>0, :max_occurs=>:unbounded}]}, :CreativePlaceholder=>{:fields=>[{:name=>:size, :type=>"Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_template_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:companions, :type=>"CreativePlaceholder", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:effective_applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:expected_creative_count, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_size_type, :type=>"CreativeSizeType", :min_occurs=>0, :max_occurs=>1}, {:name=>:targeting_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_amp_only, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :CustomCriteria=>{:fields=>[{:name=>:key_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:value_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:operator, :type=>"CustomCriteria.ComparisonOperator", :min_occurs=>0, :max_occurs=>1}], :base=>"CustomCriteriaLeaf"}, :CustomCriteriaSet=>{:fields=>[{:name=>:logical_operator, :type=>"CustomCriteriaSet.LogicalOperator", :min_occurs=>0, :max_occurs=>1}, {:name=>:children, :type=>"CustomCriteriaNode", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"CustomCriteriaNode"}, :CustomFieldValue=>{:fields=>[{:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseCustomFieldValue"}, :CustomFieldValueError=>{:fields=>[{:name=>:reason, :type=>"CustomFieldValueError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CustomCriteriaLeaf=>{:fields=>[], :abstract=>true, :base=>"CustomCriteriaNode"}, :CustomCriteriaNode=>{:fields=>[], :abstract=>true}, :AudienceSegmentCriteria=>{:fields=>[{:name=>:operator, :type=>"AudienceSegmentCriteria.ComparisonOperator", :min_occurs=>0, :max_occurs=>1}, {:name=>:audience_segment_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"CustomCriteriaLeaf"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :original_name=>"timeZoneID", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DateValue=>{:fields=>[{:name=>:value, :type=>"Date", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DayPart=>{:fields=>[{:name=>:day_of_week, :type=>"DayOfWeek", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_time, :type=>"TimeOfDay", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_time, :type=>"TimeOfDay", :min_occurs=>0, :max_occurs=>1}]}, :DayPartTargeting=>{:fields=>[{:name=>:day_parts, :type=>"DayPart", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:time_zone, :type=>"DeliveryTimeZone", :min_occurs=>0, :max_occurs=>1}]}, :DealError=>{:fields=>[{:name=>:reason, :type=>"DealError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :DeviceCapability=>{:fields=>[], :base=>"Technology"}, :DeviceCapabilityTargeting=>{:fields=>[{:name=>:targeted_device_capabilities, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_device_capabilities, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :DeviceCategory=>{:fields=>[], :base=>"Technology"}, :DeviceCategoryTargeting=>{:fields=>[{:name=>:targeted_device_categories, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_device_categories, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :DeviceManufacturer=>{:fields=>[], :base=>"Technology"}, :DeviceManufacturerTargeting=>{:fields=>[{:name=>:is_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:device_manufacturers, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :DiscardLocalVersionEdits=>{:fields=>[], :base=>"ProposalAction"}, :DropDownCustomFieldValue=>{:fields=>[{:name=>:custom_field_option_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseCustomFieldValue"}, :EditProposalsForNegotiation=>{:fields=>[], :base=>"ProposalAction"}, :EntityChildrenLimitReachedError=>{:fields=>[{:name=>:reason, :type=>"EntityChildrenLimitReachedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :EntityLimitReachedError=>{:fields=>[{:name=>:reason, :type=>"EntityLimitReachedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ExchangeRateError=>{:fields=>[{:name=>:reason, :type=>"ExchangeRateError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FeatureError=>{:fields=>[{:name=>:reason, :type=>"FeatureError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FieldPathElement=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :ForecastError=>{:fields=>[{:name=>:reason, :type=>"ForecastError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :GeoTargeting=>{:fields=>[{:name=>:targeted_locations, :type=>"Location", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_locations, :type=>"Location", :min_occurs=>0, :max_occurs=>:unbounded}]}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InvalidUrlError=>{:fields=>[{:name=>:reason, :type=>"InvalidUrlError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InventoryTargeting=>{:fields=>[{:name=>:targeted_ad_units, :type=>"AdUnitTargeting", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_ad_units, :type=>"AdUnitTargeting", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:targeted_placement_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}]}, :LabelEntityAssociationError=>{:fields=>[{:name=>:reason, :type=>"LabelEntityAssociationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LineItemOperationError=>{:fields=>[{:name=>:reason, :type=>"LineItemOperationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Location=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:canonical_parent_id, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:display_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :MarketplaceComment=>{:fields=>[{:name=>:proposal_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:comment, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:creation_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:created_by_seller, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :MarketplaceCommentPage=>{:fields=>[{:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"MarketplaceComment", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ProposalMarketplaceInfo=>{:fields=>[{:name=>:has_local_version_edits, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:negotiation_status, :type=>"NegotiationStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:marketplace_comment, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_new_version_from_buyer, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:buyer_account_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :MobileApplicationTargeting=>{:fields=>[{:name=>:mobile_application_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:is_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :MobileCarrier=>{:fields=>[], :base=>"Technology"}, :MobileCarrierTargeting=>{:fields=>[{:name=>:is_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:mobile_carriers, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :MobileDevice=>{:fields=>[{:name=>:manufacturer_criterion_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"Technology"}, :MobileDeviceSubmodel=>{:fields=>[{:name=>:mobile_device_criterion_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:device_manufacturer_criterion_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"Technology"}, :MobileDeviceSubmodelTargeting=>{:fields=>[{:name=>:targeted_mobile_device_submodels, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_mobile_device_submodels, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :MobileDeviceTargeting=>{:fields=>[{:name=>:targeted_mobile_devices, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_mobile_devices, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :Money=>{:fields=>[{:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:micro_amount, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :NotNullError=>{:fields=>[{:name=>:reason, :type=>"NotNullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :OfflineError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:reason, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :OperatingSystem=>{:fields=>[], :base=>"Technology"}, :OperatingSystemTargeting=>{:fields=>[{:name=>:is_targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:operating_systems, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :OperatingSystemVersion=>{:fields=>[{:name=>:major_version, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minor_version, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:micro_version, :type=>"int", :min_occurs=>0, :max_occurs=>1}], :base=>"Technology"}, :OperatingSystemVersionTargeting=>{:fields=>[{:name=>:targeted_operating_system_versions, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:excluded_operating_system_versions, :type=>"Technology", :min_occurs=>0, :max_occurs=>:unbounded}]}, :PackageActionError=>{:fields=>[{:name=>:reason, :type=>"PackageActionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PackageError=>{:fields=>[{:name=>:reason, :type=>"PackageError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ParseError=>{:fields=>[{:name=>:reason, :type=>"ParseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PermissionError=>{:fields=>[{:name=>:reason, :type=>"PermissionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PrecisionError=>{:fields=>[{:name=>:reason, :type=>"PrecisionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProductError=>{:fields=>[{:name=>:reason, :type=>"ProductError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProposalAction=>{:fields=>[], :abstract=>true}, :ProposalActionError=>{:fields=>[{:name=>:reason, :type=>"ProposalActionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProposalLink=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:creator_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:description, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:creation_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}]}, :ProposalCompanyAssociation=>{:fields=>[{:name=>:company_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"ProposalCompanyAssociationType", :min_occurs=>0, :max_occurs=>1}, {:name=>:contact_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}]}, :Proposal=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_programmatic, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:dfp_order_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:pricing_model, :type=>"PricingModel", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:end_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:status, :type=>"ProposalStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_archived, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:advertiser, :type=>"ProposalCompanyAssociation", :min_occurs=>0, :max_occurs=>1}, {:name=>:agencies, :type=>"ProposalCompanyAssociation", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:probability_of_close, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:billing_cap, :type=>"BillingCap", :min_occurs=>0, :max_occurs=>1}, {:name=>:billing_schedule, :type=>"BillingSchedule", :min_occurs=>0, :max_occurs=>1}, {:name=>:billing_source, :type=>"BillingSource", :min_occurs=>0, :max_occurs=>1}, {:name=>:billing_base, :type=>"BillingBase", :min_occurs=>0, :max_occurs=>1}, {:name=>:po_number, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:internal_notes, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:budget, :type=>"Money", :min_occurs=>0, :max_occurs=>1}, {:name=>:primary_salesperson, :type=>"SalespersonSplit", :min_occurs=>0, :max_occurs=>1}, {:name=>:secondary_salespeople, :type=>"SalespersonSplit", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:sales_planner_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:primary_trafficker_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:secondary_trafficker_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:seller_contact_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:applied_team_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:custom_field_values, :type=>"BaseCustomFieldValue", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:effective_applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:advertiser_discount, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:proposal_discount, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:currency_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:exchange_rate, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:refresh_exchange_rate, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:agency_commission, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:value_added_tax, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_sold, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:approval_status, :type=>"ProposalApprovalStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:workflow_progress, :type=>"WorkflowProgress", :min_occurs=>0, :max_occurs=>1}, {:name=>:last_modified_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:resources, :type=>"ProposalLink", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:actual_expiry_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:expected_expiry_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:third_party_ad_server_id, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:custom_third_party_ad_server_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:terms_and_conditions, :type=>"ProposalTermsAndConditions", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:last_retraction_details, :type=>"RetractionDetails", :min_occurs=>0, :max_occurs=>1}, {:name=>:marketplace_info, :type=>"ProposalMarketplaceInfo", :min_occurs=>0, :max_occurs=>1}, {:name=>:offline_errors, :type=>"OfflineError", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:has_offline_errors, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:buyer_rfp, :type=>"BuyerRfp", :min_occurs=>0, :max_occurs=>1}, {:name=>:has_buyer_rfp, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :ProposalError=>{:fields=>[{:name=>:reason, :type=>"ProposalError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProposalLineItemError=>{:fields=>[{:name=>:reason, :type=>"ProposalLineItemError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProposalLineItemProgrammaticError=>{:fields=>[{:name=>:reason, :type=>"ProposalLineItemProgrammaticError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProposalPage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"Proposal", :min_occurs=>0, :max_occurs=>:unbounded}]}, :ProposalTermsAndConditions=>{:fields=>[{:name=>:terms_and_conditions_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:content, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :PublisherQueryLanguageContextError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageContextError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageSyntaxError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageSyntaxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaError=>{:fields=>[{:name=>:reason, :type=>"QuotaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequestApprovalProgressAction=>{:fields=>[{:name=>:approver_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:eligible_approver_user_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:eligible_approver_team_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:comment, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:approval_status, :type=>"WorkflowApprovalRequestStatus", :min_occurs=>0, :max_occurs=>1}], :base=>"ProgressAction"}, :RequestBuyerAcceptance=>{:fields=>[], :base=>"ProposalAction"}, :RequestBuyerReview=>{:fields=>[], :base=>"ProposalAction"}, :RequestPlatformTargeting=>{:fields=>[{:name=>:targeted_request_platforms, :type=>"RequestPlatform", :min_occurs=>0, :max_occurs=>:unbounded}]}, :RequiredCollectionError=>{:fields=>[{:name=>:reason, :type=>"RequiredCollectionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredNumberError=>{:fields=>[{:name=>:reason, :type=>"RequiredNumberError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ReserveInventoryProgressAction=>{:fields=>[], :base=>"ProgressAction"}, :ReserveProposals=>{:fields=>[{:name=>:allow_overbook, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"ProposalAction"}, :RetractProposals=>{:fields=>[{:name=>:retraction_details, :type=>"RetractionDetails", :min_occurs=>0, :max_occurs=>1}], :base=>"ProposalAction"}, :RetractionDetails=>{:fields=>[{:name=>:retraction_reason_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:comments, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SalespersonSplit=>{:fields=>[{:name=>:user_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:split, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :AudienceSegmentError=>{:fields=>[{:name=>:reason, :type=>"AudienceSegmentError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SendNotificationProgressAction=>{:fields=>[], :base=>"ProgressAction"}, :ServerError=>{:fields=>[{:name=>:reason, :type=>"ServerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SetValue=>{:fields=>[{:name=>:values, :type=>"Value", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Value"}, :Size=>{:fields=>[{:name=>:width, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:height, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_aspect_ratio, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :StatementError=>{:fields=>[{:name=>:reason, :type=>"StatementError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringFormatError=>{:fields=>[{:name=>:reason, :type=>"StringFormatError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :SubmitProposalsForApprovalBypassValidation=>{:fields=>[], :base=>"ProposalAction"}, :SubmitProposalsForApproval=>{:fields=>[], :base=>"ProposalAction"}, :SubmitProposalsForArchival=>{:fields=>[], :base=>"ProposalAction"}, :Targeting=>{:fields=>[{:name=>:geo_targeting, :type=>"GeoTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:inventory_targeting, :type=>"InventoryTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:day_part_targeting, :type=>"DayPartTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:technology_targeting, :type=>"TechnologyTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:custom_targeting, :type=>"CustomCriteriaSet", :min_occurs=>0, :max_occurs=>1}, {:name=>:user_domain_targeting, :type=>"UserDomainTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:content_targeting, :type=>"ContentTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:video_position_targeting, :type=>"VideoPositionTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:mobile_application_targeting, :type=>"MobileApplicationTargeting", :min_occurs=>0, :max_occurs=>1}, {:name=>:request_platform_targeting, :type=>"RequestPlatformTargeting", :min_occurs=>0, :max_occurs=>1}]}, :TeamError=>{:fields=>[{:name=>:reason, :type=>"TeamError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Technology=>{:fields=>[{:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :TerminateNegotiations=>{:fields=>[], :base=>"ProposalAction"}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :TimeOfDay=>{:fields=>[{:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"MinuteOfHour", :min_occurs=>0, :max_occurs=>1}]}, :TimeZoneError=>{:fields=>[{:name=>:reason, :type=>"TimeZoneError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :TypeError=>{:fields=>[], :base=>"ApiError"}, :UnarchiveProposals=>{:fields=>[], :base=>"ProposalAction"}, :UniqueError=>{:fields=>[], :base=>"ApiError"}, :UpdateOrderWithSellerData=>{:fields=>[], :base=>"ProposalAction"}, :UpdateResult=>{:fields=>[{:name=>:num_changes, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :UserDomainTargeting=>{:fields=>[{:name=>:domains, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:targeted, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :Value=>{:fields=>[], :abstract=>true}, :VideoPosition=>{:fields=>[{:name=>:position_type, :type=>"VideoPosition.Type", :min_occurs=>0, :max_occurs=>1}, {:name=>:midroll_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :VideoPositionTargeting=>{:fields=>[{:name=>:targeted_positions, :type=>"VideoPositionTarget", :min_occurs=>0, :max_occurs=>:unbounded}]}, :VideoPositionWithinPod=>{:fields=>[{:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :VideoPositionTarget=>{:fields=>[{:name=>:video_position, :type=>"VideoPosition", :min_occurs=>0, :max_occurs=>1}, {:name=>:video_bumper_type, :type=>"VideoBumperType", :min_occurs=>0, :max_occurs=>1}, {:name=>:video_position_within_pod, :type=>"VideoPositionWithinPod", :min_occurs=>0, :max_occurs=>1}]}, :WorkflowActionError=>{:fields=>[{:name=>:reason, :type=>"WorkflowActionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProgressAction=>{:fields=>[{:name=>:evaluation_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:evaluation_status, :type=>"EvaluationStatus", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :WorkflowProgress=>{:fields=>[{:name=>:steps, :type=>"ProgressStep", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:submitter_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:evaluation_status, :type=>"EvaluationStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:submission_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:evaluation_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_processing, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :ProgressStep=>{:fields=>[{:name=>:rules, :type=>"ProgressRule", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:evaluation_status, :type=>"EvaluationStatus", :min_occurs=>0, :max_occurs=>1}]}, :ProgressRule=>{:fields=>[{:name=>:actions, :type=>"ProgressAction", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:evaluation_status, :type=>"WorkflowEvaluationStatus", :min_occurs=>0, :max_occurs=>1}, {:name=>:evaluation_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_external, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :WorkflowValidationError=>{:fields=>[{:name=>:reason, :type=>"WorkflowValidationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AdExchangeEnvironment=>{:fields=>[]}, :"ApiVersionError.Reason"=>{:fields=>[]}, :WorkflowApprovalRequestStatus=>{:fields=>[]}, :"AuthenticationError.Reason"=>{:fields=>[]}, :"AvailableBillingError.Reason"=>{:fields=>[]}, :BillingBase=>{:fields=>[]}, :BillingCap=>{:fields=>[]}, :"BillingError.Reason"=>{:fields=>[]}, :BillingSchedule=>{:fields=>[]}, :BillingSource=>{:fields=>[]}, :"CollectionSizeError.Reason"=>{:fields=>[]}, :"CommonError.Reason"=>{:fields=>[]}, :EvaluationStatus=>{:fields=>[]}, :CreativeSizeType=>{:fields=>[]}, :"CustomCriteria.ComparisonOperator"=>{:fields=>[]}, :"CustomCriteriaSet.LogicalOperator"=>{:fields=>[]}, :"CustomFieldValueError.Reason"=>{:fields=>[]}, :"AudienceSegmentCriteria.ComparisonOperator"=>{:fields=>[]}, :DayOfWeek=>{:fields=>[]}, :DeliveryTimeZone=>{:fields=>[]}, :"DealError.Reason"=>{:fields=>[]}, :"EntityChildrenLimitReachedError.Reason"=>{:fields=>[]}, :"EntityLimitReachedError.Reason"=>{:fields=>[]}, :"ExchangeRateError.Reason"=>{:fields=>[]}, :"FeatureError.Reason"=>{:fields=>[]}, :"ForecastError.Reason"=>{:fields=>[]}, :"InternalApiError.Reason"=>{:fields=>[]}, :"InvalidUrlError.Reason"=>{:fields=>[]}, :"LabelEntityAssociationError.Reason"=>{:fields=>[]}, :"LineItemOperationError.Reason"=>{:fields=>[]}, :MinuteOfHour=>{:fields=>[]}, :ProposalApprovalStatus=>{:fields=>[]}, :NegotiationStatus=>{:fields=>[]}, :"NotNullError.Reason"=>{:fields=>[]}, :"NullError.Reason"=>{:fields=>[]}, :"PackageActionError.Reason"=>{:fields=>[]}, :"PackageError.Reason"=>{:fields=>[]}, :"ParseError.Reason"=>{:fields=>[]}, :"PermissionError.Reason"=>{:fields=>[]}, :"PrecisionError.Reason"=>{:fields=>[]}, :PricingModel=>{:fields=>[]}, :"ProductError.Reason"=>{:fields=>[]}, :"ProposalActionError.Reason"=>{:fields=>[]}, :ProposalCompanyAssociationType=>{:fields=>[]}, :"ProposalError.Reason"=>{:fields=>[]}, :"ProposalLineItemError.Reason"=>{:fields=>[]}, :"ProposalLineItemProgrammaticError.Reason"=>{:fields=>[]}, :ProposalStatus=>{:fields=>[]}, :"PublisherQueryLanguageContextError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageSyntaxError.Reason"=>{:fields=>[]}, :"QuotaError.Reason"=>{:fields=>[]}, :"RangeError.Reason"=>{:fields=>[]}, :RequestPlatform=>{:fields=>[]}, :"RequiredCollectionError.Reason"=>{:fields=>[]}, :"RequiredError.Reason"=>{:fields=>[]}, :"RequiredNumberError.Reason"=>{:fields=>[]}, :RfpType=>{:fields=>[]}, :"AudienceSegmentError.Reason"=>{:fields=>[]}, :"ServerError.Reason"=>{:fields=>[]}, :"StatementError.Reason"=>{:fields=>[]}, :"StringFormatError.Reason"=>{:fields=>[]}, :"StringLengthError.Reason"=>{:fields=>[]}, :"TeamError.Reason"=>{:fields=>[]}, :"TimeZoneError.Reason"=>{:fields=>[]}, :VideoBumperType=>{:fields=>[]}, :"VideoPosition.Type"=>{:fields=>[]}, :"WorkflowActionError.Reason"=>{:fields=>[]}, :WorkflowEvaluationStatus=>{:fields=>[]}, :"WorkflowValidationError.Reason"=>{:fields=>[]}}
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
