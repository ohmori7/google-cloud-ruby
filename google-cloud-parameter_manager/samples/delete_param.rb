# Copyright 2025 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

# [START parametermanager_delete_param]
require "google/cloud/parameter_manager"

##
# Delete a parameter
#
# @param project_id [String] The Google Cloud project (e.g. "my-project")
# @param parameter_id [String] The parameter name (e.g. "my-parameter")
#
def delete_param project_id:, parameter_id:
  # Create a Parameter Manager client.
  client = Google::Cloud::ParameterManager.parameter_manager

  # Build the resource name of the parent project.
  name = client.parameter_path project: project_id, location: "global", parameter: parameter_id

  # Create the parameter version.
  param_version = client.delete_parameter name: name

  # Print the parameter version name.
  puts "Deleted parameter #{name}"
end
# [END parametermanager_delete_param]

if $PROGRAM_NAME == __FILE__
  delete_param(
    project_id: ENV["GOOGLE_CLOUD_PROJECT"] || raise("missing GOOGLE_CLOUD_PROJECT"),
    parameter_id: ARGV.shift
  )
end
