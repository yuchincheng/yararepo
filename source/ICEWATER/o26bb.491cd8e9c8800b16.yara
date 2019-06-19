
rule o26bb_491cd8e9c8800b16
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.8 divinorum/0.9992 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=o26bb.491cd8e9c8800b16"
     cluster="o26bb.491cd8e9c8800b16"
     cluster_size="401"
     filetype = ""
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20180909"
     license = "RIL-1.0 [Rick's Internet License]"
     family="ursu filetour malicious"
     md5_hashes="['42d30c2801d57422a296b582f9837b0d132f3b73','dd86aa32c5a348fd426ea3877d2fccd8a6237ae8','8809ca2215f5457a63ad4f9a03930a71df58b359']"
     cluster_members="http://icewater.io/en/cluster/detail?h64=o26bb.491cd8e9c8800b16"

   strings:
      $hex_string = { cba98effbf9e8effad9291ffae9589ffb2a9a4feafb3b6f0898a8a9c504f4c130000000045b8466348d21eff409770f02214fcf32c27edff001cfdff2a30e260 }

   condition:
      
      filesize > 1048576 and filesize < 4194304
      and $hex_string
}
