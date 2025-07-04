import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AgeGroupPage extends StatefulWidget {
  @override
  _AgeGroupPageState createState() => _AgeGroupPageState();
}

class _AgeGroupPageState extends State<AgeGroupPage> {
  String? selectedGroup;
  final ageGroups = ['18–20', '21–25', '26–30', '31–35', '36+'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF4F6F8),
      appBar: AppBar(
        automaticallyImplyLeading: false,
        backgroundColor: Colors.white,
        elevation: 1,
        title: Text(
          "Select Age Group",
          style: GoogleFonts.poppins(
            color: Colors.black87,
            fontSize: 20,
            fontWeight: FontWeight.w600,
          ),
        ),
        centerTitle: true,
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      body: Center(
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(24),
          child: Container(
            padding: const EdgeInsets.all(24),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(16),
              boxShadow: [
                BoxShadow(
                  color: Colors.black12,
                  blurRadius: 10,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Choose your age group",
                  style: GoogleFonts.poppins(
                    fontSize: 18,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(height: 16),
                ...ageGroups.map(
                      (group) => RadioListTile<String>(
                    value: group,
                    groupValue: selectedGroup,
                    onChanged: (value) {
                      setState(() {
                        selectedGroup = value;
                      });
                    },
                    title: Text(
                      group,
                      style: GoogleFonts.poppins(
                        fontSize: 15,
                      ),
                    ),
                    activeColor: Colors.blueAccent,
                    contentPadding: EdgeInsets.zero,
                  ),
                ),
                const SizedBox(height: 24),
                SizedBox(
                  width: double.infinity,
                  height: 48,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blueAccent,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: selectedGroup != null ? () {
                      // Handle selected group (e.g., navigate, save, etc.)
                      ScaffoldMessenger.of(context).showSnackBar(
                        SnackBar(content: Text('Selected: $selectedGroup')),
                      );
                    } : null,
                    child: Text(
                      "Continue",
                      style: GoogleFonts.poppins(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
