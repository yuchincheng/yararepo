
rule k2318_3313d2cbc6220b12
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.8 divinorum/0.9992 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k2318.3313d2cbc6220b12"
     cluster="k2318.3313d2cbc6220b12"
     cluster_size="55"
     filetype = ""
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20180910"
     license = "RIL-1.0 [Rick's Internet License]"
     family="iframe html redir"
     md5_hashes="['c40f9fca2d3597f7c308bd94051d8650b84e10a7','52d0684e3716c2d64a2b444996878d193a5bdce8','c92be0d956423fb51fca48e380e821b8838651d6']"
     cluster_members="http://icewater.io/en/cluster/detail?h64=k2318.3313d2cbc6220b12"

   strings:
      $hex_string = { 697a653d223122207374796c653d2277696474683a2031303025223e3c6f7074696f6e2076616c75653d22222053454c45435445443ec2fbe1e5f0e8f2e53c2f }

   condition:
      
      filesize > 16384 and filesize < 65536
      and $hex_string
}
