DIM SHARED Version AS STRING
DIM SHARED BuildNum AS STRING
DIM SHARED AutoBuildMsg AS STRING
Version$ = "1.1"
'BuildNum format is YYYYMMDD/id, where id is a ever-increasing
'integer. If you make a change, update the date and increase the id!
BuildNum$ = "20170822/63"
AutoBuildMsg$ = CHR$(10) + "From git 26d7c47"