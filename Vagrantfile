Vagrant.configure("2") do |config|
  config.vm.guest = :linux
  config.vm.box = "centos7"

  config.vm.provider :xhyve do |v|
    v.firmware = %q(kexec,centos/vmlinuz,centos/initrd.img,"earlyprintk=serial console=ttyS0 acpi=off")
    v.memory = "1G"
    v.cpus = "2"
    v.lpc = "com1,stdio"
    v.acpi = true
    v.pcis = [
      "2:0,virtio-net",
      "3,ahci-cd,CentOS-7-x86_64-Minimal-1511.iso",
      "0:0,hostbridge",
      "31,lpc",
    ]
  end
end
