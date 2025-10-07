import 'package:flutter/material.dart';

class FiltersScreen extends StatefulWidget {
  const FiltersScreen({super.key});
  @override
  State<FiltersScreen> createState() => _FiltersScreenState();
}

class _FiltersScreenState extends State<FiltersScreen> {
  // State variables for dropdowns
  String? selectedCountry;
  String? selectedCampusCity;
  String? selectedCourseDuration;

  // Tuition fee range slider
  double currentTuitionFee = 23000;
  double maxTuitionFee = 23000;

  // Study mode checkboxes
  bool isFullTime = false;
  bool isPartTime = false;

  // Delivery pattern checkboxes
  bool isOnCampus = false;
  bool isOnline = true;
  bool isHybrid = false;

  // Delivery schedule checkboxes
  bool isStandard = false;
  bool isEvening = false;
  bool isFlexible = false;
  bool isWeekend = false;
  bool isEveningWeekend = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[50],
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Container(
            decoration: BoxDecoration(
              color: Colors.grey[100],
              shape: BoxShape.circle,
            ),
            child: IconButton(
              icon: const Icon(Icons.arrow_back, color: Colors.black, size: 20),
              onPressed: () {
              },
            ),
          ),
        ),
        title: const Text(
          'Filters',
          style: TextStyle(
            color: Colors.black,
            fontSize: 18,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Country Dropdown
              _buildDropdownField(
                label: 'Country',
                hint: 'Select Country',
                value: selectedCountry,
                onChanged: (value) {
                  setState(() {
                    selectedCountry = value;
                  });
                },
              ),

              const SizedBox(height: 16),

              // Campus City Dropdown
              _buildDropdownField(
                label: 'Campus city',
                hint: 'Select locations',
                value: selectedCampusCity,
                onChanged: (value) {
                  setState(() {
                    selectedCampusCity = value;
                  });
                },
              ),

              const SizedBox(height: 16),

              // Tuition Fee Slider
              _buildTuitionFeeSlider(),

              const SizedBox(height: 16),

              // Course Durations Dropdown
              _buildDropdownFieldWithIcon(
                icon: Icons.access_time,
                label: 'Course durations',
                hint: 'Select',
                value: selectedCourseDuration,
                onChanged: (value) {
                  setState(() {
                    selectedCourseDuration = value;
                  });
                },
              ),

              const SizedBox(height: 16),

              // Study Mode Section
              _buildCheckboxSection(
                icon: Icons.school_outlined,
                label: 'Study mode',
                children: [
                  Row(
                    children: [
                      _buildCheckbox(
                        label: 'Full-Time',
                        value: isFullTime,
                        onChanged: (value) {
                          setState(() {
                            isFullTime = value!;
                          });
                        },
                      ),
                      const SizedBox(width: 24),
                      _buildCheckbox(
                        label: 'Part-Time',
                        value: isPartTime,
                        onChanged: (value) {
                          setState(() {
                            isPartTime = value!;
                          });
                        },
                      ),
                    ],
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Delivery Pattern Section
              _buildCheckboxSection(
                icon: Icons.desktop_windows_outlined,
                label: 'Delivery pattern',
                children: [
                  _buildCheckbox(
                    label: 'On-Campus',
                    value: isOnCampus,
                    onChanged: (value) {
                      setState(() {
                        isOnCampus = value!;
                      });
                    },
                  ),
                  const SizedBox(height: 8),
                  _buildCheckbox(
                    label: 'Online',
                    value: isOnline,
                    onChanged: (value) {
                      setState(() {
                        isOnline = value!;
                      });
                    },
                  ),
                  const SizedBox(height: 8),
                  _buildCheckbox(
                    label: 'Hybrid',
                    value: isHybrid,
                    onChanged: (value) {
                      setState(() {
                        isHybrid = value!;
                      });
                    },
                  ),
                ],
              ),

              const SizedBox(height: 16),

              // Delivery Schedule Section
              _buildCheckboxSection(
                icon: Icons.schedule,
                label: 'Delivery schedule',
                children: [
                  Row(
                    children: [
                      _buildCheckbox(
                        label: 'Standard',
                        value: isStandard,
                        onChanged: (value) {
                          setState(() {
                            isStandard = value!;
                          });
                        },
                      ),
                      const SizedBox(width: 24),
                      _buildCheckbox(
                        label: 'Evening',
                        value: isEvening,
                        onChanged: (value) {
                          setState(() {
                            isEvening = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  Row(
                    children: [
                      _buildCheckbox(
                        label: 'Flexible',
                        value: isFlexible,
                        onChanged: (value) {
                          setState(() {
                            isFlexible = value!;
                          });
                        },
                      ),
                      const SizedBox(width: 24),
                      _buildCheckbox(
                        label: 'Weekend',
                        value: isWeekend,
                        onChanged: (value) {
                          setState(() {
                            isWeekend = value!;
                          });
                        },
                      ),
                    ],
                  ),
                  const SizedBox(height: 8),
                  _buildCheckbox(
                    label: 'Evening + Weekend',
                    value: isEveningWeekend,
                    onChanged: (value) {
                      setState(() {
                        isEveningWeekend = value!;
                      });
                    },
                  ),
                ],
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  // Helper method to build dropdown fields without icon
  Widget _buildDropdownField({
    required String label,
    required String hint,
    required String? value,
    required Function(String?) onChanged,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(8),
            border: Border.all(color: Colors.grey[300]!),
          ),
          child: DropdownButtonHideUnderline(
            child: DropdownButton<String>(
              isExpanded: true,
              hint: Text(
                hint,
                style: TextStyle(
                  fontSize: 14,
                  color: Colors.grey[400],
                ),
              ),
              value: value,
              icon: Icon(Icons.keyboard_arrow_down, color: Colors.grey[600]),
              items: [], // Add your items here
              onChanged: onChanged,
            ),
          ),
        ),
      ],
    );
  }

  // Helper method to build dropdown fields with icon
  Widget _buildDropdownFieldWithIcon({
    required IconData icon,
    required String label,
    required String hint,
    required String? value,
    required Function(String?) onChanged,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 18, color: Colors.grey[700]),
              const SizedBox(width: 8),
              Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
          const SizedBox(height: 12),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
            decoration: BoxDecoration(
              color: Colors.grey[50],
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.grey[300]!),
            ),
            child: DropdownButtonHideUnderline(
              child: DropdownButton<String>(
                isExpanded: true,
                hint: Text(
                  hint,
                  style: TextStyle(
                    fontSize: 12,
                    color: Colors.grey[400],
                  ),
                ),
                value: value,
                icon: Icon(Icons.keyboard_arrow_down, color: Colors.grey[600]),
                items: [], // Add your items here
                onChanged: onChanged,
              ),
            ),
          ),
        ],
      ),
    );
  }

  // Helper method to build tuition fee slider
  Widget _buildTuitionFeeSlider() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Tuition fee',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w500,
            color: Colors.grey[700],
          ),
        ),
        const SizedBox(height: 8),
        Container(
          padding: const EdgeInsets.all(16),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(12),
          ),
          child: Row(
            spacing: 10,
            children: [
              Container(
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8),
                  border: Border.all(color: Colors.grey.shade300),
                ),
                child: Row(
                  children: [
                    Row(
                      children: [
                        Text(
                          'Max ',
                          style: TextStyle(
                            fontSize: 11,
                            color: Colors.grey[500],
                          ),
                        ),
                        Text(
                          '£${currentTuitionFee.toInt()}',
                          style: TextStyle(
                            fontSize: 13,
                            fontWeight: FontWeight.w600,
                            color: Colors.grey[800],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Expanded(
                child: SliderTheme(
                  data: SliderThemeData(
                    activeTrackColor: Colors.teal,
                    inactiveTrackColor: Colors.grey[300],
                    thumbColor: Colors.teal,
                    overlayColor: Colors.teal.withOpacity(0.2),
                    thumbShape:
                        const RoundSliderThumbShape(enabledThumbRadius: 8),
                    trackHeight: 3,
                  ),
                  child: Slider(
                    value: currentTuitionFee,
                    min: 0,
                    max: 50000,
                    onChanged: (value) =>
                        setState(() => currentTuitionFee = value),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  // Helper method to build checkbox sections with icon and label
  Widget _buildCheckboxSection({
    required IconData icon,
    required String label,
    required List<Widget> children,
  }) {
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              Icon(icon, size: 18, color: Colors.grey[700]),
              const SizedBox(width: 8),
              Text(
                label,
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.grey[700],
                ),
              ),
            ],
          ),
          const SizedBox(height: 16),
          ...children,
        ],
      ),
    );
  }

  // Helper method to build individual checkbox with label
  Widget _buildCheckbox({
    required String label,
    required bool value,
    required Function(bool?) onChanged,
  }) {
    return Row(
      children: [
        SizedBox(
          width: 20,
          height: 20,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            activeColor: Colors.teal,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(4),
            ),
            side: BorderSide(
              color: Colors.grey[400]!,
              width: 1.5,
            ),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: TextStyle(
            fontSize: 14,
            color: Colors.grey[700],
          ),
        ),
      ],
    );
  }
}
