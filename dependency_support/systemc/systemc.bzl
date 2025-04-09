# Copyright 2020 Google LLC
#
# Licensed under the Apache License, Version 2.0 (the "License");
# you may not use this file except in compliance with the License.
# You may obtain a copy of the License at
#
#      http://www.apache.org/licenses/LICENSE-2.0
#
# Unless required by applicable law or agreed to in writing, software
# distributed under the License is distributed on an "AS IS" BASIS,
# WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
# See the License for the specific language governing permissions and
# limitations under the License.

"""Loads the SystemC library."""

load("@bazel_tools//tools/build_defs/repo:http.bzl", "http_archive")
load("@bazel_tools//tools/build_defs/repo:utils.bzl", "maybe")

def systemc():
    maybe(
        http_archive,
        name = "systemc",
        urls = [
            "https://github.com/accellera-official/systemc/archive/refs/tags/3.0.1.tar.gz",
        ],
        strip_prefix = "systemc-3.0.1",
        sha256 = "d07765d0d2ffd6c01767880d0c6aaf53cd9487975f898c593ffffd713258fcbb",
        build_file = Label("//dependency_support:systemc/systemc.BUILD.bazel"),
    )
