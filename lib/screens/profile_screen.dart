import 'package:flutter/material.dart';
import '../res/styles/app_styles.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Book Tickets'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: AppStyles.screenPadding,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              _buildProfileHeader(),
              const SizedBox(height: 24),
              _buildAwardCard(),
              const SizedBox(height: 24),
              _buildMilesCard(context), // Pass context here
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildProfileHeader() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: AppStyles.largePadding,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            const Text('New-York', style: AppStyles.headline3),
            Container(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
              decoration: BoxDecoration(
                color: AppStyles.primaryColor.withOpacity(0.1),
                borderRadius: BorderRadius.circular(4),
              ),
              child: Text(
                'Premium status',
                style: AppStyles.bodyText2.copyWith(
                  color: AppStyles.primaryColor,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAwardCard() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: AppStyles.largePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text("You've got a new award", style: AppStyles.subtitle1),
            SizedBox(height: 8),
            Text("You have 95 flights in a year", style: AppStyles.bodyText2),
          ],
        ),
      ),
    );
  }

  Widget _buildMilesCard(BuildContext context) {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: AppStyles.largePadding,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text("Accumulated miles", style: AppStyles.headline3),
            const SizedBox(height: 16),
            Center(
              child: Text(
                "192802",
                style: AppStyles.headline1.copyWith(
                  fontSize: 40,
                  color: AppStyles.primaryColor,
                ),
              ),
            ),
            const SizedBox(height: 8),
            const Center(
              child: Text("Miles accrued", style: AppStyles.bodyText2),
            ),
            const Center(
              child: Text("11 June 2022", style: AppStyles.bodyText2),
            ),
            const SizedBox(height: 24),
            _buildMilesItem("23 042", "Airline CO"),
            const Divider(),
            _buildMilesItem("24", "McDonald's"),
            const Divider(),
            _buildMilesItem("52 340", "DBestedh"),
            const SizedBox(height: 16),
            TextButton(
              onPressed: () {},
              child: const Text(
                "How to get more miles",
                style: AppStyles.linkText,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildMilesItem(String miles, String source) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(miles, style: AppStyles.subtitle1),
          Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              const Text("Miles", style: AppStyles.bodyText2),
              Text("Received from $source", style: AppStyles.bodyText2),
            ],
          ),
        ],
      ),
    );
  }
}