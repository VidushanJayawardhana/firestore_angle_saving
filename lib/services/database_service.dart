import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firestore_app_v1/models/angle_model.dart';

const String ANGLE_COLLECTION = "angles";

class DatabaseService {
  final _firestore = FirebaseFirestore.instance;
  late final CollectionReference _angleCollection;
  DatabaseService() {
    _angleCollection = _firestore
        .collection(ANGLE_COLLECTION)
        .withConverter<AngleModel>(
            fromFirestore: (snapshots, _) =>
                AngleModel.fromJson(snapshots.data()!),
            toFirestore: (angle, _) => angle.toJson());
  }

  Stream<QuerySnapshot> getAngles() {
    return _angleCollection.snapshots();
  }

  void addAngle(AngleModel angle) {
    _angleCollection.add(angle);
  }
}
