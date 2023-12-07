# Set the current date and time
$timestamp = Get-Date -Format "yyyyMMdd_HHmmss"

# Specify the database name
$databaseName = "your databse name"

# Specify the backup path
$backupPath = "C:specify the path here"

# Build the backup file name with emojis and a random quote
$backupFileName = "$backupPath\$databaseName" + "_Backup_$timestamp🚀.bak"

# SQL Server connection information
$serverInstance = "TESLAB\OPTIMUSQLEXPR"
$databaseCredential = ""

# SQL Server backup command
$backupCommand = "BACKUP DATABASE $databaseName TO DISK='$backupFileName'"

# Execute the backup command
Invoke-Sqlcmd -ServerInstance $serverInstance -Database $databaseName -Query $backupCommand
