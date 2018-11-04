import 'package:cloud_firestore/cloud_firestore.dart';

class EventRecord {
  final String title;
  final String description;
  final String start_date;
  final String address;
  final String image_url;
  final DocumentReference reference;

  EventRecord.fromMap(Map<String, dynamic> map, {this.reference})
      : assert(map['title'] != null),
        title = map['title'],
        description = map['description'],
        start_date = map['start_date'],
        address = map['address'],
        image_url = map['image_url'];

  EventRecord.fromSnapshot(DocumentSnapshot snapshot)
      : this.fromMap(snapshot.data, reference: snapshot.reference);

  @override
  String toString() => "EventRecord<$title:$description>";
}
