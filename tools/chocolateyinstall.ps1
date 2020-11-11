$ErrorActionPreference = 'Stop'
$url        = 'https://d1.music.126.net/dmusic/cloudmusicsetup2.7.4.198374.exe'

$packageArgs = @{
  packageName    = $env:ChocolateyPackageName
  fileType       = 'exe'
  url            = $url
  softwareName   = 'cloudmusicsetup*'
  checksum       = '6d337d40f88ff63eefa20de8f895d8ac99b25092176df4f19782911488fbef71'
  checksumType   = 'sha256'
  silentArgs     = '/S'
  validExitCodes = @(0)
}

Install-ChocolateyPackage @packageArgs