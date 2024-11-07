import 'package:doctor_schedule/screens/models/review.dart';
import 'package:flutter/material.dart';
class Doctor{
  final int doctorId;

  late final String name,specialist,about,location,image;
  late final price,color;
  late final double rate;
  final List<Review> reviews;

 Doctor({
   required this.doctorId,
   required this.name,
    required this.image,
   required this.about,
   required this.rate,
    required this.location,
  required this.specialist,
   required this.price,
   required this.color,
   required this.reviews,
  });}

List<Doctor> doctors=[
  Doctor(doctorId: 001,rate: 1.0,
      name: "name",
      image: "image", about: "about", location: "location", specialist: "specialist", price: 9, color: "color", reviews: [],),

  Doctor(doctorId: 001,
  rate: 1.0,
      name: "name",
      image: "image", about: "about", location: "location", specialist: "specialist", price: 9, color: "color", reviews: []),

  Doctor(doctorId: 001,
      rate: 1.0,
      name: "name",
      image: "image", about: "about", location: "location", specialist: "specialist", price: 9, color: "color", reviews: []),

  Doctor(doctorId: 001,
      rate: 1.0,
      name: "name",
      image: "image", about: "about", location: "location", specialist: "specialist", price: 9, color: "color", reviews: []),

  Doctor(doctorId: 001,
      rate: 1.0,
      name: "name",
      image: "image", about: "about", location: "location", specialist: "specialist", price: 9, color: "color", reviews: []),

  Doctor(doctorId: 001,
      rate: 1.0,
      name: "name",
      image: "image", about: "about", location: "location", specialist: "specialist", price: 9, color: "color", reviews: []),

];
