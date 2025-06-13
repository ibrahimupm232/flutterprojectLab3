import 'package:flutter/material.dart';
import '../res/styles/app_styles.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('What are you looking for?'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppStyles.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildCategoryButtons(),
              const SizedBox(height: 24),
              _buildSearchForm(),
              const SizedBox(height: 24),
              _buildUpcomingFlightsSection(),
              const SizedBox(height: 16),
              _buildPromoCard(
                title: 'Discount for survey',
                description: 'Take the survey about our services and get discount',
                discount: '20%',
              ),
              const SizedBox(height: 16),
              _buildPromoCard(
                title: 'Take Love',
                description: 'Special discount for couples',
                discount: '15%',
              ),
              const SizedBox(height: 16), // Added extra space at the bottom
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildCategoryButtons() {
    return Row(
      children: [
        Expanded(
          child: ElevatedButton(
            style: ElevatedButton.styleFrom(
              backgroundColor: AppStyles.primaryColor,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            onPressed: () {},
            child: const Text('All Tickets', style: AppStyles.buttonText),
          ),
        ),
        const SizedBox(width: 16),
        Expanded(
          child: OutlinedButton(
            style: OutlinedButton.styleFrom(
              side: const BorderSide(color: AppStyles.primaryColor),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8),
              ),
              padding: const EdgeInsets.symmetric(vertical: 16),
            ),
            onPressed: () {},
            child: Text('Hotels', 
              style: AppStyles.buttonText.copyWith(color: AppStyles.primaryColor)),
          ),
        ),
      ],
    );
  }

  Widget _buildSearchForm() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Text('Departure', style: AppStyles.subtitle1),
        const SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Enter departure city',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        const SizedBox(height: 16),
        const Text('Arrival', style: AppStyles.subtitle1),
        const SizedBox(height: 8),
        TextFormField(
          decoration: InputDecoration(
            hintText: 'Enter arrival city',
            border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
        ),
        const SizedBox(height: 16),
        ElevatedButton(
          style: ElevatedButton.styleFrom(
            backgroundColor: AppStyles.primaryColor,
            minimumSize: const Size(double.infinity, 48),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
          ),
          onPressed: () {},
          child: const Text('find tickets', style: AppStyles.buttonText),
        ),
      ],
    );
  }

  Widget _buildUpcomingFlightsSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('Upcoming Flights', style: AppStyles.headline3),
            TextButton(
              onPressed: () {},
              child: const Text('View all', style: AppStyles.linkText),
            ),
          ],
        ),
      ],
    );
  }

  Widget _buildPromoCard({
    required String title,
    required String description,
    required String discount,
  }) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: AppStyles.largePadding,
        child: Row(
          children: [
            Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                color: AppStyles.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(8),
              ),
              child: Text(
                discount,
                style: AppStyles.headline2.copyWith(
                  color: AppStyles.primaryColor,
                ),
              ),
            ),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title, style: AppStyles.subtitle1),
                  const SizedBox(height: 4),
                  Text(description, style: AppStyles.bodyText2),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}