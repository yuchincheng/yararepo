
rule m3ea_29365218d0e30912
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=m3ea.29365218d0e30912"
     cluster="m3ea.29365218d0e30912"
     cluster_size="8"
     filetype = "application/java-archive"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171123"
     license = "RIL-1.0 [Rick's Internet License] "
     family="generickd hiddad androidos"
     md5_hashes="['056e0b8cd9e1e168b77d637dda7a6b1d','4c4741d8ad2ae68370ae30a5b35c20d6','df73ce3c01bcd91147edc165e22d2403']"

   strings:
      $hex_string = { b916236f4d7145e8f85a609967ab77dd43d3531933805e9c7297d624374a5ff7dc0edbaac0c6a789641d965b7ed51a26e136d7a22531927841e2f6c70af0fdb1 }

   condition:
      
      filesize > 65536 and filesize < 262144
      and $hex_string
}
