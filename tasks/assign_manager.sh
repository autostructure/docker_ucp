#!/bin/sh

# Puppet Task Name: assign_manager
#
docker swarm join --token $PT_join_token $PT_ucp_addr:2377
