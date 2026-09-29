import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4FAF8),

      body: SafeArea(
        child: Column(
          children: [

            // ---------------- HEADER ----------------
            Container(
              width: double.infinity,
              padding: const EdgeInsets.fromLTRB(20, 18, 20, 25),
              decoration: const BoxDecoration(
                color: Color(0xFF073F42),
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30),
                ),
              ),

              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

                  Row(
                    children: [

                      // Menu
                      const Icon(
                        Icons.menu,
                        color: Colors.white,
                        size: 28,
                      ),

                      const SizedBox(width: 15),

                      // Logo
                      Image.asset(
                        'assets/images/hexhealth_logo.png',
                        height: 42,
                      ),

                      const Spacer(),

                      // Notification
                      Container(
                        padding: const EdgeInsets.all(9),
                        decoration: BoxDecoration(
                          color: Colors.white.withOpacity(0.12),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.notifications_none,
                          color: Colors.white,
                          size: 25,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 25),

                  const Text(
                    'Hi, Juveriya 👋',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  const SizedBox(height: 5),

                  const Text(
                    'How can we help you today?',
                    style: TextStyle(
                      color: Colors.white70,
                      fontSize: 15,
                    ),
                  ),

                  const SizedBox(height: 18),

                  // AI SEARCH BOX
                  Container(
                    height: 58,
                    padding: const EdgeInsets.symmetric(horizontal: 18),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(30),
                    ),

                    child: Row(
                      children: [

                        const Expanded(
                          child: Text(
                            'Ask anything about your health...',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 14,
                            ),
                          ),
                        ),

                        Container(
                          height: 42,
                          width: 42,
                          decoration: const BoxDecoration(
                            color: Color(0xFF27B978),
                            shape: BoxShape.circle,
                          ),
                          child: const Icon(
                            Icons.arrow_forward,
                            color: Colors.white,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            // ---------------- CONTENT ----------------
            Expanded(
              child: SingleChildScrollView(
                padding: const EdgeInsets.all(18),

                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [

                    const SizedBox(height: 5),

                    // HEALTH SCORE
                    _healthScoreCard(),

                    const SizedBox(height: 20),

                    const Text(
                      'Quick Actions',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF173B3D),
                      ),
                    ),

                    const SizedBox(height: 12),

                    // QUICK ACTIONS
                    Row(
                      children: [
                        Expanded(
                          child: _actionCard(
                            Icons.medical_services_outlined,
                            'Symptoms',
                            'Check your symptoms',
                          ),
                        ),

                        const SizedBox(width: 12),

                        Expanded(
                          child: _actionCard(
                            Icons.smart_toy_outlined,
                            'AI Assistant',
                            'Ask HexHealth',
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 12),

                    Row(
                      children: [
                        Expanded(
                          child: _actionCard(
                            Icons.description_outlined,
                            'Reports',
                            'View health records',
                          ),
                        ),

                        const SizedBox(width: 12),

                        Expanded(
                          child: _actionCard(
                            Icons.notifications_none,
                            'Alerts',
                            'Health reminders',
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 22),

                    // HEALTH TIP
                    _healthTip(),

                    const SizedBox(height: 22),

                    const Text(
                      'Health Insights',
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF173B3D),
                      ),
                    ),

                    const SizedBox(height: 12),

                    Row(
                      children: [
                        Expanded(
                          child: _insightCard(
                            Icons.nightlight_round,
                            'Sleep',
                            '7h 30m',
                            'Good',
                          ),
                        ),

                        const SizedBox(width: 12),

                        Expanded(
                          child: _insightCard(
                            Icons.directions_walk,
                            'Steps',
                            '6,245',
                            'Goal: 8,000',
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // AIR QUALITY
                    Container(
                      padding: const EdgeInsets.all(18),

                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(22),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.black.withOpacity(0.05),
                            blurRadius: 15,
                            offset: const Offset(0, 5),
                          ),
                        ],
                      ),

                      child: Row(
                        children: [

                          Container(
                            padding: const EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE9F8EF),
                              borderRadius: BorderRadius.circular(15),
                            ),
                            child: const Icon(
                              Icons.eco,
                              color: Color(0xFF29A866),
                              size: 28,
                            ),
                          ),

                          const SizedBox(width: 15),

                          const Expanded(
                            child: Column(
                              crossAxisAlignment:
                                  CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Air Quality',
                                  style: TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(height: 5),
                                Text(
                                  'Good • AQI 42',
                                  style: TextStyle(
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          Container(
                            padding: const EdgeInsets.symmetric(
                              horizontal: 14,
                              vertical: 8,
                            ),
                            decoration: BoxDecoration(
                              color: const Color(0xFFE1F5E9),
                              borderRadius: BorderRadius.circular(20),
                            ),
                            child: const Text(
                              'Good',
                              style: TextStyle(
                                color: Color(0xFF269957),
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 100),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),

      // ---------------- BOTTOM NAVIGATION ----------------
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(
          vertical: 10,
          horizontal: 15,
        ),

        decoration: const BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(25),
            topRight: Radius.circular(25),
          ),
        ),

        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [

            _bottomItem(Icons.home, 'Home', true),
            _bottomItem(Icons.history, 'History', false),
            _bottomItem(Icons.analytics_outlined, 'Analyze', false),
            _bottomItem(Icons.person_outline, 'Profile', false),
          ],
        ),
      ),
    );
  }

  // HEALTH SCORE CARD
  static Widget _healthScoreCard() {
    return Container(
      padding: const EdgeInsets.all(20),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(25),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 15,
            offset: const Offset(0, 5),
          ),
        ],
      ),

      child: Row(
        children: [

          SizedBox(
            height: 105,
            width: 105,

            child: Stack(
              alignment: Alignment.center,
              children: [

                SizedBox(
                  height: 95,
                  width: 95,
                  child: CircularProgressIndicator(
                    value: 0.85,
                    strokeWidth: 9,
                    backgroundColor: Colors.grey.shade200,
                    color: const Color(0xFF2BBF91),
                  ),
                ),

                const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      '85',
                      style: TextStyle(
                        fontSize: 30,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                    Text(
                      '/100',
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),

          const SizedBox(width: 20),

          const Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  'Health Score',
                  style: TextStyle(
                    fontSize: 17,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 8),

                Text(
                  'Great job! 🎉',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                  ),
                ),

                SizedBox(height: 4),

                Text(
                  'You are taking good care of your health.',
                  style: TextStyle(
                    color: Colors.grey,
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

  // ACTION CARD
  static Widget _actionCard(
    IconData icon,
    String title,
    String subtitle,
  ) {
    return Container(
      height: 125,
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(22),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 12,
            offset: const Offset(0, 4),
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Icon(
            icon,
            color: const Color(0xFF24A979),
            size: 30,
          ),

          const Spacer(),

          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  // HEALTH TIP
  static Widget _healthTip() {
    return Container(
      padding: const EdgeInsets.all(18),

      decoration: BoxDecoration(
        color: const Color(0xFFE9F7F1),
        borderRadius: BorderRadius.circular(22),
      ),

      child: const Row(
        children: [

          Icon(
            Icons.water_drop_outlined,
            color: Color(0xFF219B78),
            size: 35,
          ),

          SizedBox(width: 15),

          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                Text(
                  'Today’s Health Tip',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                  ),
                ),

                SizedBox(height: 5),

                Text(
                  'Stay hydrated, eat balanced meals and get enough sleep.',
                  style: TextStyle(
                    color: Colors.black54,
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

  // INSIGHT CARD
  static Widget _insightCard(
    IconData icon,
    String title,
    String value,
    String subtitle,
  ) {
    return Container(
      padding: const EdgeInsets.all(16),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 12,
          ),
        ],
      ),

      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Icon(
            icon,
            color: const Color(0xFF6B52C9),
            size: 27,
          ),

          const SizedBox(height: 12),

          Text(
            title,
            style: const TextStyle(
              color: Colors.grey,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            value,
            style: const TextStyle(
              fontSize: 22,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 3),

          Text(
            subtitle,
            style: const TextStyle(
              color: Colors.grey,
              fontSize: 12,
            ),
          ),
        ],
      ),
    );
  }

  // BOTTOM ITEM
  static Widget _bottomItem(
    IconData icon,
    String label,
    bool selected,
  ) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [

        Icon(
          icon,
          color: selected
              ? const Color(0xFF25AD78)
              : Colors.grey,
        ),

        const SizedBox(height: 4),

        Text(
          label,
          style: TextStyle(
            fontSize: 12,
            color: selected
                ? const Color(0xFF25AD78)
                : Colors.grey,
            fontWeight:
                selected ? FontWeight.bold : FontWeight.normal,
          ),
        ),
      ],
    );
  }
}