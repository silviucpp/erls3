-define(FORMAT(Str, Args), lists:flatten(io_lib:format(Str, Args))).
-record( aws_credentials, {accessKeyId, secretAccessKey} ).
-record( object_info, {key, lastmodified, etag, size} ).

