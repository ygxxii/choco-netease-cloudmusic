
$ErrorActionPreference = 'Stop';


$packageName= 'netease-cloudmusic'
$toolsDir   = "$(Split-Path -parent $MyInvocation.MyCommand.Definition)"
$url        = 'http://s1.music.126.net/download/pc/cloudmusicsetup_2_1_0[145894].exe'

$packageArgs = @{
  packageName   = $packageName
  unzipLocation = $toolsDir
  fileType      = 'exe'
  url           = $url

  silentArgs   = '/S'
  validExitCodes= @(0)

  softwareName  = '网易云音乐*'
  checksum      = '2e4b619fe37a77b5ca57bf74660bd6f9'
  checksumType  = 'md5'
}

Install-ChocolateyPackage @packageArgs


















