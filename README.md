
# Add audio user to audio group and restart the computer
sudo adduser $USER audio

# Start guitarix
PIPEWIRE_LATENCY="512/48000" pw-jack guitarix
# Set IN/OUT in Engine -> Jack Ports

# Start Ardour
PIPEWIRE_LATENCY="512/48000" pw-jack ardour

# Pipewire utility
qpwgraph


# Midi

WARN: start rosegarden, then qsynth

```shell
pw-jack rosegarden
qsynth
```

# Websites

https://www.fr.wikiloops.com/


# AI
https://suno.com/create
https://www.lalal.ai/