#!/bin/bash

helm upgrade \
	--install \
	--create-namespace \
	--atomic \
	--wait \
	--namespace staging \
	cssshint \
	./cssshint \
	--set image.repository=calvincs.azurecr.io \
	--dry-run
