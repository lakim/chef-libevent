#
# Author:: Louis-Alban KIM
# Copyright:: Copyright (c) 2012, Louis-Alban KIM
# License:: Apache License, Version 2.0
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#    http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#

default['libevent']['version']  = "2.0.19-stable"
default['libevent']['dir']      = "libevent-#{default['libevent']['version']}"
default['libevent']['tar']      = "#{default['libevent']['dir']}.tar.gz"
default['libevent']['url']      = "https://github.com/downloads/libevent/libevent/#{default['libevent']['tar']}"
default['libevent']['checksum'] = "1591fb411a67876a514a33df54b85417b31e01800284bcc6894fc410c3eaea21"
