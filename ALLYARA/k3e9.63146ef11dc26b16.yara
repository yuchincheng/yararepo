import "hash"

rule k3e9_63146ef11dc26b16
{

   meta:
     copyright="Copyright (c) 2014-2017 Support Intelligence Inc, All Rights Reserved."
     engine="saphire/1.2.2 divinorum/0.99 icewater/0.3.01"
     viz_url="http://icewater.io/en/cluster/query?h64=k3e9.63146ef11dc26b16"
     cluster="k3e9.63146ef11dc26b16"
     cluster_size="86 samples"
     filetype = "pe"
     tlp = "amber"
     version = "icewater foxtail"
     author = "Rick Wesson (@wessorh) rick@support-intelligence.com"
     date = "20170825"
     license = "non-commercial use only"
     family="virut virtob virux"
     md5_hashes="['b927ac6aeeab3c6a674d9dbad4148b1c', 'b5030b841cd701fad87353d1f46682d3', '0c80f2a1c7ef390e0aee2cf332c72697']"


   condition:
      filesize > 16384 and filesize < 65536
      and hash.md5(28672,1024) == "cbe3f2c767bf3f871e1e15b0008153e1"
}

