import 'package:flutter/material.dart';
import 'package:flutter_projects/styles/app_styles.dart';

class TutorAvailabilityCalendar extends StatelessWidget {
    
    @override
    Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.darkBlue.withOpacity(0.8),
        borderRadius: BorderRadius.circular(18),
        border: Border.all(
          color: AppColors.orangeprimary.withOpacity(0.3),
          width: 1,
        ),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Mi Calendario de Horarios',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () => _showAddFreeTimeModal(),
                icon: Icon(Icons.add, color: Colors.white, size: 16),
                label: Text('Añadir',
                    style: TextStyle(color: Colors.white, fontSize: 12)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.orangeprimary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),
              ),
            ],
          ),
          SizedBox(height: 16),
          _buildInteractiveCalendar(),
        ],
      ),
    );
  }

  Widget _buildHeader() {
    returnRow(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Mi Calendario de Horarios',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.bold,
                  fontSize: 18,
                ),
              ),
              ElevatedButton.icon(
                onPressed: () => _showAddFreeTimeModal(),
                icon: Icon(Icons.add, color: Colors.white, size: 16),
                label: Text('Añadir',
                    style: TextStyle(color: Colors.white, fontSize: 12)),
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColors.orangeprimary,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8)),
                  padding: EdgeInsets.symmetric(horizontal: 12, vertical: 8),
                ),    
              ),
            ],
          ),
  }
}