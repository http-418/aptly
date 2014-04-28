#
# Cookbook Name:: aptly
# Provider:: db
#
# Copyright 2014, Heavy Water Operations, LLC
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
#

use_inline_resources if defined?(use_inline_resources)

def whyrun_supported?
  true
end

action :cleanup do
  execute "DB Cleanup" do
    command "aptly db cleanup"
    user node['aptly']['user']
    user node['aptly']['group']
  end
end

action :recover do
  execute "DB Recover" do
    command "aptly db recover"
    user node['aptly']['user']
    user node['aptly']['group']
  end
end
