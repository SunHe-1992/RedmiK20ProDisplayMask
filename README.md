# Redmi K20 Pro Display Mask

A small Magisk module for a Redmi K20 Pro whose right edge has a persistent vertical display defect. After Android finishes booting, it sets the logical display to `1020x2340` and disables display scaling so the usable image occupies the left portion of the panel.

## Tested setup

- Redmi K20 Pro (`raphael`)
- Android 14 / HyperOS 1
- Magisk 30.7
- Screen mode: 1080x2340 physical; module uses 1020x2340 logical

The width is based on the owner's measured usable-to-damaged ratio (844:29 out of 873). Other devices or ROMs may need a different width.

## Install

1. In Magisk, choose **Modules → Install from storage**.
2. Select `RedmiK20ProDisplayMask-v1.1.zip`.
3. Reboot to activate the module.

## Remove / recover

Remove the module in Magisk and reboot. To reset the display override immediately from a rooted shell:

```sh
su -c 'wm size reset; wm scaling auto'
```

If the display becomes difficult to use, connect ADB and run the same reset command. The module only applies the two `wm` settings after boot; it does not modify the GPU driver or system partition.

## Files

- `module.prop` — Magisk module metadata
- `service.sh` — applies the display settings after boot
- `RedmiK20ProDisplayMask-v1.0.zip` — installable Magisk module archive
