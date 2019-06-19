
rule k3e9_1ad0c45c5e6748ba
{

   meta:
     copyright="Copyright (c) 2014-2018 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.3.1 divinorum/0.998 icewater/0.4"
     viz_url="http://icewater.io/en/cluster/query?h64=k3e9.1ad0c45c5e6748ba"
     cluster="k3e9.1ad0c45c5e6748ba"
     cluster_size="4"
     filetype = "PE32 executable (GUI) Intel 80386"
     tlp = "amber"
     version = "icewater snowflake"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171121"
     license = "RIL-1.0 [Rick's Internet License] "
     family="tinba zusy backdoor"
     md5_hashes="['1a5de8341f03a034e0dbe0ed837034fc','4349e00a4202f37df49784188bee791f','bf378cc078d347f8603926f492424235']"

   strings:
      $hex_string = { cce5f1718e1ebc3c9373e936112a2f507434a625379610d166a51a91edb2d9281400ba6a69b75aa19fbf977f9d40acd0f2ef2ebd6182ea39eb70037230463188 }

   condition:
      
      filesize > 16384 and filesize < 65536
      and $hex_string
}
