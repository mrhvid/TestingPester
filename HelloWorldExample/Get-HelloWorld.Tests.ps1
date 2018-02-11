$here = Split-Path -Parent $MyInvocation.MyCommand.Path
$sut = (Split-Path -Leaf $MyInvocation.MyCommand.Path) -replace '\.Tests\.', '.'
. "$here\$sut"

Describe "Get-HelloWorld" {
    It "outputs 'Hello World'" {
        Get-HelloWorld | Should Be 'Hello World'
    }
    It "doesn't output 'WTF'" {
        Get-HelloWorld | Should not be 'WTF'
    }
}

Describe "Get-HelloWorld Germany" {
    It 'outputs "Hello Germany"' {
        Get-HelloWorld -Country Germany | Should be 'Hello Germany'
    }
    It 'Doesn''t output "Hello World"' {
        Get-HelloWorld -Country Germany | Should not be 'Hello World'
    }
}