import 'package:flutter/material.dart';

class WidgetDetailPage extends StatelessWidget {
  final String widgetName;

  const WidgetDetailPage({super.key, required this.widgetName});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
            colors: [Color(0xFF6C63FF), Color(0xFF8B5FBF)],
          ),
        ),
        child: SafeArea(
          child: Column(
            children: [
              // Custom App Bar
              Container(
                padding: const EdgeInsets.all(16),
                child: Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        color: Colors.white.withOpacity(0.2),
                        borderRadius: BorderRadius.circular(12),
                      ),
                      child: IconButton(
                        icon: const Icon(
                          Icons.arrow_back_ios_new_rounded,
                          color: Colors.white,
                        ),
                        onPressed: () => Navigator.pop(context),
                      ),
                    ),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Text(
                        '$widgetName Widget',
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ],
                ),
              ),

              // Content Area
              Expanded(
                child: Container(
                  margin: const EdgeInsets.only(top: 20),
                  decoration: const BoxDecoration(
                    color: Color(0xFFF8F9FA),
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30),
                    ),
                  ),
                  child: Padding(
                    padding: const EdgeInsets.all(24.0),
                    child: SingleChildScrollView(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          // Hero Icon Section
                          Center(
                            child: Container(
                              padding: const EdgeInsets.all(24),
                              decoration: BoxDecoration(
                                gradient: LinearGradient(
                                  begin: Alignment.topLeft,
                                  end: Alignment.bottomRight,
                                  colors: [
                                    _getWidgetColor(widgetName),
                                    _getWidgetColor(
                                      widgetName,
                                    ).withOpacity(0.7),
                                  ],
                                ),
                                borderRadius: BorderRadius.circular(24),
                                boxShadow: [
                                  BoxShadow(
                                    color: _getWidgetColor(
                                      widgetName,
                                    ).withOpacity(0.3),
                                    spreadRadius: 2,
                                    blurRadius: 12,
                                    offset: const Offset(0, 6),
                                  ),
                                ],
                              ),
                              child: Icon(
                                _getWidgetIcon(widgetName),
                                size: 80,
                                color: Colors.white,
                              ),
                            ),
                          ),
                          const SizedBox(height: 32),

                          // Widget Title
                          Center(
                            child: Text(
                              '$widgetName Widget',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: _getWidgetColor(widgetName),
                                letterSpacing: 0.5,
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),

                          // Description Card
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.description_rounded,
                                      color: _getWidgetColor(widgetName),
                                      size: 24,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Description',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: _getWidgetColor(widgetName),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 12),
                                Text(
                                  _getWidgetDescription(widgetName),
                                  style: TextStyle(
                                    fontSize: 16,
                                    height: 1.6,
                                    color: Colors.grey[700],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 24),

                          // Properties Card
                          Container(
                            padding: const EdgeInsets.all(20),
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(16),
                              boxShadow: [
                                BoxShadow(
                                  color: Colors.grey.withOpacity(0.1),
                                  spreadRadius: 1,
                                  blurRadius: 8,
                                  offset: const Offset(0, 2),
                                ),
                              ],
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  children: [
                                    Icon(
                                      Icons.settings_rounded,
                                      color: _getWidgetColor(widgetName),
                                      size: 24,
                                    ),
                                    const SizedBox(width: 8),
                                    Text(
                                      'Common Properties',
                                      style: TextStyle(
                                        fontSize: 20,
                                        fontWeight: FontWeight.bold,
                                        color: _getWidgetColor(widgetName),
                                      ),
                                    ),
                                  ],
                                ),
                                const SizedBox(height: 16),
                                ..._getWidgetProperties(widgetName).map(
                                  (property) => Container(
                                    margin: const EdgeInsets.only(bottom: 12),
                                    padding: const EdgeInsets.all(12),
                                    decoration: BoxDecoration(
                                      color: _getWidgetColor(
                                        widgetName,
                                      ).withOpacity(0.05),
                                      borderRadius: BorderRadius.circular(8),
                                      border: Border.all(
                                        color: _getWidgetColor(
                                          widgetName,
                                        ).withOpacity(0.1),
                                      ),
                                    ),
                                    child: Row(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Icon(
                                          Icons.check_circle_rounded,
                                          color: _getWidgetColor(widgetName),
                                          size: 20,
                                        ),
                                        const SizedBox(width: 12),
                                        Expanded(
                                          child: Text(
                                            property,
                                            style: TextStyle(
                                              fontSize: 15,
                                              color: Colors.grey[700],
                                              height: 1.4,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          const SizedBox(height: 32),

                          // Back Button
                          Center(
                            child: Container(
                              width: double.infinity,
                              height: 56,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(28),
                                gradient: LinearGradient(
                                  begin: Alignment.centerLeft,
                                  end: Alignment.centerRight,
                                  colors: [
                                    _getWidgetColor(widgetName),
                                    _getWidgetColor(
                                      widgetName,
                                    ).withOpacity(0.8),
                                  ],
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: _getWidgetColor(
                                      widgetName,
                                    ).withOpacity(0.4),
                                    spreadRadius: 2,
                                    blurRadius: 12,
                                    offset: const Offset(0, 6),
                                  ),
                                ],
                              ),
                              child: ElevatedButton.icon(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                icon: const Icon(
                                  Icons.arrow_back_ios_new_rounded,
                                  color: Colors.white,
                                ),
                                label: const Text(
                                  'Back to Widget List',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Colors.white,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                style: ElevatedButton.styleFrom(
                                  backgroundColor: Colors.transparent,
                                  shadowColor: Colors.transparent,
                                  shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(28),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(height: 24),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Color _getWidgetColor(String widgetName) {
    switch (widgetName.toLowerCase()) {
      case 'container':
        return const Color(0xFF4ECDC4);
      case 'text':
        return const Color(0xFFFF6B6B);
      case 'button':
        return const Color(0xFF4DABF7);
      case 'image':
        return const Color(0xFFFFB347);
      case 'listview':
        return const Color(0xFF9C88FF);
      case 'column':
        return const Color(0xFF51CF66);
      case 'row':
        return const Color(0xFFFF8CC8);
      case 'stack':
        return const Color(0xFFFFC947);
      case 'chip':
        return const Color(0xFF7C3AED);
      case 'inkwell':
        return const Color(0xFFEC4899);
      case 'gesturedetector':
        return const Color(0xFF059669);
      case 'circleavatar':
        return const Color(0xFFEAB308);
      case 'statefulwidget':
        return const Color(0xFFDC2626);
      case 'switch':
        return const Color(0xFF0891B2);
      case 'slider':
        return const Color(0xFF7C2D12);
      case 'textfield':
        return const Color(0xFF1E40AF);
      default:
        return const Color(0xFF6C63FF);
    }
  }

  IconData _getWidgetIcon(String widgetName) {
    switch (widgetName.toLowerCase()) {
      case 'container':
        return Icons.crop_square_rounded;
      case 'text':
        return Icons.text_fields_rounded;
      case 'button':
        return Icons.touch_app_rounded;
      case 'image':
        return Icons.image_rounded;
      case 'listview':
        return Icons.list_alt_rounded;
      case 'column':
        return Icons.view_column_rounded;
      case 'row':
        return Icons.view_week_rounded;
      case 'stack':
        return Icons.layers_rounded;
      case 'chip':
        return Icons.label_rounded;
      case 'inkwell':
        return Icons.touch_app_outlined;
      case 'gesturedetector':
        return Icons.pan_tool_rounded;
      case 'circleavatar':
        return Icons.account_circle_rounded;
      case 'statefulwidget':
        return Icons.refresh_rounded;
      case 'switch':
        return Icons.toggle_on_rounded;
      case 'slider':
        return Icons.tune_rounded;
      case 'textfield':
        return Icons.edit_rounded;
      default:
        return Icons.widgets;
    }
  }

  String _getWidgetDescription(String widgetName) {
    switch (widgetName.toLowerCase()) {
      case 'container':
        return 'A convenience widget that combines common painting, positioning, and sizing widgets. It\'s one of the most commonly used widgets in Flutter for creating rectangular visual elements.';
      case 'text':
        return 'A widget that displays a string of text with a single style. It\'s used to display textual information in your app with various styling options.';
      case 'button':
        return 'Interactive widgets that respond to user taps. Flutter provides several button types like ElevatedButton, TextButton, and OutlinedButton for different use cases.';
      case 'image':
        return 'A widget that displays an image from various sources like assets, network, file, or memory. It supports different image formats and provides various display options.';
      case 'listview':
        return 'A scrollable list of widgets arranged linearly. It\'s perfect for displaying a large number of items efficiently by only building visible widgets.';
      case 'column':
        return 'A widget that displays its children in a vertical array. It\'s used to arrange widgets vertically on the screen with various alignment options.';
      case 'row':
        return 'A widget that displays its children in a horizontal array. It\'s used to arrange widgets horizontally on the screen with various alignment options.';
      case 'stack':
        return 'A widget that positions its children relative to the edges of its box. It allows widgets to overlap each other, useful for creating layered layouts.';
      case 'chip':
        return 'A material design chip widget. It displays a small piece of information as a compact element, often used for tags, choices, or actions in a condensed form.';
      case 'inkwell':
        return 'A rectangular area of material that responds to touch events. It provides visual feedback when tapped, creating ripple effects and handling gesture interactions.';
      case 'gesturedetector':
        return 'A widget that detects gestures like taps, drags, and other touch interactions. It\'s invisible but provides a powerful way to handle user input without visual feedback.';
      case 'circleavatar':
        return 'A circle that represents a user with an image, icon, or initials. Commonly used in user profiles, contact lists, and anywhere user representation is needed.';
      case 'statefulwidget':
        return 'A widget that has mutable state. Unlike StatelessWidget, it can rebuild itself when its internal state changes, making it perfect for interactive and dynamic content.';
      case 'switch':
        return 'A material design switch widget. It\'s used to toggle between on/off or true/false states, providing a clear visual indication of the current state.';
      case 'slider':
        return 'A material design slider widget. It allows users to select a value from a range by sliding a thumb along a track, perfect for adjusting settings or values.';
      case 'textfield':
        return 'A material design text field widget. It allows users to input and edit text, providing various input types, validation, and formatting options.';
      default:
        return 'A Flutter widget with various properties and use cases in mobile app development.';
    }
  }

  List<String> _getWidgetProperties(String widgetName) {
    switch (widgetName.toLowerCase()) {
      case 'container':
        return [
          'width: Sets the width of the container',
          'height: Sets the height of the container',
          'color: Sets the background color',
          'padding: Adds internal spacing',
          'margin: Adds external spacing',
          'decoration: Adds borders, shadows, and gradients',
        ];
      case 'text':
        return [
          'style: Defines font size, color, weight, etc.',
          'textAlign: Controls text alignment',
          'overflow: Handles text overflow behavior',
          'maxLines: Limits the number of lines',
          'softWrap: Controls text wrapping',
        ];
      case 'button':
        return [
          'onPressed: Callback function when tapped',
          'child: The widget displayed inside the button',
          'style: Defines appearance like color, shape, etc.',
          'enabled: Controls if the button is interactive',
        ];
      case 'image':
        return [
          'image: The image source (asset, network, etc.)',
          'width: Sets the image width',
          'height: Sets the image height',
          'fit: Controls how the image fits in its box',
          'alignment: Controls image alignment',
        ];
      case 'listview':
        return [
          'children: List of widgets to display',
          'scrollDirection: Vertical or horizontal scrolling',
          'physics: Controls scroll behavior',
          'shrinkWrap: Adjusts size to content',
          'itemCount: Number of items (for builder)',
        ];
      case 'column':
        return [
          'children: List of widgets to display vertically',
          'mainAxisAlignment: Vertical alignment',
          'crossAxisAlignment: Horizontal alignment',
          'mainAxisSize: How much vertical space to occupy',
        ];
      case 'row':
        return [
          'children: List of widgets to display horizontally',
          'mainAxisAlignment: Horizontal alignment',
          'crossAxisAlignment: Vertical alignment',
          'mainAxisSize: How much horizontal space to occupy',
        ];
      case 'stack':
        return [
          'children: List of widgets to stack',
          'alignment: Default alignment for children',
          'fit: How to size the non-positioned children',
          'clipBehavior: Whether to clip overflowing children',
        ];
      case 'chip':
        return [
          'label: Text or widget displayed on the chip',
          'avatar: Leading widget like CircleAvatar',
          'onDeleted: Callback when delete icon is pressed',
          'backgroundColor: Background color of the chip',
          'deleteIcon: Icon shown for deletion',
          'elevation: Shadow depth of the chip',
        ];
      case 'inkwell':
        return [
          'onTap: Callback when tapped',
          'onDoubleTap: Callback when double-tapped',
          'onLongPress: Callback when long-pressed',
          'borderRadius: Defines the ripple effect shape',
          'splashColor: Color of the splash effect',
          'highlightColor: Color when pressed and held',
        ];
      case 'gesturedetector':
        return [
          'onTap: Detects single tap gestures',
          'onDoubleTap: Detects double tap gestures',
          'onLongPress: Detects long press gestures',
          'onPanUpdate: Detects drag/pan movements',
          'onScaleUpdate: Detects pinch-to-zoom gestures',
          'child: The widget to detect gestures on',
        ];
      case 'circleavatar':
        return [
          'radius: Size of the circular avatar',
          'backgroundImage: Image to display in the circle',
          'backgroundColor: Background color when no image',
          'child: Widget to display (usually Text or Icon)',
          'foregroundColor: Color of the foreground content',
          'maxRadius: Maximum radius constraint',
        ];
      case 'statefulwidget':
        return [
          'createState(): Creates the mutable state object',
          'setState(): Triggers widget rebuild when called',
          'initState(): Called when widget is first created',
          'dispose(): Called when widget is removed',
          'build(): Returns the widget tree to display',
          'State lifecycle: Manages widget state changes',
        ];
      case 'switch':
        return [
          'value: Current on/off state of the switch',
          'onChanged: Callback when switch state changes',
          'activeColor: Color when switch is on',
          'inactiveThumbColor: Color of thumb when off',
          'inactiveTrackColor: Color of track when off',
          'materialTapTargetSize: Size of the tap target',
        ];
      case 'slider':
        return [
          'value: Current value of the slider',
          'onChanged: Callback when value changes',
          'min: Minimum value of the slider',
          'max: Maximum value of the slider',
          'divisions: Number of discrete divisions',
          'label: Text label shown above the thumb',
        ];
      case 'textfield':
        return [
          'controller: Controls the text being edited',
          'decoration: Input decoration and styling',
          'keyboardType: Type of keyboard to display',
          'obscureText: Hides text for passwords',
          'maxLines: Maximum number of lines',
          'onChanged: Callback when text changes',
        ];
      default:
        return [
          'Various properties depending on the widget type',
          'Common properties include styling and layout options',
        ];
    }
  }
}
