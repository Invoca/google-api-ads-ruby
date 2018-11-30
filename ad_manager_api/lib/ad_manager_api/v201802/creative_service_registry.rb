# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2018, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 1.0.1 on 2018-02-07 17:20:43.

require 'ad_manager_api/errors'

module AdManagerApi; module V201802; module CreativeService
  class CreativeServiceRegistry
    CREATIVESERVICE_METHODS = {:create_creatives=>{:input=>[{:name=>:creatives, :type=>"Creative", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"create_creatives_response", :fields=>[{:name=>:rval, :type=>"Creative", :min_occurs=>0, :max_occurs=>:unbounded}]}}, :get_creatives_by_statement=>{:input=>[{:name=>:filter_statement, :type=>"Statement", :min_occurs=>0, :max_occurs=>1}], :output=>{:name=>"get_creatives_by_statement_response", :fields=>[{:name=>:rval, :type=>"CreativePage", :min_occurs=>0, :max_occurs=>1}]}}, :update_creatives=>{:input=>[{:name=>:creatives, :type=>"Creative", :min_occurs=>0, :max_occurs=>:unbounded}], :output=>{:name=>"update_creatives_response", :fields=>[{:name=>:rval, :type=>"Creative", :min_occurs=>0, :max_occurs=>:unbounded}]}}}
    CREATIVESERVICE_TYPES = {:BaseDynamicAllocationCreative=>{:fields=>[], :abstract=>true, :base=>"Creative"}, :BaseCreativeTemplateVariableValue=>{:fields=>[{:name=>:unique_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ObjectValue=>{:fields=>[], :abstract=>true, :base=>"Value"}, :AdExchangeCreative=>{:fields=>[{:name=>:is_native_eligible, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_interstitial, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"HasHtmlSnippetDynamicAllocationCreative"}, :AdMobBackfillCreative=>{:fields=>[{:name=>:additional_parameters, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:publisher_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:locked_orientation, :type=>"LockedOrientation", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseDynamicAllocationCreative"}, :AdSenseCreative=>{:fields=>[], :base=>"HasHtmlSnippetDynamicAllocationCreative"}, :ApiError=>{:fields=>[{:name=>:field_path, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:field_path_elements, :type=>"FieldPathElement", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:trigger, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:error_string, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :ApiException=>{:fields=>[{:name=>:errors, :type=>"ApiError", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"ApplicationException"}, :ApiVersionError=>{:fields=>[{:name=>:reason, :type=>"ApiVersionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ApplicationException=>{:fields=>[{:name=>:message, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :AppliedLabel=>{:fields=>[{:name=>:label_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_negated, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :AspectRatioImageCreative=>{:fields=>[{:name=>:image_assets, :type=>"CreativeAsset", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:alt_text, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:third_party_impression_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:override_size, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"HasDestinationUrlCreative"}, :AssetCreativeTemplateVariableValue=>{:fields=>[{:name=>:asset, :type=>"CreativeAsset", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseCreativeTemplateVariableValue"}, :Asset=>{:fields=>[], :abstract=>true}, :AssetError=>{:fields=>[{:name=>:reason, :type=>"AssetError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :AuthenticationError=>{:fields=>[{:name=>:reason, :type=>"AuthenticationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :BaseCustomFieldValue=>{:fields=>[{:name=>:custom_field_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :abstract=>true}, :BaseFlashCreative=>{:fields=>[{:name=>:override_size, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:click_tag_required, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:ssl_scan_result, :type=>"SslScanResult", :min_occurs=>0, :max_occurs=>1}, {:name=>:ssl_manual_override, :type=>"SslManualOverride", :min_occurs=>0, :max_occurs=>1}, {:name=>:flash_asset, :type=>"CreativeAsset", :min_occurs=>0, :max_occurs=>1}, {:name=>:fallback_image_asset, :type=>"CreativeAsset", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :base=>"HasDestinationUrlCreative"}, :BaseFlashRedirectCreative=>{:fields=>[{:name=>:flash_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:fallback_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:fallback_preview_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ssl_scan_result, :type=>"SslScanResult", :min_occurs=>0, :max_occurs=>1}, {:name=>:ssl_manual_override, :type=>"SslManualOverride", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :base=>"HasDestinationUrlCreative"}, :BaseImageCreative=>{:fields=>[{:name=>:override_size, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:primary_image_asset, :type=>"CreativeAsset", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :base=>"HasDestinationUrlCreative"}, :BaseImageRedirectCreative=>{:fields=>[{:name=>:image_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :base=>"HasDestinationUrlCreative"}, :BaseRichMediaStudioCreative=>{:fields=>[{:name=>:studio_creative_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_format, :type=>"RichMediaStudioCreativeFormat", :min_occurs=>0, :max_occurs=>1}, {:name=>:artwork_type, :type=>"RichMediaStudioCreativeArtworkType", :min_occurs=>0, :max_occurs=>1}, {:name=>:total_file_size, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:ad_tag_keys, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:custom_key_values, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:survey_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:all_impressions_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:rich_media_impressions_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:backup_image_impressions_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:override_css, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:required_flash_plugin_version, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:duration, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:billing_attribute, :type=>"RichMediaStudioCreativeBillingAttribute", :min_occurs=>0, :max_occurs=>1}, {:name=>:rich_media_studio_child_asset_properties, :type=>"RichMediaStudioChildAssetProperty", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ssl_scan_result, :type=>"SslScanResult", :min_occurs=>0, :max_occurs=>1}, {:name=>:ssl_manual_override, :type=>"SslManualOverride", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :base=>"Creative"}, :BaseVideoCreative=>{:fields=>[{:name=>:duration, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:allow_duration_override, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:tracking_urls, :type=>"ConversionEvent_TrackingUrlsMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:companion_creative_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:custom_parameters, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:skippable_ad_type, :type=>"SkippableAdType", :min_occurs=>0, :max_occurs=>1}, {:name=>:vast_preview_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ssl_scan_result, :type=>"SslScanResult", :min_occurs=>0, :max_occurs=>1}, {:name=>:ssl_manual_override, :type=>"SslManualOverride", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :base=>"HasDestinationUrlCreative"}, :BooleanValue=>{:fields=>[{:name=>:value, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :ClickTag=>{:fields=>[{:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:url, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :ClickTrackingCreative=>{:fields=>[{:name=>:click_tracking_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Creative"}, :CollectionSizeError=>{:fields=>[{:name=>:reason, :type=>"CollectionSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CommonError=>{:fields=>[{:name=>:reason, :type=>"CommonError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ConversionEvent_TrackingUrlsMapEntry=>{:fields=>[{:name=>:key, :type=>"ConversionEvent", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"TrackingUrls", :min_occurs=>0, :max_occurs=>1}]}, :CreativeAsset=>{:fields=>[{:name=>:asset_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:asset_byte_array, :type=>"base64Binary", :min_occurs=>0, :max_occurs=>1}, {:name=>:file_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:file_size, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:asset_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:size, :type=>"Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:click_tags, :type=>"ClickTag", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:image_density, :type=>"ImageDensity", :min_occurs=>0, :max_occurs=>1}]}, :CustomCreativeAsset=>{:fields=>[{:name=>:macro_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:asset, :type=>"CreativeAsset", :min_occurs=>0, :max_occurs=>1}]}, :CreativeAssetMacroError=>{:fields=>[{:name=>:reason, :type=>"CreativeAssetMacroError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Creative=>{:fields=>[{:name=>:advertiser_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:size, :type=>"Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:preview_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:policy_violations, :type=>"CreativePolicyViolation", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:applied_labels, :type=>"AppliedLabel", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:last_modified_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:custom_field_values, :type=>"BaseCustomFieldValue", :min_occurs=>0, :max_occurs=>:unbounded}], :abstract=>true}, :CreativeError=>{:fields=>[{:name=>:reason, :type=>"CreativeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CreativePage=>{:fields=>[{:name=>:total_result_set_size, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:start_index, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:results, :type=>"Creative", :min_occurs=>0, :max_occurs=>:unbounded}]}, :CreativeSetError=>{:fields=>[{:name=>:reason, :type=>"CreativeSetError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CreativeTemplateError=>{:fields=>[{:name=>:reason, :type=>"CreativeTemplateError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CreativeTemplateOperationError=>{:fields=>[{:name=>:reason, :type=>"CreativeTemplateOperationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CustomCreative=>{:fields=>[{:name=>:html_snippet, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:custom_creative_assets, :type=>"CustomCreativeAsset", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:is_interstitial, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:locked_orientation, :type=>"LockedOrientation", :min_occurs=>0, :max_occurs=>1}, {:name=>:ssl_scan_result, :type=>"SslScanResult", :min_occurs=>0, :max_occurs=>1}, {:name=>:ssl_manual_override, :type=>"SslManualOverride", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_safe_frame_compatible, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:third_party_impression_tracking_urls, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"HasDestinationUrlCreative"}, :CustomCreativeError=>{:fields=>[{:name=>:reason, :type=>"CustomCreativeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :CustomFieldValue=>{:fields=>[{:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseCustomFieldValue"}, :CustomFieldValueError=>{:fields=>[{:name=>:reason, :type=>"CustomFieldValueError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :Date=>{:fields=>[{:name=>:year, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:month, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:day, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :DateTime=>{:fields=>[{:name=>:date, :type=>"Date", :min_occurs=>0, :max_occurs=>1}, {:name=>:hour, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minute, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:second, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:time_zone_id, :original_name=>"timeZoneID", :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :DateTimeValue=>{:fields=>[{:name=>:value, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DateValue=>{:fields=>[{:name=>:value, :type=>"Date", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :DropDownCustomFieldValue=>{:fields=>[{:name=>:custom_field_option_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseCustomFieldValue"}, :EntityLimitReachedError=>{:fields=>[{:name=>:reason, :type=>"EntityLimitReachedError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FeatureError=>{:fields=>[{:name=>:reason, :type=>"FeatureError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FieldPathElement=>{:fields=>[{:name=>:field, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:index, :type=>"int", :min_occurs=>0, :max_occurs=>1}]}, :FileError=>{:fields=>[{:name=>:reason, :type=>"FileError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :FlashCreative=>{:fields=>[{:name=>:swiffy_asset, :type=>"SwiffyFallbackAsset", :min_occurs=>0, :max_occurs=>1}, {:name=>:create_swiffy_asset, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:locked_orientation, :type=>"LockedOrientation", :min_occurs=>0, :max_occurs=>1}, {:name=>:click_tag_overlay_enabled, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseFlashCreative"}, :FlashOverlayCreative=>{:fields=>[{:name=>:companion_creative_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:tracking_urls, :type=>"ConversionEvent_TrackingUrlsMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:custom_parameters, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_framework, :type=>"ApiFramework", :min_occurs=>0, :max_occurs=>1}, {:name=>:duration, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:vast_preview_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:locked_orientation, :type=>"LockedOrientation", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseFlashCreative"}, :FlashRedirectCreative=>{:fields=>[], :base=>"BaseFlashRedirectCreative"}, :FlashRedirectOverlayCreative=>{:fields=>[{:name=>:companion_creative_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:tracking_urls, :type=>"ConversionEvent_TrackingUrlsMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:custom_parameters, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:api_framework, :type=>"ApiFramework", :min_occurs=>0, :max_occurs=>1}, {:name=>:duration, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:flash_asset_size, :type=>"Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:vast_preview_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseFlashRedirectCreative"}, :HasDestinationUrlCreative=>{:fields=>[{:name=>:destination_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:destination_url_type, :type=>"DestinationUrlType", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :base=>"Creative"}, :HasHtmlSnippetDynamicAllocationCreative=>{:fields=>[{:name=>:code_snippet, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :base=>"BaseDynamicAllocationCreative"}, :Html5Creative=>{:fields=>[{:name=>:override_size, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:third_party_impression_tracking_urls, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:third_party_click_tracking_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:locked_orientation, :type=>"LockedOrientation", :min_occurs=>0, :max_occurs=>1}, {:name=>:ssl_scan_result, :type=>"SslScanResult", :min_occurs=>0, :max_occurs=>1}, {:name=>:ssl_manual_override, :type=>"SslManualOverride", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_safe_frame_compatible, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:html5_asset, :type=>"CreativeAsset", :min_occurs=>0, :max_occurs=>1}], :base=>"Creative"}, :HtmlBundleProcessorError=>{:fields=>[{:name=>:reason, :type=>"HtmlBundleProcessorError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ImageCreative=>{:fields=>[{:name=>:alt_text, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:third_party_impression_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:secondary_image_assets, :type=>"CreativeAsset", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:locked_orientation, :type=>"LockedOrientation", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseImageCreative"}, :ImageError=>{:fields=>[{:name=>:reason, :type=>"ImageError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ImageOverlayCreative=>{:fields=>[{:name=>:companion_creative_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:tracking_urls, :type=>"ConversionEvent_TrackingUrlsMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:locked_orientation, :type=>"LockedOrientation", :min_occurs=>0, :max_occurs=>1}, {:name=>:custom_parameters, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:duration, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:vast_preview_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseImageCreative"}, :ImageRedirectCreative=>{:fields=>[{:name=>:alt_text, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:third_party_impression_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseImageRedirectCreative"}, :ImageRedirectOverlayCreative=>{:fields=>[{:name=>:asset_size, :type=>"Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:duration, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:companion_creative_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:tracking_urls, :type=>"ConversionEvent_TrackingUrlsMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:custom_parameters, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:vast_preview_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseImageRedirectCreative"}, :InternalApiError=>{:fields=>[{:name=>:reason, :type=>"InternalApiError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InternalRedirectCreative=>{:fields=>[{:name=>:locked_orientation, :type=>"LockedOrientation", :min_occurs=>0, :max_occurs=>1}, {:name=>:asset_size, :type=>"Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:internal_redirect_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:override_size, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_interstitial, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:ssl_scan_result, :type=>"SslScanResult", :min_occurs=>0, :max_occurs=>1}, {:name=>:ssl_manual_override, :type=>"SslManualOverride", :min_occurs=>0, :max_occurs=>1}, {:name=>:third_party_impression_tracking_urls, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Creative"}, :InvalidPhoneNumberError=>{:fields=>[{:name=>:reason, :type=>"InvalidPhoneNumberError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :InvalidUrlError=>{:fields=>[{:name=>:reason, :type=>"InvalidUrlError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LabelEntityAssociationError=>{:fields=>[{:name=>:reason, :type=>"LabelEntityAssociationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LegacyDfpCreative=>{:fields=>[], :base=>"Creative"}, :LineItemCreativeAssociationError=>{:fields=>[{:name=>:reason, :type=>"LineItemCreativeAssociationError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :LongCreativeTemplateVariableValue=>{:fields=>[{:name=>:value, :type=>"long", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseCreativeTemplateVariableValue"}, :NotNullError=>{:fields=>[{:name=>:reason, :type=>"NotNullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NullError=>{:fields=>[{:name=>:reason, :type=>"NullError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :NumberValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :ParseError=>{:fields=>[{:name=>:reason, :type=>"ParseError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PermissionError=>{:fields=>[{:name=>:reason, :type=>"PermissionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ProgrammaticCreative=>{:fields=>[{:name=>:is_safe_frame_compatible, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"Creative"}, :PublisherQueryLanguageContextError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageContextError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :PublisherQueryLanguageSyntaxError=>{:fields=>[{:name=>:reason, :type=>"PublisherQueryLanguageSyntaxError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :QuotaError=>{:fields=>[{:name=>:reason, :type=>"QuotaError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RangeError=>{:fields=>[{:name=>:reason, :type=>"RangeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RedirectAsset=>{:fields=>[{:name=>:redirect_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :abstract=>true, :base=>"Asset"}, :RequiredCollectionError=>{:fields=>[{:name=>:reason, :type=>"RequiredCollectionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredError=>{:fields=>[{:name=>:reason, :type=>"RequiredError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredNumberError=>{:fields=>[{:name=>:reason, :type=>"RequiredNumberError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RequiredSizeError=>{:fields=>[{:name=>:reason, :type=>"RequiredSizeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :RichMediaStudioChildAssetProperty=>{:fields=>[{:name=>:name, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:type, :type=>"RichMediaStudioChildAssetProperty.Type", :min_occurs=>0, :max_occurs=>1}, {:name=>:total_file_size, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:width, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:height, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:url, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :RichMediaStudioCreative=>{:fields=>[{:name=>:locked_orientation, :type=>"LockedOrientation", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_interstitial, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseRichMediaStudioCreative"}, :RichMediaStudioCreativeError=>{:fields=>[{:name=>:reason, :type=>"RichMediaStudioCreativeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :ServerError=>{:fields=>[{:name=>:reason, :type=>"ServerError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SetTopBoxCreative=>{:fields=>[{:name=>:external_asset_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:provider_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:availability_region_ids, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:license_window_start_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}, {:name=>:license_window_end_date_time, :type=>"DateTime", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseVideoCreative"}, :SetTopBoxCreativeError=>{:fields=>[{:name=>:reason, :type=>"SetTopBoxCreativeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SetValue=>{:fields=>[{:name=>:values, :type=>"Value", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Value"}, :Size=>{:fields=>[{:name=>:width, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:height, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_aspect_ratio, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}]}, :SoapRequestHeader=>{:fields=>[{:name=>:network_code, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:application_name, :type=>"string", :min_occurs=>0, :max_occurs=>1}]}, :SoapResponseHeader=>{:fields=>[{:name=>:request_id, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:response_time, :type=>"long", :min_occurs=>0, :max_occurs=>1}]}, :Statement=>{:fields=>[{:name=>:query, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:values, :type=>"String_ValueMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}]}, :StatementError=>{:fields=>[{:name=>:reason, :type=>"StatementError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringCreativeTemplateVariableValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseCreativeTemplateVariableValue"}, :StringFormatError=>{:fields=>[{:name=>:reason, :type=>"StringFormatError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :StringLengthError=>{:fields=>[{:name=>:reason, :type=>"StringLengthError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :String_ValueMapEntry=>{:fields=>[{:name=>:key, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:value, :type=>"Value", :min_occurs=>0, :max_occurs=>1}]}, :SwiffyConversionError=>{:fields=>[{:name=>:reason, :type=>"SwiffyConversionError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :SwiffyFallbackAsset=>{:fields=>[{:name=>:asset, :type=>"CreativeAsset", :min_occurs=>0, :max_occurs=>1}, {:name=>:html5_features, :type=>"Html5Feature", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:localized_info_messages, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :TemplateCreative=>{:fields=>[{:name=>:creative_template_id, :type=>"long", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_interstitial, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_native_eligible, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_safe_frame_compatible, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:destination_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:creative_template_variable_values, :type=>"BaseCreativeTemplateVariableValue", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:ssl_scan_result, :type=>"SslScanResult", :min_occurs=>0, :max_occurs=>1}, {:name=>:ssl_manual_override, :type=>"SslManualOverride", :min_occurs=>0, :max_occurs=>1}, {:name=>:locked_orientation, :type=>"LockedOrientation", :min_occurs=>0, :max_occurs=>1}], :base=>"Creative"}, :TemplateInstantiatedCreativeError=>{:fields=>[{:name=>:reason, :type=>"TemplateInstantiatedCreativeError.Reason", :min_occurs=>0, :max_occurs=>1}], :base=>"ApiError"}, :TextValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Value"}, :ThirdPartyCreative=>{:fields=>[{:name=>:snippet, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:expanded_snippet, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ssl_scan_result, :type=>"SslScanResult", :min_occurs=>0, :max_occurs=>1}, {:name=>:ssl_manual_override, :type=>"SslManualOverride", :min_occurs=>0, :max_occurs=>1}, {:name=>:locked_orientation, :type=>"LockedOrientation", :min_occurs=>0, :max_occurs=>1}, {:name=>:is_safe_frame_compatible, :type=>"boolean", :min_occurs=>0, :max_occurs=>1}, {:name=>:third_party_impression_tracking_urls, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}], :base=>"Creative"}, :TrackingUrls=>{:fields=>[{:name=>:urls, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :TypeError=>{:fields=>[], :base=>"ApiError"}, :UniqueError=>{:fields=>[], :base=>"ApiError"}, :UnsupportedCreative=>{:fields=>[{:name=>:unsupported_creative_type, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"Creative"}, :UrlCreativeTemplateVariableValue=>{:fields=>[{:name=>:value, :type=>"string", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseCreativeTemplateVariableValue"}, :Value=>{:fields=>[], :abstract=>true}, :VastRedirectCreative=>{:fields=>[{:name=>:vast_xml_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:vast_redirect_type, :type=>"VastRedirectType", :min_occurs=>0, :max_occurs=>1}, {:name=>:duration, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:companion_creative_ids, :type=>"long", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:tracking_urls, :type=>"ConversionEvent_TrackingUrlsMapEntry", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:vast_preview_url, :type=>"string", :min_occurs=>0, :max_occurs=>1}, {:name=>:ssl_scan_result, :type=>"SslScanResult", :min_occurs=>0, :max_occurs=>1}, {:name=>:ssl_manual_override, :type=>"SslManualOverride", :min_occurs=>0, :max_occurs=>1}], :base=>"Creative"}, :VideoCreative=>{:fields=>[], :base=>"BaseVideoCreative"}, :VideoMetadata=>{:fields=>[{:name=>:scalable_type, :type=>"ScalableType", :min_occurs=>0, :max_occurs=>1}, {:name=>:duration, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:bit_rate, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:minimum_bit_rate, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:maximum_bit_rate, :type=>"int", :min_occurs=>0, :max_occurs=>1}, {:name=>:size, :type=>"Size", :min_occurs=>0, :max_occurs=>1}, {:name=>:mime_type, :type=>"MimeType", :min_occurs=>0, :max_occurs=>1}, {:name=>:delivery_type, :type=>"VideoDeliveryType", :min_occurs=>0, :max_occurs=>1}, {:name=>:codecs, :type=>"string", :min_occurs=>0, :max_occurs=>:unbounded}]}, :VideoRedirectAsset=>{:fields=>[{:name=>:metadata, :type=>"VideoMetadata", :min_occurs=>0, :max_occurs=>1}], :base=>"RedirectAsset"}, :VideoRedirectCreative=>{:fields=>[{:name=>:video_assets, :type=>"VideoRedirectAsset", :min_occurs=>0, :max_occurs=>:unbounded}, {:name=>:mezzanine_file, :type=>"VideoRedirectAsset", :min_occurs=>0, :max_occurs=>1}], :base=>"BaseVideoCreative"}, :ApiFramework=>{:fields=>[]}, :"ApiVersionError.Reason"=>{:fields=>[]}, :"AssetError.Reason"=>{:fields=>[]}, :"AuthenticationError.Reason"=>{:fields=>[]}, :"CollectionSizeError.Reason"=>{:fields=>[]}, :"CommonError.Reason"=>{:fields=>[]}, :ConversionEvent=>{:fields=>[]}, :"CreativeAssetMacroError.Reason"=>{:fields=>[]}, :"CreativeError.Reason"=>{:fields=>[]}, :CreativePolicyViolation=>{:fields=>[]}, :"CreativeSetError.Reason"=>{:fields=>[]}, :"CreativeTemplateError.Reason"=>{:fields=>[]}, :"CreativeTemplateOperationError.Reason"=>{:fields=>[]}, :"CustomCreativeError.Reason"=>{:fields=>[]}, :"CustomFieldValueError.Reason"=>{:fields=>[]}, :DestinationUrlType=>{:fields=>[]}, :"EntityLimitReachedError.Reason"=>{:fields=>[]}, :"FeatureError.Reason"=>{:fields=>[]}, :"FileError.Reason"=>{:fields=>[]}, :Html5Feature=>{:fields=>[]}, :"HtmlBundleProcessorError.Reason"=>{:fields=>[]}, :ImageDensity=>{:fields=>[]}, :"ImageError.Reason"=>{:fields=>[]}, :"InternalApiError.Reason"=>{:fields=>[]}, :"InvalidPhoneNumberError.Reason"=>{:fields=>[]}, :"InvalidUrlError.Reason"=>{:fields=>[]}, :"LabelEntityAssociationError.Reason"=>{:fields=>[]}, :"LineItemCreativeAssociationError.Reason"=>{:fields=>[]}, :LockedOrientation=>{:fields=>[]}, :MimeType=>{:fields=>[]}, :"NotNullError.Reason"=>{:fields=>[]}, :"NullError.Reason"=>{:fields=>[]}, :"ParseError.Reason"=>{:fields=>[]}, :"PermissionError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageContextError.Reason"=>{:fields=>[]}, :"PublisherQueryLanguageSyntaxError.Reason"=>{:fields=>[]}, :"QuotaError.Reason"=>{:fields=>[]}, :"RangeError.Reason"=>{:fields=>[]}, :"RequiredCollectionError.Reason"=>{:fields=>[]}, :"RequiredError.Reason"=>{:fields=>[]}, :"RequiredNumberError.Reason"=>{:fields=>[]}, :"RequiredSizeError.Reason"=>{:fields=>[]}, :"RichMediaStudioChildAssetProperty.Type"=>{:fields=>[]}, :RichMediaStudioCreativeArtworkType=>{:fields=>[]}, :RichMediaStudioCreativeBillingAttribute=>{:fields=>[]}, :"RichMediaStudioCreativeError.Reason"=>{:fields=>[]}, :RichMediaStudioCreativeFormat=>{:fields=>[]}, :ScalableType=>{:fields=>[]}, :"ServerError.Reason"=>{:fields=>[]}, :"SetTopBoxCreativeError.Reason"=>{:fields=>[]}, :SkippableAdType=>{:fields=>[]}, :SslManualOverride=>{:fields=>[]}, :SslScanResult=>{:fields=>[]}, :"StatementError.Reason"=>{:fields=>[]}, :"StringFormatError.Reason"=>{:fields=>[]}, :"StringLengthError.Reason"=>{:fields=>[]}, :"SwiffyConversionError.Reason"=>{:fields=>[]}, :"TemplateInstantiatedCreativeError.Reason"=>{:fields=>[]}, :VastRedirectType=>{:fields=>[]}, :VideoDeliveryType=>{:fields=>[]}}
    CREATIVESERVICE_NAMESPACES = []

    def self.get_method_signature(method_name)
      return CREATIVESERVICE_METHODS[method_name.to_sym]
    end

    def self.get_type_signature(type_name)
      return CREATIVESERVICE_TYPES[type_name.to_sym]
    end

    def self.get_namespace(index)
      return CREATIVESERVICE_NAMESPACES[index]
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
      super(exception_fault, CreativeServiceRegistry)
    end
  end
end; end; end
