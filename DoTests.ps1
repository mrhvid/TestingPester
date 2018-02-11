$PSVersionTable

if ((Get-Module -ListAvailable Pester) -eq $null) {
    Install-Module -Name Pester -Repository PSGallery -Force
}

Invoke-Pester