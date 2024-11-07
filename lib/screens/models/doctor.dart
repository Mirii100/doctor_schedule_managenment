import 'package:doctor_schedule/screens/models/review.dart';
import 'package:flutter/material.dart';
class Doctor{
  final int doctorId;

  late final String name,specialist,about,location,image;
  late final  int price,color;
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
      name:"Alex",
      image: "https://www.linkedin.com/in/alex-njuguna-b4550124a/", about: "about", location: "location", specialist: "Neurologists", price: 9, color: 0xFF665ACF, reviews: [reviews[0], reviews[1], reviews[2], reviews[3],reviews[4]],),

  Doctor(doctorId: 001,
  rate: 1.0,
      name: "Njuguna",
      image: "https://www.linkedin.com/in/alex-njuguna-b4550124a/", about: "about", location: "location", specialist: "Neurologists", price: 9, color: 0xFF665ACF,reviews: [reviews[0], reviews[1], reviews[2], reviews[3],reviews[4]],),

  Doctor(doctorId: 001,
      rate: 1.0,
      name: "Mirii",
      image: "https://www.linkedin.com/in/alex-njuguna-b4550124a/", about: "about", location: "location", specialist: "Neurologists", price: 9, color: 0xFF665ACF,reviews: [reviews[0], reviews[1], reviews[2], reviews[3],reviews[4]],),

  Doctor(doctorId: 001,
      rate: 1.0,
      name: "Mirii Alex",
      image: "https://www.linkedin.com/in/alex-njuguna-b4550124a/", about: "about", location: "location", specialist: "Neurologists", price: 9, color: 0xFF665ACF, reviews: [reviews[0], reviews[1], reviews[2], reviews[3],reviews[4]],),

  Doctor(doctorId: 001,
      rate: 1.0,
      name: "james",
      image: "https://www.freepik.com/free-photos-vectors/colourful", about: "about", location: "location", specialist: "sNeurologists", price: 9, color: 0xFF665ACF, reviews: [reviews[0], reviews[1], reviews[2], reviews[3],reviews[4]],),

  Doctor(doctorId: 001,
      rate: 1.0,
      name: "gideon",
      image: "https://www.linkedin.com/in/alex-njuguna-b4550124a/", about: "about", location: "location", specialist: "Neurologists", price: 9, color: 0xFF665ACF, reviews: [reviews[0], reviews[1], reviews[2], reviews[3],reviews[4]],),

];
