import 'package:flutter/material.dart';
import '../res/styles/app_styles.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  
final List<Map<String, dynamic>> flights = [
  {
    'from': 'NYC',
    'fromCity': 'New York',
    'to': 'LDN',
    'toCity': 'London',
    'date': '1 MAY',
    'time': '08:00 AM',
    'flightNo': 'BA 237',
    'price': '\$400',
    'duration': '7h 30m',
    'airline': 'British Airways',
    'image': 'assets/images/flight_nyc_london.jpg', 
  },
  {
    'from': 'DK',
    'fromCity': 'Dhaka',
    'to': 'SH',
    'toCity': 'Shanghai',
    'date': '10 MAY',
    'time': '10:30 AM',
    'flightNo': 'CA 982',
    'price': '\$350',
    'duration': '5h 45m',
    'airline': 'China Airlines',
    'image': 'assets/images/flight_dhaka_shanghai.jpg', 
  },
  {
    'from': 'TYO',
    'fromCity': 'Tokyo',
    'to': 'SEL',
    'toCity': 'Seoul',
    'date': '15 MAY',
    'time': '02:15 PM',
    'flightNo': 'JL 521',
    'price': '\$280',
    'duration': '2h 30m',
    'airline': 'Japan Airlines',
    'image': 'assets/images/flight_tokyo_seoul.jpg', 
  },
];

  
  final List<Map<String, dynamic>> hotels = [
    {
      'name': 'Grand Hyatt',
      'location': 'New York',
      'price': '\$220/night',
      'rating': 4.8,
      'amenities': ['Free WiFi', 'Pool', 'Spa'],
    },
    {
      'name': 'The Ritz London',
      'location': 'London',
      'price': '\$350/night',
      'rating': 4.9,
      'amenities': ['Free WiFi', 'Restaurant', 'Spa'],
    }, {
      'name': 'Smile Hotel',
      'location': 'New York',
      'price': '\$220/night',
      'rating': 4.8,
      'amenities': ['Free WiFi', 'Pool', 'Spa'],
    },
     {
      'name': 'Grand Hyatt',
      'location': 'New York',
      'price': '\$220/night',
      'rating': 4.8,
      'amenities': ['Free WiFi', 'Pool', 'Spa'],
    },
    
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      child: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              _buildHeader(),
              const SizedBox(height: 25),
              
              
              _buildSearchBar(),
              const SizedBox(height: 30),
              
              
              _buildSectionHeader('Upcoming Flights'),
              const SizedBox(height: 15),
              
              
           SizedBox(
  height: 230, 
  child: ListView.builder(
    scrollDirection: Axis.horizontal,
    physics: const BouncingScrollPhysics(),
    itemCount: flights.length,
    itemBuilder: (context, index) => _buildFlightCard(flights[index]),
  ),
),

              
              _buildSectionHeader('Featured Hotels'),
              const SizedBox(height: 15),
              
              
              SizedBox(
                height: 200,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  physics: const BouncingScrollPhysics(),
                  itemCount: hotels.length,
                  itemBuilder: (context, index) => _buildHotelCard(hotels[index]),
                ),
              ),
              const SizedBox(height: 20),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildHeader() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "Good morning, Ibrahim ",
              style: AppStyles.headline3.copyWith(
                color: Colors.grey.shade600,
              ),
            ),
            const SizedBox(height: 5),
            Text(
              "Booking Tickets",
              style: AppStyles.headline1.copyWith(
                fontSize: 24, 
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
    Container(
  width: 50,
  height: 50,
  decoration: BoxDecoration(
    borderRadius: BorderRadius.circular(12),
    border: Border.all(
      color: AppStyles.primaryColor.withOpacity(0.2),
      width: 1.5,
    ),
    color: Colors.grey.shade200,
  ),
  child: ClipRRect(
    borderRadius: BorderRadius.circular(10),
    child: Image.network(
      'assets/images/ibrahim.jpeg', 
      fit: BoxFit.cover,
      errorBuilder: (context, error, stackTrace) => const Icon(
        Icons.person,
        color: Colors.grey,
      ),
    ),
  ),
),

      ],
    );
  }

  Widget _buildSearchBar() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 12), 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 10, 
            offset: const Offset(0, 3), 
          ),
        ],
      ),
      child: Row(
        children: [
          Icon(
            Icons.search_rounded,
            color: AppStyles.primaryColor,
            size: 24, 
          ),
          const SizedBox(width: 12), 
          Text(
            "Search destinations...",
            style: AppStyles.headline3.copyWith(
              color: Colors.grey.shade500,
              fontSize: 14, 
            ),
          ),
        ],
      ),
    );
  }

  Widget _buildSectionHeader(String title) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: AppStyles.headline1.copyWith(
            fontSize: 20, 
          ),
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: Text(
            "View all",
            style: AppStyles.headline3.copyWith(
              color: AppStyles.primaryColor,
              fontWeight: FontWeight.w600,
              fontSize: 14, 
            ),
          ),
        ),
      ],
    );
  }

