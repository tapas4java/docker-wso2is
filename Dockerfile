# ------------------------------------------------------------------------
#
# Copyright 2012-2015 Anitech Consulting Services Pvt Ltd. (http://anitechcs.com)
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
# http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License
#
# ------------------------------------------------------------------------

FROM anitech/wso2-base:latest

MAINTAINER  Tapas Jena [tapas.friends@gmail.com]

# Version Configuration
ENV IS_VERSION 5.1.0

WORKDIR "/opt"

# ESB Setup
COPY Packages/wso2is-${IS_VERSION}.zip /opt
RUN unzip /opt/wso2is-${IS_VERSION}.zip 
RUN chmod +x /opt/wso2is-${IS_VERSION}/bin/wso2server.sh

# Exposed Ports
EXPOSE 9443 9763 8243 8280 

# Container Startup Command
CMD ["/opt/wso2is-5.1.0/bin/wso2server.sh"]

