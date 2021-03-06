#
# Cookbook Name:: hipsnip-jetty
# Recipe:: default
#
# Copyright 2012-2013, HipSnip Limited
#
# Licensed under the Apache License, Version 2.0 (the 'License');
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an 'AS IS' BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.
#
default['jetty']['user'] = 'jetty'
default['jetty']['group'] = 'jetty'
default['jetty']['home'] = '/usr/share/jetty'
default['jetty']['base'] = '/usr/share/jetty'
default['jetty']['port'] = 8080
# The default arguments to pass to jetty.
default['jetty']['args'] = []
default['jetty']['logs'] = "#{default['jetty']['home']}/logs"
# Extra options to pass to the JVM
default['jetty']['java_options'] = []

# set of paths of jetty configuration files relative to jetty home directory.
# e.g: ['etc/jetty-webapps.xml', 'etc/jetty-http.xml']
default['jetty']['add_confs'] = []

default['jetty']['version'] = '9.2.1.v20140609'
default['jetty']['link'] = 'http://eclipse.org/downloads/download.php?file=/jetty/9.2.1.v20140609/dist/jetty-distribution-9.2.1.v20140609.tar.gz&r=1'
default['jetty']['checksum'] = '1d784f556ae998ea6e48547e4db079367df87ab0'

default['jetty']['directory'] = '/usr/local/src'

# SEVERE ERROR (highest value) WARNING INFO CONFIG FINE FINER FINEST (lowest value)
default['jetty']['log']['level']  = 'INFO'
default['jetty']['log']['class'] = 'org.eclipse.jetty.util.log.StdErrLog'

# if true, it will use the utility logger to log messages into syslog
default['jetty']['syslog']['enable'] = false
# format expected "facility.level", pass the value to the logger utility into the option "--priority"
default['jetty']['syslog']['priority'] = ''
# pass the value to the logger utility into the option "--tag"
default['jetty']['syslog']['tag'] = ''

default['jetty']['start_ini']['custom'] = false
default['jetty']['start_ini']['content'] = []
