
rule k231b_4b9e26b9c8800b12
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.8 divinorum/0.9992 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k231b.4b9e26b9c8800b12"
     cluster="k231b.4b9e26b9c8800b12"
     cluster_size="29"
     filetype = ""
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20180910"
     license = "RIL-1.0 [Rick's Internet License]"
     family="faceliker script autolike"
     md5_hashes="['70da61a235160058bbdc3eb0b46dfeec15d07997','f1fa28d2ce6a9298a528d476bfa5d5d5dabbce20','d9f452bb1631062e32ab068c776172653e32ea9b']"
     cluster_members="http://icewater.io/en/cluster/detail?h64=k231b.4b9e26b9c8800b12"

   strings:
      $hex_string = { 2a205374796c653a20274d264d273b205374796c652049443a2036360d0a2a2f0d0a626f64790d0a7b0d0a096261636b67726f756e643a20234537463343343b }

   condition:
      
      filesize > 16384 and filesize < 65536
      and $hex_string
}
