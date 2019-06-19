
rule k2318_37534a66cbeb0b12
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.8 divinorum/0.9992 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k2318.37534a66cbeb0b12"
     cluster="k2318.37534a66cbeb0b12"
     cluster_size="54"
     filetype = ""
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20180910"
     license = "RIL-1.0 [Rick's Internet License]"
     family="iframe html redir"
     md5_hashes="['0fbdc9bf56d3301aa8f09ef72050db74f314def3','a33dcc07b538e350178e0e4168d5815f19586126','c0dbd75b6709526ecc3dc5d82c01e3a457cb6e62']"
     cluster_members="http://icewater.io/en/cluster/detail?h64=k2318.37534a66cbeb0b12"

   strings:
      $hex_string = { 697a653d223122207374796c653d2277696474683a2031303025223e3c6f7074696f6e2076616c75653d22222053454c45435445443ec2fbe1e5f0e8f2e53c2f }

   condition:
      
      filesize > 16384 and filesize < 65536
      and $hex_string
}
