#! /bin/bash

export DP_Id="DNSPOD_ID"
export DP_Key="DNSPOD_KEY"

~/.acme.sh/acme.sh --issue --force --dns dns_dp -d aws.dhf.im -d mail.dhf.im -d blog.dhf.im
