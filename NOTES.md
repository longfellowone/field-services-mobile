Alt-Enter
Ctrl-Space
Shift-Enter
Ctrl+W -> Ctrl+Alt+M or Ctrl+Alt+W
Ctrl+Shift+I
Shift+Del
Ctrl+Q

Settings | Editor | General | Code completion

sout
soutm

Prefix stless: Create a new subclass of StatelessWidget.
Prefix stful: Create a new subclass of StatefulWidget and it’s associated State subclass.

https://medium.com/flutter-community/flutter-ide-shortcuts-for-faster-development-2ef45c51085b
https://medium.com/flutter-community/simple-and-bug-free-code-with-dart-operators-2e81211cecfe

protoc -I=$SRC_DIR --dart_out=$DST_DIR $SRC_DIR/*.proto
protoc -I proto/ proto/supply.proto --dart_out=grpc:lib/src/generated

Add assets into pubspec.yaml

GRPC Testing

grpcc -p ./supply.proto -a 192.168.0.104:9090 -i
client.findOrder({id:'7e55aa12-2e6a-4f21-b01a-09503c755180'},pr)


Navigator.pushNamedAndRemoveUntil(context, "/", (route) => false);
Navigator.popUntil(context, ModalRoute.withName("/"));

flutter build apk
flutter install

For use with ClusterIP
kubectl port-forward --namespace "default" "podname" port

To access NodePort
gcloud compute firewall-rules create grpcsvc --allow tcp:30550

List external IPs
gcloud compute instances list