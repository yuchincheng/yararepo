
rule m3e9_0b1d6a49c0000b12
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=m3e9.0b1d6a49c0000b12"
     cluster="m3e9.0b1d6a49c0000b12"
     cluster_size="12"
     filetype = "PE32 executable (GUI) Intel 80386"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171120"
     license = "RIL-1.0 [Rick's Internet License] "
     family="dinwod malob trojandropper"
     md5_hashes="['2d1bd930db844e591bdb75788956ad3e','7a19ea3782c3bfbe31ffee261e04ecaa','f9aea7f798d3d7c5f7b81f7d12927a6e']"

   strings:
      $hex_string = { 4b7f6935b30787ad1746778662125164daed1695e0ecc89ade91dfb41df23cf949de2a33c69934f65b1a2338d29845bd96d44ec4c3cbd88ad1d748a35230ee2b }

   condition:
      
      filesize > 65536 and filesize < 262144
      and $hex_string
}
