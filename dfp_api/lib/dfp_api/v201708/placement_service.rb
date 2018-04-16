# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2017, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.14.1 on 2017-08-04 16:04:42.

require 'ads_common/savon_service'
require 'dfp_api/v201708/placement_service_registry'

module DfpApi; module V201708; module PlacementService
  class PlacementService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201708'
      super(config, endpoint, namespace, :v201708)
    end

    def create_placements(*args, &block)
      return execute_action('create_placements', args, &block)
    end

    def create_placements_to_xml(*args)
      return get_soap_xml('create_placements', args)
    end

    def get_placements_by_statement(*args, &block)
      return execute_action('get_placements_by_statement', args, &block)
    end

    def get_placements_by_statement_to_xml(*args)
      return get_soap_xml('get_placements_by_statement', args)
    end

    def perform_placement_action(*args, &block)
      return execute_action('perform_placement_action', args, &block)
    end

    def perform_placement_action_to_xml(*args)
      return get_soap_xml('perform_placement_action', args)
    end

    def update_placements(*args, &block)
      return execute_action('update_placements', args, &block)
    end

    def update_placements_to_xml(*args)
      return get_soap_xml('update_placements', args)
    end

    private

    def get_service_registry()
      return PlacementServiceRegistry
    end

    def get_module()
      return DfpApi::V201708::PlacementService
    end
  end
end; end; end
