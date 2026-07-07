# cuems-iso

Part of the **CUEMS** ecosystem — see the [`cuems-RELATIONS`](https://github.com/stagesoft/cuems-RELATIONS) repo for the system index, architecture diagram, and protocol/port map.

## Role

Creation of **live-USB ISO images** for system-wide installation on FormitGo machines — the base OS image a fresh CUEMS box is provisioned from.

This ties into a recurring provisioning pain and a planned improvement: maintain **hardware-specific golden base images** (one for the **i3** controllers, one for the **N97** nodes) with each model's peculiarities pre-baked — correct systemd `.link` NIC-naming files + a rebuilt initramfs (the "PCI LAN problem": a shipped `.link` layout that doesn't match a box's PCI slots leaves the cabled NIC off the bond → no DHCP → the box is dark on the LAN until remapped), i915 quirks (Meteor Lake `force_probe`), etc. Then provisioning a box is only **uniqueness + customization** (mint UUID, real MAC, machine-id, SSH host keys; per-unit role/display config) with no per-box hardware fixups. See the cuems-common CLAUDE.md field notes for the hardware quirks, and `cuems_hwdiscovery` for the discovery side.
