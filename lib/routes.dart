import 'package:componentesFlutter/pages/bubled_navigation_bar_page.dart';
import 'package:componentesFlutter/pages/circular_bottom_bar_page.dart';
import 'package:componentesFlutter/pages/clip_board_page.dart';
import 'package:componentesFlutter/pages/code_view_page.dart';
import 'package:componentesFlutter/pages/color_picker_page.dart';
import 'package:componentesFlutter/pages/conectivity_plugin_page.dart';
import 'package:componentesFlutter/pages/curved_navigation_bar_page.dart';
import 'package:componentesFlutter/pages/custom_clippers_page.dart';
import 'package:componentesFlutter/pages/foldable_side_bar_page.dart';
import 'package:componentesFlutter/pages/gifs_dialogs_page.dart';
import 'package:componentesFlutter/pages/home_page.dart';
import 'package:componentesFlutter/pages/image_picker_page.dart';
import 'package:componentesFlutter/pages/intro_view_page.dart';
import 'package:componentesFlutter/pages/lamp_navigation_bar_page.dart';
import 'package:componentesFlutter/pages/liquid_swiper_page.dart';
import 'package:componentesFlutter/pages/list_wheel_scroll_page.dart';
import 'package:componentesFlutter/pages/navigation_rail_page.dart';
import 'package:componentesFlutter/pages/palette_generator_plugin.dart';
import 'package:componentesFlutter/pages/pdf_view_page.dart';
import 'package:componentesFlutter/pages/quick_actions_page.dart';
import 'package:componentesFlutter/pages/radial_menu_page.dart';
import 'package:componentesFlutter/pages/scratcher_page.dart';
import 'package:componentesFlutter/pages/selectable_text_page.dart';
import 'package:componentesFlutter/pages/share_plugin_page.dart';
import 'package:componentesFlutter/pages/shrink_side_menu_page.dart';
import 'package:componentesFlutter/pages/snake_navigation_page.dart';
import 'package:componentesFlutter/pages/speedometer_page.dart';
import 'package:componentesFlutter/pages/spin_circle_bar_page..dart';
import 'package:componentesFlutter/pages/stepper_page.dart';
import 'package:componentesFlutter/pages/story_view_page.dart';
import 'package:componentesFlutter/pages/svg_icons_page.dart';
import 'package:componentesFlutter/pages/text_to_spech_page.dart';
import 'package:componentesFlutter/pages/url_launcher_page.dart';
import 'package:componentesFlutter/pages/vertical_card_pager_page.dart';
import 'package:componentesFlutter/pages/video_player_page.dart';
import 'package:componentesFlutter/pages/wave_drawer_page.dart';
import 'package:flutter/cupertino.dart';

Map<String, Widget Function(BuildContext)> routes = {
  'Home': (_) => HomePage(),
  'Bubled Navigation': (_) => BubledNavigationBarPage(),
  'Circular Bottom Bar': (_) => CircularBottomBarPage(),
  'Clip Board': (_) => ClipBoardPage(),
  'Code View': (_) => CodeViewPage(),
  'Color Picker': (_) => ColorPickerPage(),
  'Concectivity Plugin': (_) => ConectivityPluginPage(),
  'Curved Navigation Bar': (_) => CurvedNavigationBarPage(),
  'Custom Clippers': (_) => CustomClippersPage(),
  'Foldable Side Bar': (_) => FoldableSideBarPage(),
  'Gifs Dialogs': (_) => GifDialogsPage(),
  'Image Picker': (_) => ImagePickerPage(),
  'Intro View': (_) => IntroViewPage(),
  'Lamp Navigation Bar': (_) => LampNavigationBarPage(),
  'Liquid Swiper': (_) => LiquidSwipperPage(),
  'List Wheel': (_) => ListWheelScrollPage(),
  'Navigation Rail': (_) => NavigationRailPage(),
  'Palette generator': (_) => PaletteGeneratorPage(),
  'Pdf View': (_) => PdfViewPage(),
  'Quick Actions': (_) => QuickActionsPage(),
  'Radial Menu': (_) => RadialMenuPage(),
  'Scratcher Page': (_) => ScratcherPage(),
  'Selectable Text': (_) => SelectableTextPage(),
  'Share Plugin': (_) => SharePluginPage(),
  'Shrink Side Menu': (_) => ShrinkSideMenuPage(),
  'Snake navigation': (_) => SnakeNavigationPage(),
  'Speedometer': (_) => SpeedometerPage(),
  'Spin Circle Bar': (_) => SpinCircleBarPage(),
  'Stepper': (_) => StepperPage(),
  'Story View': (_) => StoryViewPage(),
  'Svg Icons': (_) => SvgIconsPage(),
  'Text to Spech': (_) => TextToSpechPage(),
  'Url launcher': (_) => UrlLauncherPage(),
  'Vertical Card Pager': (_) => VerticalCardPagerPage(),
  'Video Player': (_) => VideoPlayerPage(),
  'Wave Drawwer': (_) => WaveDrawerPage(),
};