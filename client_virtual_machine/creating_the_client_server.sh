#!/bin/sh

qemu-img create -f qcow2 debian_client_vm.qcow2 10G

qemu-system-x86_64 \
  -enable-kvm \
  -cpu host \
  -smp 2 \
  -m 2G \
  -drive file=debian_client_vm.qcow2,format=qcow2 \
  -cdrom ../debian_image.iso \
  -boot d \
  -nic user,model=virtio \
  -display sdl
