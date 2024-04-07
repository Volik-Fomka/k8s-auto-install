source "qemu" "almalinux9" {
  iso_url          = "https://repo.almalinux.org/almalinux/9.3/isos/x86_64/AlmaLinux-9.3-x86_64-boot.iso"
  iso_checksum     = "sha256:af5377a1d16bbe599ea91a8761ad645f2f54687075802bdc0c0703ee610182e9"
  output_directory = "/home/volik/Documents/k8s-auto-install/packer/artifacts/qemu/Almalinux9_3"
  accelerator      = "kvm"
  boot_command     = []
  boot_wait        = "40s"
  disk_cache       = "none"
  disk_compression = true
  disk_discard     = "unmap"
  disk_interface   = "virtio"
  disk_size        = "20480M"
  format           = "qcow2"
  headless         = "true"
  http_directory   = "."
  net_device       = "virtio-net"
  qemu_binary      = "/usr/bin/qemu-system-x86_64"
  qemuargs         = [["-m", "4096M"], ["-smp", "4"], ["-cpu", "host"]]
  shutdown_command = "sudo /usr/sbin/shutdown -h now"
  ssh_username     = "packer"
  ssh_password     = "packer"
  ssh_wait_timeout = "30m"
}

build {
  sources = ["source.qemu.almalinux9"]
}
