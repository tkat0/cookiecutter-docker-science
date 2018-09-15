#!/bin/bash

useradd docker -u $UID -s /bin/bash -m
exec gosu docker /bin/bash

