# DISClAIMER

**This involves turning off passcode and touchID/FaceID leaving your iDevice with no security whatsoever, use this on a seperate device and if you're an end-user this is not for YOU! This is for Developers while waiting for an official release by the checkra1n team.Re-enabling passcode without restoring rootfs first will result in a kernel panic or softbrick, BE CAUTIOUS.**


## How to Apply the patches yourself

You can either run the script I wrote (if you don't know how to do it, again this isn't for you)

or apply the patch yourself with bspatch

On linux:

```sh
bspatch checkra1n checkra1n_patched checkra1n_A10_A11_linux.patch
```

On macOS:
```sh
bspatch checkra1n checkra1n_patched checkra1n_A11_A10_mac.patch
```


