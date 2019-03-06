Add-Type -AssemblyName System.Windows.Forms

$Form = New-Object system.Windows.Forms.Form
$Form.Text = "Form"
$Form.TopMost = $true
$Form.Width = 596
$Form.Height = 488

$toptitle = New-Object system.windows.Forms.Label
$toptitle.Text = "IIS SCHANNEL PATCHER"
$toptitle.AutoSize = $true
$toptitle.Width = 25
$toptitle.Height = 10
$toptitle.location = new-object system.drawing.point(154,14)
$toptitle.Font = "Microsoft Sans Serif,14,style=Bold"
$Form.controls.Add($toptitle)

$toptitle = New-Object system.windows.Forms.Label
$toptitle.Text = "IIS SCHANNEL PATCHER"
$toptitle.AutoSize = $true
$toptitle.Width = 25
$toptitle.Height = 10
$toptitle.location = new-object system.drawing.point(154,14)
$toptitle.Font = "Microsoft Sans Serif,14,style=Bold"
$Form.controls.Add($toptitle)

$rc4title = New-Object system.windows.Forms.Label
$rc4title.Text = "RC4 Ciphers Disabled"
$rc4title.AutoSize = $true
$rc4title.Width = 25
$rc4title.Height = 10
$rc4title.location = new-object system.drawing.point(19,64)
$rc4title.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($rc4title)

$rc4128 = New-Object system.windows.Forms.CheckBox
$rc4128.Text = "RC4 128 "
$rc4128.AutoSize = $true
$rc4128.Width = 95
$rc4128.Height = 20
$rc4128.location = new-object system.drawing.point(21,88)
$rc4128.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($rc4128)

$rc464 = New-Object system.windows.Forms.CheckBox
$rc464.Text = "RC4 64"
$rc464.AutoSize = $true
$rc464.Width = 95
$rc464.Height = 20
$rc464.location = new-object system.drawing.point(21,113)
$rc464.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($rc464)

$rc456 = New-Object system.windows.Forms.CheckBox
$rc456.Text = "RC4 56"
$rc456.AutoSize = $true
$rc456.Width = 95
$rc456.Height = 20
$rc456.location = new-object system.drawing.point(21,139)
$rc456.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($rc456)

$rc440 = New-Object system.windows.Forms.CheckBox
$rc440.Text = "RC4 40"
$rc440.AutoSize = $true
$rc440.Width = 95
$rc440.Height = 20
$rc440.location = new-object system.drawing.point(21,166)
$rc440.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($rc440)

$SSL2title = New-Object system.windows.Forms.Label
$SSL2title.Text = "SSL Versions Disabled"
$SSL2title.AutoSize = $true
$SSL2title.Width = 25
$SSL2title.Height = 10
$SSL2title.location = new-object system.drawing.point(22,201)
$SSL2title.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($SSL2title)

$ssl2 = New-Object system.windows.Forms.CheckBox
$ssl2.Text = "SSL 2.0"
$ssl2.AutoSize = $true
$ssl2.Width = 95
$ssl2.Height = 20
$ssl2.location = new-object system.drawing.point(23,227)
$ssl2.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($ssl2)

$SSL3 = New-Object system.windows.Forms.CheckBox
$SSL3.Text = "SSL 3.0"
$SSL3.AutoSize = $true
$SSL3.Width = 95
$SSL3.Height = 20
$SSL3.location = new-object system.drawing.point(23,255)
$SSL3.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($SSL3)

$DHtitle = New-Object system.windows.Forms.Label
$DHtitle.Text = "Diffie-Hellman Disabled"
$DHtitle.AutoSize = $true
$DHtitle.Width = 25
$DHtitle.Height = 10
$DHtitle.location = new-object system.drawing.point(21,294)
$DHtitle.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($DHtitle)

$DH = New-Object system.windows.Forms.CheckBox
$DH.Text = "Diffie-Hellman Key Exchange"
$DH.AutoSize = $true
$DH.Width = 95
$DH.Height = 20
$DH.location = new-object system.drawing.point(22,319)
$DH.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($DH)

