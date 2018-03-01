#!/bin/bash
service ssh --full-restart
service mysql start
semaphore -config /opt/data/semaphore/semaphore_config.json &
