#### Build Credential Object
$password = ConvertTo-SecureString 'test' -AsPlainText -Force
$credential = New-Object System.Management.Automation.PSCredential ('vincboys@gmail.com', $password)

### Build Email
$From = "vincboys@gmail.com"
$To = "chris@saenz.ca"
$Subject = "Test Message"
$Body = "
Hello $From
THis is an email
from me?
-goodbye

"
$SMTPServer = "smtp.gmail.com"
$SMTPPort = "587"

# Send Email
Send-MailMessage -From $From -to $To -Subject $Subject -Body $Body -SmtpServer $SMTPServer -port $SMTPPort -UseSsl -Credential $credential