
rule o26d7_6919390140000110
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.8 divinorum/0.9992 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=o26d7.6919390140000110"
     cluster="o26d7.6919390140000110"
     cluster_size="4511"
     filetype = ""
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20180909"
     license = "RIL-1.0 [Rick's Internet License]"
     family="zusy malicious adposhel"
     md5_hashes="['5723dc12e8bcc27536686db6843aa2a94b71fdd3','63bd37e023f361116920565bd1677b81adf1064b','fca0bb534bca1592b13df679789a20c2c5d1699d']"
     cluster_members="http://icewater.io/en/cluster/detail?h64=o26d7.6919390140000110"

   strings:
      $hex_string = { 7665506f70757000001d01476574437572736f72009400446566446c6750726f63410022024f656d546f4368617242756666410000fb00466c61736857696e64 }

   condition:
      
      filesize > 1048576 and filesize < 4194304
      and $hex_string
}
