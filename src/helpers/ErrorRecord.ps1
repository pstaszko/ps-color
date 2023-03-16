# Add-Type -AssemblyName System.ServiceProcess

# function Write-ErrorRecord {
# 	param (
# 		[Parameter(Mandatory = $true, Position = 1)][System.Management.Automation.ErrorRecord] $record
# 	)

# 	Write-HostColor -Value ("{0,-8}" -f $_.Status) -ForegroundColor $color -NoNewline;
# 	Write-HostColor -Value (
# 		" {0,-28} {1,-59}" -f
# 		(Get-StringCharacters $_.Name 28),
# 		(Get-StringCharacters $_.DisplayName 58)
# 	) -ForegroundColor $defaultColor;
# }

# function Write-ServiceHeader {

# 	if (($Global:ColorSettings.Service.Header.Visible -eq $false) -or ($Script:showHeader -eq $false)) {
# 		return;
# 	}

# 	Write-Host;

# 	$textColor = $Global:ColorSettings.Service.Header.TextColor;
# 	$separatorsColor = $Global:ColorSettings.Service.Header.SeparatorsColor;

# 	Write-HostColor -Value "Status   Name                         DisplayName" -ForegroundColor $textColor;
# 	Write-HostColor -Value "------   ----                         -----------" -ForegroundColor $separatorsColor;

# 	$Script:showHeader = $false;
# }

function Write-ErrorRecord {
	param (
		[Parameter(Mandatory = $true, Position = 1)] $err
	)
    $io = $err.InvocationInfo
    Write-HostColor -Value "Custom Report for Error Record" -ForegroundColor "Green" 
    Write-HostColor -Value "CategoryInfo: $($err.CategoryInfo)" -ForegroundColor "yellow" 
    Write-HostColor -Value "FullyQualifiedErrorId: $($err.FullyQualifiedErrorId)" -ForegroundColor "yellow" 
    Write-HostColor -Value "InvocationInfo: $($err.InvocationInfo)" -ForegroundColor "yellow" 
    Write-HostColor -Value "PipelineIterationInfo: $($err.PipelineIterationInfo)" -ForegroundColor "yellow" 
    Write-HostColor -Value "ScriptStackTrace: $($err.ScriptStackTrace)" -ForegroundColor "yellow" 
    Write-HostColor -Value "TargetObject: $($err.TargetObject)" -ForegroundColor "yellow"
    Write-HostColor -Value "ErrorDetails: $($err.ErrorDetails)" -ForegroundColor "yellow" 
    Write-HostColor -Value "InvocationInfo: $($io)" -ForegroundColor "yellow" 
    Write-HostColor -Value "--" -ForegroundColor "green" 
    Write-HostColor -Value "Exception: $($err.Exception.message)" -ForegroundColor "yellow" 
    Write-HostColor -Value "--" -ForegroundColor "green" 
    
    Write-HostColor -Value "MyCommand: $($io.MyCommand)" -ForegroundColor "Green" 
    Write-HostColor -Value "BoundParameters: $($io.BoundParameters)" -ForegroundColor "Green" 
    Write-HostColor -Value "UnboundArguments: $($io.UnboundArguments)" -ForegroundColor "Green" 
    Write-HostColor -Value "ScriptLineNumber: $($io.ScriptLineNumber)" -ForegroundColor "Green" 
    Write-HostColor -Value "OffsetInLine: $($io.OffsetInLine)" -ForegroundColor "Green" 
    Write-HostColor -Value "HistoryId: $($io.HistoryId)" -ForegroundColor "Green" 
    Write-HostColor -Value "ScriptName: $($io.ScriptName)" -ForegroundColor "Green" 
    Write-HostColor -Value "Line: $($io.Line)" -ForegroundColor "Green" 
    Write-HostColor -Value "PositionMessage: $($io.PositionMessage)" -ForegroundColor "Green" 
    Write-HostColor -Value "PSScriptRoot: $($io.PSScriptRoot)" -ForegroundColor "Green" 
    Write-HostColor -Value "PSCommandPath: $($io.PSCommandPath)" -ForegroundColor "Green" 
    Write-HostColor -Value "InvocationName: $($io.InvocationName)" -ForegroundColor "Green" 
    Write-HostColor -Value "PipelineLength: $($io.PipelineLength)" -ForegroundColor "Green" 
    Write-HostColor -Value "PipelinePosition: $($io.PipelinePosition)" -ForegroundColor "Green" 
    Write-HostColor -Value "ExpectingInput: $($io.ExpectingInput)" -ForegroundColor "Green" 
    Write-HostColor -Value "CommandOrigin: $($io.CommandOrigin)" -ForegroundColor "Green" 
    Write-HostColor -Value "DisplayScriptPosition: $($io.DisplayScriptPosition)" -ForegroundColor "Green"
    
    Write-HostColor -Value "End of Custom Report for Error Record" -ForegroundColor "Green" 
}
