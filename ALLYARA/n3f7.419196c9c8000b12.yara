
rule n3f7_419196c9c8000b12
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=n3f7.419196c9c8000b12"
     cluster="n3f7.419196c9c8000b12"
     cluster_size="18"
     filetype = "text/html"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171122"
     license = "RIL-1.0 [Rick's Internet License] "
     family="ramnit html script"
     md5_hashes="['1a981ef48c7a7b4903b751f2a2ea630d','20e92e58fabfac482a489c7ad644a223','a20c2cfc1e1d860f3e13d8870ce999ee']"

   strings:
      $hex_string = { 696e672e46696c6553797374656d4f626a65637422290d0a44726f7050617468203d2046534f2e4765745370656369616c466f6c646572283229202620225c22 }

   condition:
      
      filesize > 262144 and filesize < 1048576
      and $hex_string
}
