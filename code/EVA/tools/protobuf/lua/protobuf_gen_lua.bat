del *.proto /f /a /q
del *.pb /f /a /q
copy ..\*.proto .

protoc-3.2.0rc2 --descriptor_set_out=./proto_msg.pb define_pro.proto define_attrib.proto msg_client.proto msg_service.proto

copy proto_msg.pb ..\..\..\server\script\DataTable\  /y
del *.proto /f /a /q
pause
