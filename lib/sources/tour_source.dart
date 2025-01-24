import 'dart:math';

import 'package:cloud_firestore/cloud_firestore.dart';

import 'package:prototype_app_destinasi/models/tour.dart';

class TourSource {
  static Future<List<Tour>?> fetchFeaturedTours() async {
    try {
      final ref = FirebaseFirestore.instance
          .collection('Tours')
          .where('rating', isGreaterThan: 4.5)
          .orderBy('rating', descending: true);
      final queryDocs = await ref.get();
      return queryDocs.docs.map((doc) => Tour.from(doc.data())).toList();
    } catch (e) {
      // log(e.toString());
      // return null;
      print('Error fetching tours: $e');
      return null;
    }
  }

  static Future<List<Tour>?> fetchNewestTours() async {
    try {
      final ref = FirebaseFirestore.instance
          .collection('Tours')
          .orderBy('price', descending: true)
          .limit(2);
      final queryDocs = await ref.get();
      return queryDocs.docs.map((doc) => Tour.from(doc.data())).toList();
    } catch (e) {
      // log(e.toString());
      // return null;
      print('Error fetching tours: $e');
      return null;
    }
  }

  static Future<Tour?> fetchTours(String toursId) async {
    try {
      final ref = FirebaseFirestore.instance.collection('Tours').doc(toursId);
      final doc = await ref.get();
      Tour? tour = doc.exists ? Tour.from(doc.data()!) : null;
      return tour;
    } catch (e) {
      // log(e.toString());
      // return null;
      print('Error fetching tours: $e');
      return null;
    }
  }
}
