import './map_providers.dart';
import 'package:latlong2/latlong.dart';

String serverIP = "137.184.90.240";

bool demoMode = false;
String companyName = "Rapidinho";
MapProvider mapProvider = MapProvider.mapBox;

// MapBox Configuration (Only if Map Provider is set to mapBox)
String mapBoxAccessToken =
    "sk.eyJ1IjoibWluaW1hbGlzdGljLWFwcHMiLCJhIjoiY2t3cWdtMmthMG1rcjJ2bnJtbms1c3gwdyJ9.O6U7-pbHZZzMRUE3nHsyhg";
String mapBoxUserId = "mapbox";
String mapBoxTileSetId = "streets-v11";

String loginTermsAndConditionsUrl = "";

String defaultCurrency = "BRL";
String defaultCountryCode = "+55";
const List<double> tipPresets = [10, 20, 50];

LatLng fallbackLocation = LatLng(-9.3769874, -36.7356812);

// Menu website url
String? websiteUrl = "http://rapidinho-app.com.br";
