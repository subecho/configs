function Start-VM($vm_name) {
  $vmware_kvm_path = "C:\Program Files (x86)\VMware\VMware Player\vmware-kvm.exe"
  $vm_path = "C:\Users\$env:USERNAME\OneDrive\Documents\Virtual Machines\$vm_name\$vm_name.vmx"
  & $vmware_kvm_path $vm_path  
}

function Stop-VM($vm_name) {
  $vmware_kvm_path = "C:\Program Files (x86)\VMware\VMware Player\vmware-kvm.exe"
  $vm_path = "C:\Users\$env:USERNAME\OneDrive\Documents\Virtual Machines\$vm_name\$vm_name.vmx"
  & $vmware_kvm_path --power-off $vm_path
}