Widget _buildFlightCard(Map<String, dynamic> flight) {
  return Container(
    width: 200,
    margin: const EdgeInsets.only(right: 12),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(16),
      color: Colors.white,
      boxShadow: [
        BoxShadow(
          color: Colors.black.withOpacity(0.06),
          blurRadius: 10,
          offset: const Offset(0, 3),
        ),
      ],
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        
        Container(
          height: 90,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            color: Colors.blue.shade100, 
          ),
          child: ClipRRect(
            borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(16),
              topRight: Radius.circular(16),
            ),
            child: flight['image'] != null
                ? Image.asset(
                    flight['image'],
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) => _buildPlaceholderIcon(),
                  )
                : _buildPlaceholderIcon(),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(12),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    flight['airline'],
                    style: AppStyles.headline3.copyWith(
                      fontSize: 11,
                      color: Colors.grey.shade600,
                    ),
                  ),
                  Text(
                    flight['duration'],
                    style: AppStyles.headline3.copyWith(
                      fontSize: 11,
                      color: AppStyles.primaryColor,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 8),
              
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        flight['from'],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        flight['fromCity'],
                        style: AppStyles.headline3.copyWith(
                          color: Colors.grey.shade600,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                  const Icon(
                    Icons.flight_takeoff_rounded,
                    color: Colors.blueAccent,
                    size: 24,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Text(
                        flight['to'],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                      Text(
                        flight['toCity'],
                        style: AppStyles.headline3.copyWith(
                          color: Colors.grey.shade600,
                          fontSize: 11,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 12),
              
              
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Departs ${flight['date']}',
                        style: AppStyles.headline3.copyWith(
                          fontSize: 11,
                        ),
                      ),
                      Text(
                        flight['time'],
                        style: AppStyles.headline3.copyWith(
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 10,
                      vertical: 5,
                    ),
                    decoration: BoxDecoration(
                      color: AppStyles.primaryColor.withOpacity(0.1),
                      borderRadius: BorderRadius.circular(16),
                    ),
                    child: Text(
                      flight['price'],
                      style: AppStyles.headline3.copyWith(
                        color: AppStyles.primaryColor,
                        fontWeight: FontWeight.bold,
                        fontSize: 13,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    ),
  );
}

Widget _buildPlaceholderIcon() {
  return Container(
    color: Colors.blue.shade100,
    child: Center(
      child: Icon(
        Icons.airplanemode_active,
        size: 40,
        color: Colors.blue.shade400,
      ),
    ),
  );
}

  Widget _buildHotelCard(Map<String, dynamic> hotel) {
    return Container(
      width: 160,
      margin: const EdgeInsets.only(right: 12), 
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16), 
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.06), 
            blurRadius: 10, 
            offset: const Offset(0, 3), 
          ),
        ],
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          
          Container(
            height: 100, 
            decoration: BoxDecoration(
              borderRadius: const BorderRadius.only(
                topLeft: Radius.circular(16),
                topRight: Radius.circular(16),
              ),
              color: Colors.orange.shade100, 
            ),











            child: Center(
              child: Icon(Icons.hotel, 
                size: 40, 
                color: Colors.orange.shade400),
            ),
          ),

          
          Padding(
            padding: const EdgeInsets.all(10), 
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  hotel['name'],
                  style: AppStyles.headline3.copyWith(
                    fontWeight: FontWeight.bold,
                    fontSize: 14, 
                  ),
                  maxLines: 1,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 4), 
                Text(
                  hotel['location'],
                  style: AppStyles.headline3.copyWith(
                    color: Colors.grey.shade600,
                    fontSize: 11, 
                  ),
                ),
                const SizedBox(height: 8), 
                Text(
                  hotel['price'],
                  style: AppStyles.headline3.copyWith(
                    color: AppStyles.primaryColor,
                    fontWeight: FontWeight.bold,
                    fontSize: 13, 
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}