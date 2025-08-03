import 'package:flutter/material.dart';

class WidgetListPage extends StatelessWidget {
  const WidgetListPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFF8F9FA),
      appBar: AppBar(
        title: const Text(
          'Flutter Widgets',
          style: TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
        backgroundColor: const Color(0xFF6C63FF),
        elevation: 0,
        iconTheme: const IconThemeData(color: Colors.white),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_rounded),
          onPressed: () => Navigator.pop(context),
        ),
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [Color(0xFF6C63FF), Color(0xFF8B5FBF)],
            ),
          ),
        ),
      ),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [Color(0xFFF8F9FA), Color(0xFFE9ECEF)],
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: GridView.count(
            crossAxisCount: 2,
            crossAxisSpacing: 20,
            mainAxisSpacing: 20,
            childAspectRatio: 0.85,
            children: [
              _buildWidgetCard(
                context,
                'Container',
                Icons.crop_square_rounded,
                const Color(0xFF4ECDC4),
                const Color(0xFF44A08D),
              ),
              _buildWidgetCard(
                context,
                'Text',
                Icons.text_fields_rounded,
                const Color(0xFFFF6B6B),
                const Color(0xFFEE5A24),
              ),
              _buildWidgetCard(
                context,
                'Button',
                Icons.touch_app_rounded,
                const Color(0xFF4DABF7),
                const Color(0xFF339AF0),
              ),
              _buildWidgetCard(
                context,
                'Image',
                Icons.image_rounded,
                const Color(0xFFFFB347),
                const Color(0xFFFF8C42),
              ),
              _buildWidgetCard(
                context,
                'ListView',
                Icons.list_alt_rounded,
                const Color(0xFF9C88FF),
                const Color(0xFF8B5FBF),
              ),
              _buildWidgetCard(
                context,
                'Column',
                Icons.view_column_rounded,
                const Color(0xFF51CF66),
                const Color(0xFF40C057),
              ),
              _buildWidgetCard(
                context,
                'Row',
                Icons.view_week_rounded,
                const Color(0xFFFF8CC8),
                const Color(0xFFFF6B9D),
              ),
              _buildWidgetCard(
                context,
                'Stack',
                Icons.layers_rounded,
                const Color(0xFFFFC947),
                const Color(0xFFFFB922),
              ),
              _buildWidgetCard(
                context,
                'Chip',
                Icons.label_rounded,
                const Color(0xFF7C3AED),
                const Color(0xFF5B21B6),
              ),
              _buildWidgetCard(
                context,
                'InkWell',
                Icons.touch_app_outlined,
                const Color(0xFFEC4899),
                const Color(0xBE185D),
              ),
              _buildWidgetCard(
                context,
                'GestureDetector',
                Icons.pan_tool_rounded,
                const Color(0xFF059669),
                const Color(0xFF047857),
              ),
              _buildWidgetCard(
                context,
                'CircleAvatar',
                Icons.account_circle_rounded,
                const Color(0xFFEAB308),
                const Color(0xFFA16207),
              ),
              _buildWidgetCard(
                context,
                'StatefulWidget',
                Icons.refresh_rounded,
                const Color(0xFFDC2626),
                const Color(0xFFB91C1C),
              ),
              _buildWidgetCard(
                context,
                'Switch',
                Icons.toggle_on_rounded,
                const Color(0xFF0891B2),
                const Color(0xFF0E7490),
              ),
              _buildWidgetCard(
                context,
                'Slider',
                Icons.tune_rounded,
                const Color(0xFF7C2D12),
                const Color(0xFF92400E),
              ),
              _buildWidgetCard(
                context,
                'TextField',
                Icons.edit_rounded,
                const Color(0xFF1E40AF),
                const Color(0xFF1E3A8A),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildWidgetCard(
    BuildContext context,
    String widgetName,
    IconData icon,
    Color startColor,
    Color endColor,
  ) {
    return Card(
      elevation: 8,
      shadowColor: startColor.withOpacity(0.3),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: InkWell(
        onTap: () {
          // Navigate to widget detail page
          Navigator.pushNamed(context, '/widget_detail', arguments: widgetName);
        },
        borderRadius: BorderRadius.circular(20),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomRight,
              colors: [startColor, endColor],
            ),
            boxShadow: [
              BoxShadow(
                color: startColor.withOpacity(0.3),
                spreadRadius: 2,
                blurRadius: 8,
                offset: const Offset(0, 4),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                padding: const EdgeInsets.all(12),
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.2),
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Icon(icon, size: 40, color: Colors.white),
              ),
              const SizedBox(height: 16),
              Text(
                widgetName,
                style: const TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                  letterSpacing: 0.5,
                ),
                textAlign: TextAlign.center,
              ),
              const SizedBox(height: 4),
              Container(
                height: 2,
                width: 30,
                decoration: BoxDecoration(
                  color: Colors.white.withOpacity(0.8),
                  borderRadius: BorderRadius.circular(1),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
