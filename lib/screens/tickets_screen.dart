import 'package:flutter/material.dart';
import '../res/styles/app_styles.dart';

class TicketsScreen extends StatelessWidget {
  const TicketsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Tickets'),
        centerTitle: true,
      ),
      body: Padding(
        padding: AppStyles.screenPadding,
        child: Column(
          children: [
            _buildTicketTabs(),
            const SizedBox(height: 16),
            _buildTicketCard(),
          ],
        ),
      ),
    );
  }

  Widget _buildTicketTabs() {
    return Row(
      children: [
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: AppStyles.primaryColor,
                  width: 2,
                ),
              ),
            ),
            child: const Center(
              child: Text('Upcoming', style: AppStyles.subtitle1),
            ),
          ),
        ),
        Expanded(
          child: Container(
            padding: const EdgeInsets.symmetric(vertical: 12),
            decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(
                  color: Colors.grey.shade300,
                  width: 1,
                ),
              ),
            ),
            child: Center(
              child: Text('Previous', 
                style: AppStyles.subtitle1.copyWith(color: Colors.grey)),
            ),
          ),
        ),
      ],
    );
  }

  Widget _buildTicketCard() {
    return Card(
      elevation: 2,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      child: Padding(
        padding: AppStyles.largePadding,
        child: Column(
          children: [
            _buildFlightInfoRow(),
            const Divider(height: 32),
            _buildPassengerInfoRow(),
            const Divider(height: 32),
            _buildPaymentInfoRow(),
            const Divider(height: 32),
            _buildCitiesRow(),
          ],
        ),
      ),
    );
  }

  Widget _buildFlightInfoRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('NYC', style: AppStyles.headline3),
            Text('New-York', style: AppStyles.bodyText2),
          ],
        ),
        Column(
          children: const [
            Text('8H 30M', style: AppStyles.bodyText2),
            Text('08:00 AM', style: AppStyles.bodyText2),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text('LDN', style: AppStyles.headline3),
            Text('London', style: AppStyles.bodyText2),
          ],
        ),
      ],
    );
  }

  Widget _buildPassengerInfoRow() {
    return Column(
      children: [
        _buildInfoItem('Passenger', 'Flutter DB'),
        const SizedBox(height: 12),
        _buildInfoItem('passport', '5221 36869'),
        const SizedBox(height: 12),
        _buildInfoItem('Number of E-ticket', '2465 658494046865'),
        const SizedBox(height: 12),
        _buildInfoItem('Booking code', 'B46859'),
      ],
    );
  }

  Widget _buildPaymentInfoRow() {
    return Column(
      children: [
        _buildInfoItem('Payment method', 'VISA ** 2462'),
        const SizedBox(height: 12),
        _buildInfoItem('Price', '\$249.99', isBold: true),
      ],
    );
  }

  Widget _buildCitiesRow() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: const [
            Text('NYC', style: AppStyles.headline4),
            Text('New-York', style: AppStyles.bodyText2),
          ],
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: const [
            Text('LDN', style: AppStyles.headline4),
            Text('London', style: AppStyles.bodyText2),
          ],
        ),
      ],
    );
  }

  Widget _buildInfoItem(String label, String value, {bool isBold = false}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(label, style: AppStyles.bodyText2),
        Text(value, 
          style: isBold ? AppStyles.subtitle1 : AppStyles.bodyText1),
      ],
    );
  }
}