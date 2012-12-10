# Encoding: utf-8
#
# This is auto-generated code, changes will be overwritten.
#
# Copyright:: Copyright 2012, Google Inc. All Rights Reserved.
# License:: Licensed under the Apache License, Version 2.0.
#
# Code generated by AdsCommon library 0.8.2 on 2012-12-04 15:35:31.

require 'ads_common/savon_service'
require 'dfp_api/v201206/team_service_registry'

module DfpApi; module V201206; module TeamService
  class TeamService < AdsCommon::SavonService
    def initialize(config, endpoint)
      namespace = 'https://www.google.com/apis/ads/publisher/v201206'
      super(config, endpoint, namespace, :v201206)
    end

    def create_team(*args, &block)
      return execute_action('create_team', args, &block)
    end

    def create_teams(*args, &block)
      return execute_action('create_teams', args, &block)
    end

    def get_team(*args, &block)
      return execute_action('get_team', args, &block)
    end

    def get_teams_by_statement(*args, &block)
      return execute_action('get_teams_by_statement', args, &block)
    end

    def update_team(*args, &block)
      return execute_action('update_team', args, &block)
    end

    def update_teams(*args, &block)
      return execute_action('update_teams', args, &block)
    end

    private

    def get_service_registry()
      return TeamServiceRegistry
    end

    def get_module()
      return DfpApi::V201206::TeamService
    end
  end
end; end; end
