<# This form was created to cal the various OED Reports
.NAME
    OED ACAS Parser Application
.PROGRAMMER
    Laban Seay = 2019-March
.CODE BASE
    Powershell Version 5.x
#>


Function Generate-Form{
Add-Type -AssemblyName System.Windows.Forms
[System.Windows.Forms.Application]::EnableVisualStyles()

$OEDACAS                         = New-Object system.Windows.Forms.Form
$OEDACAS.ClientSize              = '400,500'
$OEDACAS.text                    = "OED ACAS FOUO"
$OEDACAS.TopMost = $false
#$OEDACAS.Resize                  = $false

$BTNScanStat                     = New-Object system.Windows.Forms.Button
$BTNScanStat.BackColor           = "#f5f50a"
$BTNScanStat.text                = "Scanner-Statistic Parser"
$BTNScanStat.width               = 307.3599853515625
$BTNScanStat.height              = 83.69000244140625
$BTNScanStat.location            = New-Object System.Drawing.Point(47,29)
$BTNScanStat.Font                = 'Microsoft Sans Serif,16'

$Button1                         = New-Object system.Windows.Forms.Button
$Button1.BackColor               = "#f5f50a"
$Button1.text                    = "Debug-Ave Parser"
$Button1.width                   = 307.3599853515625
$Button1.height                  = 83.69000244140625
$Button1.location                = New-Object System.Drawing.Point(49,133)
$Button1.Font                    = 'Microsoft Sans Serif,16'

$Button2                         = New-Object system.Windows.Forms.Button
$Button2.BackColor               = "#f5f50a"
$Button2.text                    = "Scanner-Info Parser"
$Button2.width                   = 307.3599853515625
$Button2.height                  = 83.69000244140625
$Button2.location                = New-Object System.Drawing.Point(47,234)
$Button2.Font                    = 'Microsoft Sans Serif,16'

$Button3                         = New-Object system.Windows.Forms.Button
$Button3.BackColor               = "#f5f50a"
$Button3.text                    = "Exit Parser"
$Button3.width                   = 307.3599853515625
$Button3.height                  = 83.69000244140625
$Button3.location                = New-Object System.Drawing.Point(47,341)
$Button3.Font                    = 'Microsoft Sans Serif,16'

$OEDACAS.controls.AddRange(@($BTNScanStat,$Button1,$Button2,$Button3))

Function Button_Click01{

[System.Windows.Forms.MessageBox]::Show("Hello World." , "My Dialog Box")

 }

Function Button_Click02{
$oReturn=[System.Windows.Forms.MessageBox]::Show("Message Text","Title",[System.Windows.Forms.MessageBoxButtons]::OKCancel)	
        switch ($oReturn){
            "OK" {
                write-host "You pressed OK"
                # Enter some code
            } 
            "Cancel" {
                write-host "You pressed Cancel"
                # Enter some code
            } 
        }
 }


# Buttons with Click Event:
$BTNScanStat.Add_Click({Button_Click01})
$Button1.Add_Click({Button_Click02})
$Button2.Add_Click({Button_Click02})
$Button3.Add_Click({$OEDACAS.Close()})




$OEDACAS.ShowDialog() | Out-Null
} # End the Form

#Call the Form
Generate-Form