$hashtitle = New-Object system.windows.Forms.Label
$hashtitle.Text = "Hashing Protocols Disabled"
$hashtitle.AutoSize = $true
$hashtitle.Width = 25
$hashtitle.Height = 10
$hashtitle.location = new-object system.drawing.point(275,65)
$hashtitle.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($hashtitle)

$md5 = New-Object system.windows.Forms.CheckBox
$md5.Text = "MD5"
$md5.AutoSize = $true
$md5.Width = 95
$md5.Height = 20
$md5.location = new-object system.drawing.point(278,89)
$md5.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($md5)

$sha1 = New-Object system.windows.Forms.CheckBox
$sha1.Text = "SHA1 (Warning! This may break legacy apps)"
$sha1.AutoSize = $true
$sha1.Width = 95
$sha1.Height = 20
$sha1.location = new-object system.drawing.point(277,114)
$sha1.Font = "Microsoft Sans Serif,10"
$Form.controls.Add($sha1)

$warning1 = New-Object system.windows.Forms.Label
$warning1.Text = "Will Reboot The Server!"
$warning1.AutoSize = $true
$warning1.Width = 25
$warning1.Height = 10
$warning1.location = new-object system.drawing.point(197,363)
$warning1.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($warning1)

$run = New-Object system.windows.Forms.Button
$run.BackColor = "#54fe41"
$run.Text = "Run"
$run.Width = 60
$run.Height = 30
$run.Add_Click({
#RC4 Ciphers

If ($rc4128.Checked -eq $true)
    {
    md "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\RC4 128$([char]0x2215)128"
    New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\RC4 128$([char]0x2215)128" -Name "Enabled" -value "0" -PropertyType DWORD 
    }

If ($rc440.Checked -eq $true)
    {
    md "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\RC4 40$([char]0x2215)128"
    New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\RC4 40$([char]0x2215)128" -Name "Enabled" -value "0" -PropertyType DWORD 
    }
If ($rc456.Checked -eq $true)
    {
    md "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\RC4 56$([char]0x2215)128"
    New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\RC4 56$([char]0x2215)128" -Name "Enabled" -value "0" -PropertyType DWORD
    }
If ($rc464.Checked -eq $true)
    {
    md "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\RC4 64$([char]0x2215)128"
    New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\RC4 64$([char]0x2215)128" -Name "Enabled" -value "0" -PropertyType DWORD  
    }
If ($Null.Checked -eq $true)
    {
    md "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\NULL"
    New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Ciphers\NULL" -Name "Enabled" -value "0" -PropertyType DWORD
    }

#SSL
If ($ssl2.Checked -eq $true)
    {
    md "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Server"
    New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 2.0\Server" -Name "Enabled" -value "0" -PropertyType DWORD
    }

If ($ssl3.Checked -eq $true)
    {
    md "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0"
    md "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Server"
    New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Protocols\SSL 3.0\Server" -Name "Enabled" -value "0" -PropertyType DWORD
    }

#DH
If ($DH.Checked -eq $true)
    {
    md "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\KeyExchangeAlgorithms\Diffie-Hellman"
    New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\KeyExchangeAlgorithms\Diffie-Hellman" -Name "Enabled" -value "0" -PropertyType DWORD
    }

#Hashes
If ($md5.Checked -eq $true)
    {
    md "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Hashes\MD5"
    New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Hashes\MD5" -Name "Enabled" -value "0" -PropertyType DWORD
    }
If ($sha1.Checked -eq $true)
{
md "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Hashes\SHA"
New-ItemProperty -Path "HKLM:\SYSTEM\CurrentControlSet\Control\SecurityProviders\SCHANNEL\Hashes\SHA" -Name "Enabled" -value "0" -PropertyType DWORD
}

shutdown -r

})
$run.location = new-object system.drawing.point(237,389)
$run.Font = "Microsoft Sans Serif,10,style=Bold"
$Form.controls.Add($run)

[void]$Form.ShowDialog()
$Form.Dispose()
