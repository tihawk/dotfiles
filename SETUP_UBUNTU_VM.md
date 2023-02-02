## In case of broken Terminal
If primary user is not in sudoers file:

1. After powering VM, press the Shift key for a few seconds to get the Grub boot menu.
2. Using the Down Arrow, select “Advanced options for Ubuntu” and press Enter.
3. You will be at the interface below, select the kernel with “recovery mode” option as below and press Enter to advance to the “Recovery menu”.
4. Below is the “Recovery menu”, indicating that the root filesystem is mounted as read-only. Move over to the line “root Drop to root shell prompt”, then hit Enter.
5. If a password is required, use the primary user password (weird, I know)
6. `# mount -o rw,remount /`
7. `# adduser username sudo`
8. `# exit`

Then just install Terminator to avoid the broken Terminal.
