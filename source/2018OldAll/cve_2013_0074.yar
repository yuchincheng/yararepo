rule cve_2013_0074
{
meta:
	author = "Kaspersky Lab"
	filetype = "Win32 EXE"
	date = "2015-07-23"
	version = "1.0"

strings:
	$b2="Can't find Payload() address" ascii wide
	$b3="/SilverApp1;component/App.xaml" ascii wide
	$b4="Can't allocate ums after buf[]" ascii wide
	$b5="------------ START ------------"

condition:
	( (2 of ($b*)) )
}