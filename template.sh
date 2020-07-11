#!/usr/bin/env bash
#
# TODO: Write a brief description of what your script does.

set -euo pipefail

# Logging utilities
function log::_timestamp() { date +'%Y-%m-%dT%H:%M:%S%z'; }
function log::info() { echo "$(log::_timestamp) [INFO] $*" >&2; }
function log::warn() { echo "$(log::_timestamp) [WARN] $*" >&2; }
function log::error() { echo "$(log::_timestamp) [ERROR] $*" >&2; }

# Main entry point for your script
# TODO: Replace the content of this function with your custom logic.
function main() {
  log::info "Start of my script"

  log::info "End of my script"
}
main "$@"
