#!/usr/bin/env ruby
# Encoding: utf-8
#
# Copyright:: Copyright 2013, Google Inc. All Rights Reserved.
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
# This example downloads a completed report and prints out its contents. To
# download a completed report to a file, run download_report.rb. To run
# a report, run run_delivery_report.rb.

require 'dfp_api'

require 'open-uri'

API_VERSION = :v201611

def display_report()
  # Get DfpApi instance and load configuration from ~/dfp_api.yml.
  dfp = DfpApi::Api.new

  # To enable logging of SOAP requests, set the log_level value to 'DEBUG' in
  # the configuration file or provide your own logger:
  # dfp.logger = Logger.new('dfp_xml.log')

  # Get the ReportService.
  report_service = dfp.service(:ReportService, API_VERSION)

  # Set the ID of the completed report.
  report_job_id = 'INSERT_REPORT_JOB_ID_HERE'.to_i

  # Set the format of the report (e.g. CSV_DUMP) and download without
  # compression so we can print it.
  report_download_options = {
      :export_format => 'CSV_DUMP',
      :use_gzip_compression => false
  }

  # Get the report URL.
  download_url = report_service.get_report_download_url_with_options(
      report_job_id, report_download_options);

  puts "Downloading report from URL %s.\n" % download_url
  puts open(download_url).read()
end

if __FILE__ == $0
  begin
    display_report()

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
