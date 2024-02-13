import 'package:airbnb_clone/shared/colors.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class DetailBookingScreen extends StatefulWidget {
  const DetailBookingScreen({super.key});

  @override
  State<DetailBookingScreen> createState() => _DetailBookingScreenState();
}

class _DetailBookingScreenState extends State<DetailBookingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Hotel Booking',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        toolbarHeight: 100,
        flexibleSpace: Container(
          decoration: BoxDecoration(
            color: Colors.white,
            boxShadow: [
              BoxShadow(
                color: appBlack.withOpacity(0.1),
                blurRadius: 1.0,
                spreadRadius: 1.0,
                offset: const Offset(0.0, 1.0),
              ),
            ],
          ),
        ),
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(18.0),
            child: Container(
              clipBehavior: Clip.antiAlias,
              // width: 10,
              // height: 20,
          
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20.0),
              ),
              child: Image.network(
                'https://images.unsplash.com/photo-1455587734955-081b22074882?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1920&q=80',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(height: 16.0),
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'Dubai, UAE',
                      style: Theme.of(context)
                          .textTheme
                          .bodyLarge!
                          .copyWith(fontWeight: FontWeight.bold),
                    ),
                  ),
                  const SizedBox(height: 4.0),
                  Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Text(
                      'City views',
                      style: Theme.of(context).textTheme.bodyMedium,
                    ),
                  ),
                  const SizedBox(height: 2.0),
                  Padding(
                    padding: const EdgeInsets.all(10.0),
                    child: Text(
                      '\$932 SGD total',
                      style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          fontWeight: FontWeight.bold,
                          decoration: TextDecoration.underline),
                    ),
                  ),
                ],
                
              ),
              const SizedBox(height: 10,),
               Row(
                children: [
                  const Icon(Icons.star),
                  const SizedBox(width: 4.0),
                  Text('4.8'.padRight(10)),
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 150,
          ),
          ElevatedButton(
            onPressed: () {},
            child: const Text(
              "button",
              style: TextStyle(color: Colors.black),
            ),
          )
        ],
      ),
    );
  }
}
