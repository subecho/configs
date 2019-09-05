# How do I Create the Profile for PowerShell?
Run this in your PowerShell interpreter:
```powershell
if (!(Test-Path -Path $profile)) {
  New-Item -ItemType File -Path $profile -Force
}
```

You can then use the `$profile` variable to get the path to that file so that
it can be modified.
