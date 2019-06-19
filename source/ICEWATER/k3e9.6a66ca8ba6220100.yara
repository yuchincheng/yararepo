import "hash"

rule k3e9_6a66ca8ba6220100
{

   meta:
     copyright="Copyright (c) 2014-2017 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.2.2 divinorum/0.99 icewater/0.3.01"
     viz_url="http://icewater.io/en/cluster/query?h64=k3e9.6a66ca8ba6220100"
     cluster="k3e9.6a66ca8ba6220100"
     cluster_size="3 samples"
     filetype = "pe"
     tlp = "amber"
     version = "icewater foxtail"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20171009"
     license = "RIL v1.0 see https://raw.githubusercontent.com/SupportIntelligence/Icewater/master/LICENSE"
     family="virut virtob malicious"
     md5_hashes="['57c311ddfe86b60731ed23e9730d0ff6', '57c311ddfe86b60731ed23e9730d0ff6', '89b64082fb872bb3cde4b7368c3bc37d']"


   condition:
      filesize > 16384 and filesize < 65536
      and hash.md5(4096,1024) == "97f75fe12623e289ad4cfba47d792603"
}

