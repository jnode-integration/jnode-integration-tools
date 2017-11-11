#!/usr/bin/env roundup

describe "Test update of tracking branch"

it_updates_tracking_branch() {
    cd ../../../target
    update-tracking-branch.sh
}
