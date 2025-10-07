import 'package:flutter/material.dart';

class OverViewScreen extends StatefulWidget {
  const OverViewScreen({super.key});
  @override
  State<OverViewScreen> createState() => _OverViewScreenState();
}

class _OverViewScreenState extends State<OverViewScreen> {
  String? selectedIntakeMonth;
  String? selectedCampusCity;
  String? selectedCourseDuration;
  String studyMode = 'Part-Time';
  String deliveryPattern = 'Online';
  List<String> selectedSchedules = [];
  bool isApplyChecked = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Colors.black),
          onPressed: () {},
        ),
        title: const Text(
          'Overview',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        actions: [
          TextButton(
            onPressed: () {},
            child: const Text(
              'Apply Now',
              style: TextStyle(
                color: Colors.teal,
                fontSize: 14,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // University Header Card
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // University Logo
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      color: Colors.grey[200],
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Text(
                        'GWS',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.bold,
                          color: Colors.grey[700],
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Course Information
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const Text(
                          'BA (Hons) International Business',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          'Pathways with Foundation Year',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const SizedBox(height: 4),
                        Text(
                          'University of South West of England, United...',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.grey[600],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // Student Info Card
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    'Student',
                    style: TextStyle(
                      fontSize: 14,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Rakib Hossain',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 16),
                  Row(
                    children: [
                      const Icon(Icons.calendar_today,
                          size: 16, color: Colors.grey),
                      const SizedBox(width: 8),
                      const Text(
                        'Intake',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const SizedBox(width: 8),
                      Text(
                        'June 2025',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // Financial Info Cards
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Row(
                children: [
                  // Tuition Fee Card
                  Expanded(
                    child: _buildInfoCard(
                      icon: Icons.account_balance_wallet_outlined,
                      iconColor: Colors.teal,
                      label: 'Tution Fee',
                      value: '£28,640',
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Scholarship Card
                  Expanded(
                    child: _buildInfoCard(
                      icon: Icons.card_giftcard,
                      iconColor: Colors.teal,
                      label: 'Scholarship',
                      value: '10% or £5000',
                    ),
                  ),
                  const SizedBox(width: 12),
                  // Living Cost Card
                  Expanded(
                    child: _buildInfoCard(
                      icon: Icons.home_outlined,
                      iconColor: Colors.teal,
                      label: 'Living Cost',
                      value: '£00 GBP',
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // Deadline and Start Date
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Column(
                children: [
                  _buildInfoRow('Application deadline', '10 Feb, 2025'),
                  const Divider(height: 24),
                  _buildInfoRow('Course Start Date', '25 Mar 2025'),
                  const Divider(height: 24),
                  Row(
                    children: [
                      const Icon(Icons.access_time,
                          size: 18, color: Colors.grey),
                      const SizedBox(width: 8),
                      const Text(
                        'Duration',
                        style: TextStyle(fontSize: 14, color: Colors.grey),
                      ),
                      const Spacer(),
                      Text(
                        '4 Years',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                          color: Colors.grey[800],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // Intake Selection
            _buildDropdownSection(
              icon: Icons.calendar_month,
              label: 'Intake',
              hint: 'April 2025    May 2025',
              value: selectedIntakeMonth,
              onChanged: (value) {
                setState(() {
                  selectedIntakeMonth = value;
                });
              },
            ),

            const SizedBox(height: 8),

            // Course Durations Dropdown
            _buildDropdownSection(
              icon: null,
              label: 'Course durations',
              hint: '',
              value: selectedCourseDuration,
              onChanged: (value) {
                setState(() {
                  selectedCourseDuration = value;
                });
              },
            ),

            const SizedBox(height: 8),

            // Campus City Dropdown
            _buildDropdownSection(
              icon: Icons.location_on_outlined,
              label: 'Campus City',
              hint: '',
              value: selectedCampusCity,
              onChanged: (value) {
                setState(() {
                  selectedCampusCity = value;
                });
              },
            ),

            const SizedBox(height: 8),

            // Course Durations (2nd instance)
            _buildDropdownSection(
              icon: null,
              label: 'Course durations',
              hint: '',
              value: null,
              onChanged: (value) {},
            ),

            const SizedBox(height: 8),

            // Study Mode Selection
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.school_outlined,
                          size: 18, color: Colors.grey[600]),
                      const SizedBox(width: 8),
                      const Text(
                        'Study Mode',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: _buildRadioOption(
                          'Part-Time',
                          studyMode == 'Part-Time',
                          () {
                            setState(() {
                              studyMode = 'Part-Time';
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _buildRadioOption(
                          'Full-Time',
                          studyMode == 'Full-Time',
                          () {
                            setState(() {
                              studyMode = 'Full-Time';
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // Delivery Pattern Selection
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.desktop_windows_outlined,
                          size: 18, color: Colors.grey[600]),
                      const SizedBox(width: 8),
                      const Text(
                        'Delivery Pattern',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Row(
                    children: [
                      Expanded(
                        child: _buildRadioOption(
                          'Online',
                          deliveryPattern == 'Online',
                          () {
                            setState(() {
                              deliveryPattern = 'Online';
                            });
                          },
                        ),
                      ),
                      const SizedBox(width: 12),
                      Expanded(
                        child: _buildRadioOption(
                          'On-Campus',
                          deliveryPattern == 'On-Campus',
                          () {
                            setState(() {
                              deliveryPattern = 'On-Campus';
                            });
                          },
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // Delivery Schedule Selection
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Icon(Icons.schedule, size: 18, color: Colors.grey[600]),
                      const SizedBox(width: 8),
                      const Text(
                        'Delivery schedule',
                        style: TextStyle(
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 12),
                  Wrap(
                    spacing: 8,
                    runSpacing: 8,
                    children: [
                      _buildCheckboxOption('Evening'),
                      _buildCheckboxOption('Flexible'),
                      _buildCheckboxOption('Weekend'),
                      _buildCheckboxOption('Evening + Weekend'),
                    ],
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // Apply Confirmation Checkbox
            Container(
              color: Colors.white,
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
              child: Row(
                children: [
                  SizedBox(
                    width: 20,
                    height: 20,
                    child: Checkbox(
                      value: isApplyChecked,
                      onChanged: (value) {
                        setState(() {
                          isApplyChecked = value ?? false;
                        });
                      },
                      activeColor: Colors.teal,
                    ),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Text(
                      'Are you sure want to apply this program?',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ],
              ),
            ),

            const SizedBox(height: 8),

            // Info Text
            Container(
              width: double.infinity,
              padding: const EdgeInsets.all(16),
              decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 243, 235),
                  borderRadius: BorderRadius.circular(12)),
              child: Text(
                'You Can apply maximum 3 Applications at a Time for free.',
                textAlign: TextAlign.center,
                style: TextStyle(fontSize: 12),
              ),
            ),

            const SizedBox(height: 16),

            // Apply Now Button
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: ElevatedButton(
                onPressed: () {},
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.teal,
                  minimumSize: const Size(double.infinity, 50),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(25),
                  ),
                ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      'Apply Now',
                      style: TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(width: 8),
                    Icon(Icons.arrow_forward, color: Colors.white, size: 20),
                  ],
                ),
              ),
            ),

            const SizedBox(height: 24),
          ],
        ),
      ),
    );
  }

  // Helper widget for info cards (Tuition, Scholarship, Living Cost)
  Widget _buildInfoCard({
    required IconData icon,
    required Color iconColor,
    required String label,
    required String value,
  }) {
    return Container(
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey[50],
        borderRadius: BorderRadius.circular(8),
        border: Border.all(color: Colors.grey[200]!),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, size: 20, color: iconColor),
          const SizedBox(height: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 11,
              color: Colors.grey[600],
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }

  // Helper widget for info rows (deadline, start date)
  Widget _buildInfoRow(String label, String value) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          label,
          style: const TextStyle(fontSize: 14, color: Colors.grey),
        ),
        Text(
          value,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w600,
            color: Colors.grey[800],
          ),
        ),
      ],
    );
  }

  // Helper widget for dropdown sections
  Widget _buildDropdownSection({
    required IconData? icon,
    required String label,
    required String hint,
    required String? value,
    required Function(String?) onChanged,
  }) {
    return Container(
      color: Colors.white,
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          if (icon != null)
            Row(
              children: [
                Icon(icon, size: 18, color: Colors.grey[600]),
                const SizedBox(width: 8),
                Text(
                  label,
                  style: const TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            )
          else
            Text(
              label,
              style: const TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey[300]!),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    hint.isEmpty ? 'Select' : hint,
                    style: TextStyle(
                      fontSize: 14,
                      color: hint.isEmpty ? Colors.grey : Colors.grey[800],
                    ),
                  ),
                ),
                Icon(Icons.keyboard_arrow_down, color: Colors.grey[600]),
              ],
            ),
          ),
        ],
      ),
    );
  }

  // Helper widget for radio button options
  Widget _buildRadioOption(String label, bool selected, VoidCallback onTap) {
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: [
          Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: selected ? Colors.teal : Colors.grey[400]!,
                width: 2,
              ),
            ),
            child: selected
                ? Center(
                    child: Container(
                      width: 10,
                      height: 10,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.teal,
                      ),
                    ),
                  )
                : null,
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 14,
              color: Colors.grey[800],
            ),
          ),
        ],
      ),
    );
  }

  // Helper widget for checkbox options
  Widget _buildCheckboxOption(String label) {
    bool isSelected = selectedSchedules.contains(label);
    return GestureDetector(
      onTap: () {
        setState(() {
          if (isSelected) {
            selectedSchedules.remove(label);
          } else {
            selectedSchedules.add(label);
          }
        });
      },
      child: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 18,
            height: 18,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isSelected ? Colors.teal : Colors.grey[400]!,
                width: 2,
              ),
            ),
            child: isSelected
                ? const Center(
                    child: Icon(
                      Icons.check,
                      size: 12,
                      color: Colors.teal,
                    ),
                  )
                : null,
          ),
          const SizedBox(width: 8),
          Text(
            label,
            style: TextStyle(
              fontSize: 13,
              color: Colors.grey[700],
            ),
          ),
        ],
      ),
    );
  }
}
