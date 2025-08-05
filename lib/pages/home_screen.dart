import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'form.dart';

class NGOScreen extends StatelessWidget {
  const NGOScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;

    return Scaffold(
      extendBody: true,

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        selectedItemColor: Colors.blue,
        unselectedItemColor: Color.fromARGB(255, 54, 53, 53),
        onTap: (int index) {
          switch (index) {
            case 0:
              // Already on Home; do nothing or maybe pop to home
              break;
            case 1:
              Navigator.push(
                context,
                MaterialPageRoute(builder: (_) => const VolunteerFormScreen()),
              );
              break;
          }
        },
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
            icon: Icon(Icons.list_alt_sharp),
            label: 'Form',
          ),
        ],
      ),
      body: Container(
        height: screenHeight,
        width: double.infinity,

        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              const Color.fromARGB(255, 233, 199, 245),
              const Color.fromARGB(255, 146, 0, 231),
            ],
            begin: Alignment.center,
            end: Alignment.bottomCenter,
          ),
        ),
        child: Column(
          children: [
            // Orange Container (% of screen height)
            Container(
              height: screenHeight * 0.66,
              width: double.infinity,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    const Color.fromARGB(255, 244, 215, 111),
                    const Color.fromARGB(255, 252, 128, 4),
                  ],
                  begin: Alignment.center,
                  end: Alignment.bottomCenter,
                ),
                borderRadius: const BorderRadius.vertical(
                  bottom: Radius.circular(30),
                ),
              ),
              child: Column(
                children: [
                  // Blue-Green Container (33% of orange height)
                  Container(
                    height: screenHeight * 0.33,
                    width: double.infinity,
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                      gradient: LinearGradient(
                        colors: [
                          Color.fromARGB(255, 6, 152, 244),
                          Color.fromARGB(255, 86, 230, 127),
                        ],
                        begin: Alignment.topCenter,
                        end: Alignment.bottomCenter,
                      ),
                      borderRadius: BorderRadius.vertical(
                        bottom: Radius.circular(20),
                      ),
                    ),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.asset('assets/ngo.png', width: 180, height: 180),
                        SizedBox(height: 8),
                        Text(
                          'Welcome to our Non-Governmental Organisation !\n Learn more about our mission and activities',
                          textAlign: TextAlign.center,
                          style: GoogleFonts.inter(
                            fontSize: 14,
                            fontWeight: FontWeight.bold,
                            color: const Color.fromARGB(255, 1, 136, 185),
                          ),
                        ),
                      ],
                    ),
                  ),

                  // Remaining orange content
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(20),
                      child: SingleChildScrollView(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(height: 10),
                            Text(
                              'About Us',
                              style: GoogleFonts.inter(
                                fontSize: 25,
                                fontWeight: FontWeight.bold,
                                color: Colors.brown,
                              ),
                            ),
                            SizedBox(height: 10),
                            Text(
                              'We are a nonprofit organization dedicated to creating positive change in society through community-driven initiatives. Our mission is to uplift underprivileged communities by promoting education, healthcare, and sustainable development.',
                              style: GoogleFonts.inter(
                                fontSize: 16,
                                color: const Color.fromARGB(221, 79, 42, 8),
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // Remaining Purple Section (bottom)
            Expanded(
              child: Padding(
                padding: const EdgeInsets.all(24),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Key Activities',
                      style: GoogleFonts.inter(
                        fontSize: 25,
                        fontWeight: FontWeight.bold,
                        color: const Color.fromARGB(255, 87, 0, 109),
                      ),
                    ),
                    SizedBox(height: 10),
                    Text(
                      '• Free health camps and donation drives\n'
                      '• Skill training and youth education\n'
                      '• Women empowerment workshops\n'
                      '• Food and essentials distribution\n'
                      '• Tree plantation and cleanliness drives\n'
                      '• Support rural development',
                      style: GoogleFonts.inter(
                        fontSize: 18,
                        color: const Color.fromARGB(255, 87, 0, 109),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
