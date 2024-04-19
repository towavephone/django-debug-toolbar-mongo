#!/bin/bash
docker run -it --rm \
  --network=host \
  -v $PWD:/app \
  -v $PWD/debug_toolbar_mongo:/usr/local/lib/python3.8/site-packages/debug_toolbar_mongo \
  debug_toolbar_mongo