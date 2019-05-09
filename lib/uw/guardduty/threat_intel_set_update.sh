aws_guardduty_activate() {
        local detector_id="$1"
        local threat_intel_set_id="$2"
        shift 2

    cond_log_and_run aws guardduty update-threat-intel-set --detector-id $detector_id --threat-intel-set-id $threat_intel_set_id --activate "$@"
}

