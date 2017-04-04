#!/bin/bash

# Licensed to the Apache Software Foundation (ASF) under one
# or more contributor license agreements.  See the NOTICE file
# distributed with this work for additional information
# regarding copyright ownership.  The ASF licenses this file
# to you under the Apache License, Version 2.0 (the
# "License"); you may not use this file except in compliance
# with the License.  You may obtain a copy of the License at
#
#     http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

set -x

cd ${STAGING_DIR}
git init
git config --global user.email "aajisaka@apache.org"
git config --global user.name "Akira Ajisaka"
git add -A
git commit -m "Automatic deploy to Github Pages"

# Avoid logging ${GH_TOKEN}
set +x
git push --quiet --force "https://${GH_TOKEN}@${GH_REF}" master:gh-pages > /dev/null 2>&1
