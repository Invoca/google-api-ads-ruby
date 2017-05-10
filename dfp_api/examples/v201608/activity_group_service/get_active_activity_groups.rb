#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2016, Google Inc. All Rights Reserved.
#
# License:: Licensed under the Apache License, Version 2.0 (the "License");
#           you may not use this file except in compliance with the License.
#           You may obtain a copy of the License at
#
#           http://www.apache.org/licenses/LICENSE-2.0
#
#           Unless required by applicable law or agreed to in writing, software
#           distributed under the License is distributed on an "AS IS" BASIS,
#           WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
#           implied.
#           See the License for the specific language governing permissions and
#           limitations under the License.
#
# This example gets all active activity groups.
require 'dfp_api'

class GetActiveActivityGroups

  def self.run_example(dfp)
    activity_group_service =
        dfp.service(:ActivityGroupService, :v201608)

    # Create a statement to select activity groups.
    query = 'WHERE status = :status'
    values = [
      {
        :key => 'status',
        :value => {
          :xsi_type => 'TextValue',
          :value => 'ACTIVE'
        }
      },
    ]
    statement = DfpApi::FilterStatement.new(query, values)

    # Retrieve a small amount of activity groups at a time, paging
    # through until all activity groups have been retrieved.
    total_result_set_size = 0;
    begin
      page = activity_group_service.get_activity_groups_by_statement(
          statement.toStatement())

      # Print out some information for each activity group.
      if page[:results]
        total_result_set_size = page[:total_result_set_size]
        page[:results].each_with_index do |activity_group, index|
          puts "%d) Activity group with ID %d and name '%s' was found." % [
              index + statement.offset,
              activity_group[:id],
              activity_group[:name]
          ]
        end
      end
      statement.offset += DfpApi::SUGGESTED_PAGE_LIMIT
    end while statement.offset < page[:total_result_set_size]

    puts 'Total number of activity groups: %d' %
        total_result_set_size
  end

  def self.main()
    # Get DfpApi instance and load configuration from ~/dfp_api.yml.
    dfp = DfpApi::Api.new

    # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
    # the configuration file or provide your own logger:
    # dfp.logger = Logger.new('dfp_xml.log')

    begin
      run_example(dfp)

    # HTTP errors.
    rescue AdsCommon::Errors::HttpError => e
      puts "HTTP Error: %s" % e

    # API errors.
    rescue DfpApi::Errors::ApiException => e
      puts "Message: %s" % e.message
      puts 'Errors:'
      e.errors.each_with_index do |error, index|
        puts "\tError [%d]:" % (index + 1)
        error.each do |field, value|
          puts "\t\t%s: %s" % [field, value]
        end
      end
    end
  end
end

if __FILE__ == $0
  GetActiveActivityGroups.main()
end
