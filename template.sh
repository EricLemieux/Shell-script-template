#!/usr/bin/env bash
#
# TODO: Write a brief description of what your script does.

set -euo pipefail
test "${DEBUG:-0}" = "1" && set -x

# Logging utilities
function log::_timestamp() { date +'%Y-%m-%dT%H:%M:%S%z'; }
function log::info() { echo "$(log::_timestamp) [INFO] $*" >&2; }
function log::warn() { echo "$(log::_timestamp) [WARN] $*" >&2; }
function log::error() { echo "$(log::_timestamp) [ERROR] $*" >&2; }

# Display help information about your script, can include description of what the script does, what arguments it
# accepts, any requirements, etc.
# Remove if you have no need for a help message.
function help() {
    echo "Some helpful information about how to use your script"
    exit 0
}

# Parse arguments passed to your script in order to offer more functionality.
# Remove if you have no need for arguments.
function parse_args() {
    while [ "$#" -gt 0 ]; do
      case "$1" in
        -h | --help) help ;;
        *) ;;
      esac
      shift
    done
}

# Main entry point for your script
# TODO: Replace the content of this function with your custom logic.
function main() {
  parse_args "$@"

  log::info "Some information"
  log::warn "Something bad happened"
  log::error "Uh oh, something broke"
}
main "$@"
