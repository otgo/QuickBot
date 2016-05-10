#!/bin/bash

  sudo screen -X -S keepsession kill

  sudo screen -S keepsession -t screen lua bot.lua

exit
