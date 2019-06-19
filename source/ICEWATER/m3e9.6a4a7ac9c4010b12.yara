
rule m3e9_6a4a7ac9c4010b12
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=m3e9.6a4a7ac9c4010b12"
     cluster="m3e9.6a4a7ac9c4010b12"
     cluster_size="189"
     filetype = "application/x-dosexec"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171118"
     license = "RIL-1.0 [Rick's Internet License] "
     family="adload nsis trojandownloader"
     md5_hashes="['00f970e2d36a2fe55b00e19ad4d74a1f','06acf1c187556137446ee2fc3d46a87b','1193b1004dad89aaa9b49ffb45b7100b']"

   strings:
      $hex_string = { c07c2b568d7041c1e6055703f18d78018b0685c07410837efcff750a50ff150430001083260083ee204f75e45f5ec3518b4424085355568b981408000057895c }

   condition:
      
      filesize > 1048576 and filesize < 4194304
      and $hex_string
}
