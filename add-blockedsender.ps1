<#
.SYNOPSIS

This script assumes you have logged in to Exchange online Powershell.

.DESCRIPTION

Add's a sender's address to the Exchange online block list.

#>

function add-blockedsender {

    [cmdletbinding()]
    Param(
        [parameter(Mandatory = $True)]
        [String]$UserOrDOmain
    )
         if($UserOrDOmain -eq $null){
            Write-Output 'Error, no variable produced'
         }
         Else{
             get-mailbox | set-mailboxJunkEmailConfiguration -BlockedSendersAndDomains "$UserOrDomain"
         }
    }
