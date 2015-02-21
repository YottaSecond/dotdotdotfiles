#!/bin/bash

jack_control eps realtime true
jack_control ds alsa
jack_control dps device hw:USB
jack_control dps capture hw:USB
jack_control dps playback hw:USB
jack_control dps rate 48000
jack_control dps nperiods 3
jack_control dps period 64
jack_control start
