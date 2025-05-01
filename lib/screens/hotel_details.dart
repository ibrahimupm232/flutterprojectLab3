import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../base/text_expansion_block.dart';

class HotelDetailsScreen extends StatelessWidget {
  final String hotelName;
  final String description;
  final String imageUrl;
  final double rating;
  final String price;
  final List<String> amenities;

  const HotelDetailsScreen({
    super.key,
    required this.hotelName,
    required this.description,
    this.imageUrl = '',
    this.rating = 4.0,
    this.price = '\$200/night',
    this.amenities = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(hotelName),
        actions: [IconButton(icon: const Icon(Icons.favorite_border), onPressed: () {})],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              height: 250,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageUrl.isNotEmpty 
                    ? AssetImage(imageUrl) // Changed from NetworkImage to AssetImage
                    : const AssetImage('assets/images/hotel_placeholder.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(price, style: const TextStyle(fontSize: 24, fontWeight: FontWeight.bold)),
                      Row(children: [
                        const Icon(Icons.star, color: Colors.amber),
                        Text(rating.toString(), style: const TextStyle(fontSize: 18)),
                      ]),
                    ],
                  ),
                  const SizedBox(height: 16),
                  Wrap(
                    spacing: 8,
                    children: amenities.map((amenity) => Chip(label: Text(amenity))).toList(),
                  ),
                  const SizedBox(height: 24),
                  BlocBuilder<TextExpansionBlock, TextExpansionState>(
                    builder: (context, state) {
                      final isExpanded = (state as TextExpansionInitial).isExpanded;
                      return Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text('Description', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                          const SizedBox(height: 8),
                          Text(description, maxLines: isExpanded ? null : 3, overflow: isExpanded ? null : TextOverflow.ellipsis),
                          TextButton(
                            onPressed: () => context.read<TextExpansionBlock>().add(ToggleExpansion()),
                            child: Text(isExpanded ? 'Show Less' : 'Show More'),
                          ),
                        ],
                      );
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ElevatedButton(onPressed: () {}, child: const Text('Book Now')),
      ),
    );
  }
}