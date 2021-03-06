
rule j3f8_7514d6a348000330
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=j3f8.7514d6a348000330"
     cluster="j3f8.7514d6a348000330"
     cluster_size="61"
     filetype = "Dalvik dex file version 035"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171118"
     license = "RIL-1.0 [Rick's Internet License] "
     family="shedun androidos piom"
     md5_hashes="['097662d28f9a78893e0b929105151891','0d188721e4e9c5c8882910632aa67eaa','37646ce7abdd5cc1f07fd7d60b0d04fb']"

   strings:
      $hex_string = { 696f2f496e70757453747265616d3b00164c6a6176612f696f2f4f757470757453747265616d3b00134c6a6176612f6c616e672f426f6f6c65616e3b00104c6a }

   condition:
      
      filesize > 4096 and filesize < 16384
      and $hex_string
}
