#!/bin/bash

$HOME/src/github.com/fjammes/guitarixcontainer/guitarix.sh &
pw-jack sooperlooper &

#!/bin/bash

# Focusrite Scarlett 2i2 Port Aliases
INPUT_R="alsa_input.usb-Focusrite_Scarlett_2i2_USB_Y814JK8264026F-00.analog-stereo:capture_FR"
OUTPUT_L="alsa_output.usb-Focusrite_Scarlett_2i2_USB_Y814JK8264026F-00.analog-stereo:playback_FL"
OUTPUT_R="alsa_output.usb-Focusrite_Scarlett_2i2_USB_Y814JK8264026F-00.analog-stereo:playback_FR"

# Guitarix ports
GX_AMP_IN="gx_head_amp:in_0"
GX_AMP_OUT="gx_head_amp:out_0"
GX_FX_IN="gx_head_fx:in_0"
GX_FX_OUT="gx_head_fx:out_0"

# SooperLooper ports
SL_IN_L="sooperlooper:common_in_1"
SL_IN_R="sooperlooper:common_in_2"
SL_OUT_L="sooperlooper:common_out_1"
SL_OUT_R="sooperlooper:common_out_2"

echo "🔌 Connecting Scarlett input → Guitarix Amp"
pw-link "$INPUT_R" "$GX_AMP_IN"

echo "🔌 Connecting Guitarix Amp → Guitarix FX"
pw-link "$GX_AMP_OUT" "$GX_FX_IN"

echo "🔌 Connecting Guitarix FX → SooperLooper (L+R mono)"
pw-link "$GX_FX_OUT" "$SL_IN_L"
pw-link "$GX_FX_OUT" "$SL_IN_R"

echo "🔊 Connecting SooperLooper output → Scarlett output"
pw-link "$SL_OUT_L" "$OUTPUT_L"
pw-link "$SL_OUT_R" "$OUTPUT_R"

echo "🔌 Connecting Guitarix FX → Scarlett output"
pw-link "$GX_FX_OUT" "$OUTPUT_L"
pw-link "$GX_FX_OUT" "$OUTPUT_R"

# MC8 to SooperLooper via Midi-Bridge
pw-link "Midi-Bridge:Morningstar MC8 0:(capture_0) Morningstar MC8 MIDI 1" \
        "Midi-Bridge:sooperlooper:(playback_0) sooperlooper"

echo "✅ MC8 MIDI connected to SooperLooper via Midi-Bridge"

echo "✅ Routing complete."