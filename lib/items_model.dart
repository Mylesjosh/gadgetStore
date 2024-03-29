import 'package:flutter/material.dart';

class ItemsModel {
  final String name;
  final String image;
  double price;
  final String description1;
  final String description2;
  int quantity;

  ItemsModel(
      {required this.name, required this.image, this.price = 0, required this.description1,required this.description2,this.quantity = 1});
}

class CartProvider extends ChangeNotifier {
  List<ItemsModel> cartItems = [];

  void addToCart(ItemsModel item) {
    bool alreadyInCart = cartItems.contains(item);

    if(!alreadyInCart){
      cartItems.add(item);
      notifyListeners();
    }
  }

  void removeFromCart(ItemsModel item) {
    cartItems.remove(item);
    notifyListeners();
  }

  void incrementQuantity(ItemsModel item) {
    item.quantity++; // Increment the quantity
    notifyListeners();
  }

  void decrementQuantity(ItemsModel item) {
    if (item.quantity > 1) {
      item.quantity--; // Decrement the quantity, but ensure it doesn't go below 1
      notifyListeners();
    }
  }

  void updateQuantity(ItemsModel item){
     item.quantity;
  }

  int get cartCount => cartItems.length;
}

List<ItemsModel> items = [
  ItemsModel(name: "HP ProBook 4544",
      image: "assets/images/laptop.png",
      price: 599.99,
      description1: "Core i7 - 64GB RAM",
      description2: "Well-connected Notebook Sometimes in life, only a face-to-face conversation will do. Thanks to the optional HP HD camera with a wide dynamic range (WDR), you always come off looking your best during virtual conferences in bright and low-light conditions."),

  ItemsModel(name: "MacBook Pro 14",
      image: "assets/images/macbook.png",
      price: 9999.99,
      description1: "12th Gen - 1TB RAM",
      description2: "The new MacBook Pro delivers game-changing performance for pro users. Choose the powerful M1 Max to supercharge pro-level workflows while getting amazing battery life. And with an immersive 16-inch Liquid Retina XDR display and an array of pro ports, you can do more than ever with MacBook Pro."),
  ItemsModel(name: "Apple iPad Pro",
      image: "assets/images/ipad.png",
      price: 1599.99,
      description1: "Space Gray - 8th Gen",
      description2: "Powerful. Easy to use. Versatile. The new iPad has a beautiful 10.2-inch Retina display, powerful A13 Bionic chip, an Ultra Wide front camera with Center Stage, and works with Apple Pencil and the Smart Keyboard. iPad lets you do more, more easily. All for an incredible value."),

  ItemsModel(name: "Sunrise Watch",
      image: "assets/images/watch.png",
      price: 599.99,
      description1: "7G Network Activated",
      description2: "More than just a tracker, the Smartwatch from Sunrise is a motivator, coach, and companion. It's designed to give you insight and data on how well you perform your exercise of choice, your heart rate, stress, and other aspects of your health and fitness. The Watch also tracks your movement to automatically start gathering data on your specific exercise."),
  ItemsModel(name: "Apple IPad Pro 12.9 Inches",
      image: "assets/images/ipadpro.jpg",
      price: 2299.99,
      description1: "Wi-Fi + Cellular 256GB - Silver",
      description2: "The M2 chip is the next generation of Apple silicon, with a CPU that delivers faster performance and a GPU that provides faster graphics performance. With a faster Neural Engine to accelerate machine learning tasks and more memory bandwidth, M2 brings astonishing performance and capabilities to iPad Pro. So, you can create photorealistic 3D designs, build intricate AR models and play games with console-quality graphics at high frame rates faster than ever. All while enjoying all-day battery life."),
  ItemsModel(name: "Samsung Galaxy Tab A8 - 10.5",
      image: "assets/images/samtab2.jpg",
      price: 1599.99,
      description1: "(3GB RAM, 32GB ROM) Android 11",
      description2: "Samsung Galaxy Tab A8 - 10.5 (4GB RAM, 64GB ROM) Android 11 - 8MP + 5MP Selfie - 7040mAh - 4G LTE - SilverSamsung Galaxy Tab A8 - 10.5 (4GB RAM, 64GB ROM) Android 11 - 8MP + 5MP Selfie - 7040mAh - 4G LTE - - SilverSamsung Galaxy Tab A8 - 10.5 (4GB RAM, 64GB ROM) Android 11 - 8MP + 5MP Selfie - 7040mAh - 4G LTE - Silver"),
  ItemsModel(name: "Samsung Galaxy Tab S7 FE 12.4",
      image: "assets/images/samtab3.jpg",
      price: 1299.99,
      description1: "4GB RAM, 64GB ROM - 5G - Silver",
      description2: "Enjoy the sleekness of the Galaxy Tab S7 FE in your hands. The simple, unibody design looks refined with the minimal camera housing on the rear, and the slim form factor keeps your grip comfortable. In your choice of four iconic colors: Mystic Black, Mystic Silver, Mystic Green and Mystic Pink."),

  ItemsModel(name: "Airpods Max",
      image: "assets/images/airmax.jpg",
      price: 299.99,
      description1: "Winning Beat sound",
      description2: ""),
  ItemsModel(name: "Jbl P07 Wireless Headphone",
      image: "assets/images/jblheadset.jpg",
      price: 199.99,
      description1: "JBL pure bass sound",
      description2: "JBL P07 headphones Put on. Connect. Play.The JBL PO7 delivers powerful sound quality, which you loved every day. These headphones prepares you with excellent sound at any time pleasure, because it features JBL pure bass sound, JBL 32-mm-driver and has a universal one-button remote control is compatible with most smartphones. The JBL P07 headphone is easy and comfortable thanks to the soft ear pads and the padded headband. In addition, it allows the connection to Siri or Google Now, without that you have to use your mobile device you need. The JBL headphones are available in four fresh colors, he has a involvement free flat cable and it can be simply fold up for on the move. It offers a plug 'n' Go-Losung every moment of your life with music, with which you can enrich their lives."),
  ItemsModel(name: "Samsung Galaxy BudsLive",
      image: "assets/images/samsungear.jpg",
      price: 999.99,
      description1: "Earbud-Mystic Bronze",
      description2: "The Galaxy Wearable app is integral to the buds use. From it, you can set up the sound characteristics with six presets - Soft, Dynamic, Bass boost, Clear, Treble boost and Normal - enable and disable the active noise cancellation, issue software updates and choose what tapping on the Galaxy Buds Live does.A single tap on each bud will pause or resume playback. A double tap will prompt the next song, triple tap the previous one. You can customize what tap and hold does on each bud - it can bring up Bixby, Spotify, increase and decrease volume or activate or disable the noise cancellation."),
  ItemsModel(name: "Samsung Galaxy Watch ",
      image: "assets/images/samwatch.jpg",
      price: 299.99,
      description1: "Active 2 - 40mm – Silver",
      description2: "This smartwatch supports seven workout types, including swimming and running. If you love to run, the running coach function can give you advice in real-time. General health is monitored in multiple ways, from a sophisticated wrist-based heart monitor with 8 full photodiodes, to sleep and stress tracking. The Galaxy Watch Active2 can handle indoor and outdoor activities, even in rough conditions. It's IP68 rated with water-resistance up to 50m and has been constructed with military-grade durability."),
  ItemsModel(name: "Apple AIRPODS",
      image: "assets/images/applepod.jpg",
      price: 599.99,
      description1: "(3RD GENERATION)- WHITE",
      description2: "Spatial audio with dynamic head tracking places sounds all around you to create a three-dimensional listening experience for music, TV shows, movies, and more — immersing you in sounds from every direction so it feels like you’re in your very own concert hall or theater.An Apple-designed dynamic driver, powered by a custom amplifier, renders music in exceptionally detailed sound quality — so you revel in every tone, from deep, rich bass to crisp, clean highs."),
  ItemsModel(name: "Apple MacBook Air",
      image: "assets/images/macair.jpg",
      price: 2299.99,
      description1: "8GB - 256GB - M2 - Space Grey - 2022",
      description2: "M2 Performance The M2 chip starts the next generation of Apple silicon, with even more of the speed and power efficiency of M1. So you can get more done faster with a more powerful 8‑core CPU. Create captivating images and animations with up to a 10-core GPU. Work with more streams of 4K and 8K ProRes videos with the high‑performance media engine. And keep working — or playing — all day and into the night with up to 18 hours of battery life."),
  ItemsModel(name: "Hp 255 G8 AMD Ryzen",
      image: "assets/images/hpbook.jpg",
      price: 599.99,
      description1: "15.6, 4GB RAM/500GB HDD",
      description2: "The HP 255 G8 Notebook keeps up with mobile workstyles with its thin and light design. The HP 255 G8 PC’s beautiful display with its narrow border design and big screen-to-body ratio provides ample space for work or streaming content."),
  ItemsModel(name: "Asus TUF Gaming F15 FX516PC Intel Core I7",
      image: "assets/images/asuslap.jpg",
      price: 599.99,
      description1: "16GB / 512 SSD NVIDIA GPU 4GB",
      description2: "Asus TUF Dash F15 FX516PC-HN004W 15.6-inch FHD (1920 x 1080) 16:9 Intel® Core™ i7-11370H Processor 3.3 GHz (12M Cache, up to 4.8 GHz, 4 cores) NVIDIA® GeForce RTX™ 3050 Laptop GPU 4GB GDDR6 8GB DDR4 on board + 8GB DDR4-3200 SO-DIMM 512GB PCIe® 3.0 NVMe™ M.2 SSD Backlit Chiclet Keyboard Single Light Win 11 Home"),
  ItemsModel(name: "Apple IPhone 14 Pro Max",
      image: "assets/images/iphone14.jpg",
      price: 1299.99,
      description1: "6GB RAM/128GB ROM - Space Black",
      description2: "The best iPhone ever, version 2022, size XL - we have the iPhone 14 Pro Max. The list of novelties this year includes the notch morphing into a pill, the introduction of an Always-On display, and an all-new primary camera - and while you can get all of that on the 14 Pro, the extra screen estate and longevity coupled with the Max's 'ultimate' status mean it has a market niche of its own."),
  ItemsModel(name: "iPhone 15 Pro Max",
      image: "assets/images/iphone15.jpg",
      price: 1299.99,
      description1: "Super Retina XDR display",
      description2: "New Apple iPhone 15 Plus with dynamic Island, which bubbles up alerts and Live Activities. A new 48MP Main camera for super-high-resolution photos. 2x Telephoto. A durable color‑infused glass and aluminum design. Charging as easy as USB‑C. The iPhone 15 Pro Max display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 6.69 inches diagonally (actual viewable area is less)."),
  ItemsModel(name: "Apple IPhone 13 6.1",
      image: "assets/images/iphone13.jpg",
      price: 999.99,
      description1: "4GB RAM/128GB ROM IOS 15 - Blue",
      description2: "The Face ID notch that's been with us since the iPhone X was nobody's favorite, and perhaps its reincarnation as a pill is a step towards its eventual removal. But not before turning the eyesore into a feature - the pill is a Dynamic Island of notifications, blurring the line between hardware and software."),
  ItemsModel(name: "Samsung Galaxy Z Fold 5 5GB 7.6",
      image: "assets/images/samfold.jpg",
      price: 1599.99,
      description1: "12GB 512GB ROM Dual Sim - Blue",
      description2: "The Galaxy Z Fold5 of 2023 focuses on much-needed camera upgrades and throws in some subtle physical polishing, all the while maintaining the core concept of the productivity-driven phone-turns-tablet form factor.The camera setup of the Z Fold3,  Z fold4 used some relatively ancient hardware, and the new model changes most of it. Having in principle the same wide-ultra wide-telephoto arrangement, the Z Fold5 gets more reach on the long end and a larger sensor main camera, while the ultra-wide remains untouched. Mind you, it's still not a cutting-edge configuration - it\'s almost the same as the one on the Galaxy S22 (+) with some fine print in the autofocusing section."),
  ItemsModel(name: "Samsung Galaxy Z Fold 4 Dual SIM",
      image: "assets/images/fold4.jpg",
      price: 1999.99,
      description1: "12GB RAM, 512GB - Phantom Black",
      description2: "Samsung Galaxy Z Fold 4 - 7.6 (12GB RAM, 512GB ROM) Android 12 (50/12/12)MP + 10MP Selfie + 4MP Under Display - Dual Sim - Snapdragon 5G - 4400mAh - Phantom BlackNETWORK Technology GSM / CDMA / HSPA / EVDO / LTE / 5G2G bands GSM 850 / 900 / 1800 / 1900  CDMA 800 / 19003G bands HSDPA 850 / 900 / 1700(AWS) / 1900 / 2100  HSDPA 850 / 900 / 1900 / 2100  CDMA2000 1xEV-DO4G bands 1, 2, 3, 4, 5, 7, 8, 12, 13, 14, 18, 19, 20, 25, 26, 28, 30, 38, 39, 40, 41, 46, 48, 66, 715G bands 2, 5, 25, 41, 66, 71, 260, 261 SA/NSA/Sub6/mmWaveSpeed HSPA 42.2/5.76 Mbps, LTE-A (7CA) Cat20 2000/200 Mbps, 5G"),
  ItemsModel(name: "Samsung Galaxy Z Flip 4 - 6.7",
      image: "assets/images/samflip.jpg",
      price: 1999.99,
      description1: "10MP Selfie - 5G - Dual Sim - 3700mAh",
      description2: "Samsung has improved on the Galaxy Z Flip3 by tweaking all weak points both reviewers and users have agreed upon - low-light camera performance, battery life, charging speed. And, of course, the new Z Flip4 gets to boast the most current Android chip - the Snapdragon 8+ Gen 1."),
  ItemsModel(name: "Apple IPad 10th Gen 10.9",
      image: "assets/images/ipadp.jpg",
      price: 1599.99,
      description1: "Wi-Fi 64GB - Blue - 2022 - Model",
      description2: "The all-new and redesigned iPad is more capable and intuitive than ever before. With superfast wireless connectivity, an improved new all-screen design and a variety of features. You get powerful 12MP wide angled cameras and a multi-touch display with IPS technology. This iPad is equipped for superfast Wi-Fi connectivity."),
  ItemsModel(name: "Samsung Galaxy Tab A7 Lite",
      image: "assets/images/samtab.jpg",
      price: 2999.99,
      description1: "8.7-Inch 3GB RAM, 32GB ROM Nano SIM",
      description2: "The tablet comes with a 8.7-inch touchscreen display with a resolution of 1340x800 pixels. Samsung Galaxy Tab A7 Lite is powered by a 1.8GHz octa-core MediaTek Helio P22T (MT8768T) processor. It comes with 3GB of RAM. The Samsung Galaxy Tab A7 Lite runs Android 11 and is powered by a 5100mAh battery."),
];

List<ItemsModel> access = [
  ItemsModel(name: "Airpods Max",
    image: "assets/images/airmax.jpg",
    price: 299.99,
    description1: "Winning Beat sound",
    description2: "Apple-designed dynamic driver provides high-fidelity audio.Note : If the size of the earbud tips does not match the size of your ear canals or the headset is not worn properly in your ears, you may not obtain the correct sound qualities or call performance. Change the earbud tips to ones that fit more snugly in your ear. The sound is amazing and the bass super. This is perfect for the new year as a gift as well.",),
  ItemsModel(name: "Jbl P07 Wireless Headphone",
      image: "assets/images/jblheadset.jpg",
      price: 199.99,
      description1: "JBL pure bass sound",
      description2: "JBL P07 headphones Put on. Connect. Play.The JBL PO7 delivers powerful sound quality, which you loved every day. These headphones prepares you with excellent sound at any time pleasure, because it features JBL pure bass sound, JBL 32-mm-driver and has a universal one-button remote control is compatible with most smartphones. The JBL P07 headphone is easy and comfortable thanks to the soft ear pads and the padded headband. In addition, it allows the connection to Siri or Google Now, without that you have to use your mobile device you need. The JBL headphones are available in four fresh colors, he has a involvement free flat cable and it can be simply fold up for on the move. It offers a plug 'n' Go-Losung every moment of your life with music, with which you can enrich their lives."),
  ItemsModel(name: "Samsung Galaxy BudsLive",
      image: "assets/images/samsungear.jpg",
      price: 999.99,
      description1: "Earbud-Mystic Bronze",
      description2: "The Galaxy Wearable app is integral to the buds use. From it, you can set up the sound characteristics with six presets - Soft, Dynamic, Bass boost, Clear, Treble boost and Normal - enable and disable the active noise cancellation, issue software updates and choose what tapping on the Galaxy Buds Live does.A single tap on each bud will pause or resume playback. A double tap will prompt the next song, triple tap the previous one. You can customize what tap and hold does on each bud - it can bring up Bixby, Spotify, increase and decrease volume or activate or disable the noise cancellation."),
  ItemsModel(name: "Apple AIRPODS",
      image: "assets/images/applepod.jpg",
      price: 599.99,
      description1: "(3RD GENERATION)- WHITE",
      description2: "Spatial audio with dynamic head tracking places sounds all around you to create a three-dimensional listening experience for music, TV shows, movies, and more — immersing you in sounds from every direction so it feels like you’re in your very own concert hall or theater.An Apple-designed dynamic driver, powered by a custom amplifier, renders music in exceptionally detailed sound quality — so you revel in every tone, from deep, rich bass to crisp, clean highs."),
  ItemsModel(name: "Samsung Galaxy Watch",
      image: "assets/images/samwatch.jpg",
      price: 299.99,
      description1: "Active 2 - 40mm – Silver",
      description2: "This smartwatch supports seven workout types, including swimming and running. If you love to run, the running coach function can give you advice in real-time. General health is monitored in multiple ways, from a sophisticated wrist-based heart monitor with 8 full photodiodes, to sleep and stress tracking. The Galaxy Watch Active2 can handle indoor and outdoor activities, even in rough conditions. It's IP68 rated with water-resistance up to 50m and has been constructed with military-grade durability."),
  ItemsModel(name: "Sunrise Watch",
      image: "assets/images/watch.png",
      price: 599.99,
      description1: "7G Network Activated",
      description2: "More than just a tracker, the Smartwatch from Sunrise is a motivator, coach, and companion. It's designed to give you insight and data on how well you perform your exercise of choice, your heart rate, stress, and other aspects of your health and fitness. The Watch also tracks your movement to automatically start gathering data on your specific exercise."),
];

List<ItemsModel> computer = [
  ItemsModel(name: "HP ProBook 4544",
      image: "assets/images/laptop.png",
      price: 599.99,
      description1: "Core i7 - 64GB RAM",
      description2: "Well-connected Notebook Sometimes in life, only a face-to-face conversation will do. Thanks to the optional HP HD camera with a wide dynamic range (WDR), you always come off looking your best during virtual conferences in bright and low-light conditions."),
  ItemsModel(name: "MacBook Pro 14",
      image: "assets/images/macbook.png",
      price: 9999.99,
      description1: "12th Gen - 1TB RAM",
      description2: "The new MacBook Pro delivers game-changing performance for pro users. Choose the powerful M1 Max to supercharge pro-level workflows while getting amazing battery life. And with an immersive 16-inch Liquid Retina XDR display and an array of pro ports, you can do more than ever with MacBook Pro."),
  ItemsModel(name: "Hp 255 G8 AMD Ryzen",
      image: "assets/images/hpbook.jpg",
      price: 599.99,
      description1: "15.6, 4GB RAM/500GB HDD",
      description2: "The HP 255 G8 Notebook keeps up with mobile workstyles with its thin and light design. The HP 255 G8 PC’s beautiful display with its narrow border design and big screen-to-body ratio provides ample space for work or streaming content."),
  ItemsModel(name: "Apple MacBook Air",
      image: "assets/images/macair.jpg",
      price: 2299.99,
      description1: "8GB - 256GB - M2 - Space Grey",
      description2: "M2 Performance The M2 chip starts the next generation of Apple silicon, with even more of the speed and power efficiency of M1. So you can get more done faster with a more powerful 8‑core CPU. Create captivating images and animations with up to a 10-core GPU. Work with more streams of 4K and 8K ProRes videos with the high‑performance media engine. And keep working — or playing — all day and into the night with up to 18 hours of battery life."),
  ItemsModel(name: "Asus TUF Gaming F15 FX516PC Intel Core I7",
      image: "assets/images/asuslap.jpg",
      price: 599.99,
      description1: "16GB / 512 SSD NVIDIA GPU 4GB",
      description2: "Asus TUF Dash F15 FX516PC-HN004W 15.6-inch FHD (1920 x 1080) 16:9 Intel® Core™ i7-11370H Processor 3.3 GHz (12M Cache, up to 4.8 GHz, 4 cores) NVIDIA® GeForce RTX™ 3050 Laptop GPU 4GB GDDR6 8GB DDR4 on board + 8GB DDR4-3200 SO-DIMM 512GB PCIe® 3.0 NVMe™ M.2 SSD Backlit Chiclet Keyboard Single Light Win 11 Home"),
  ItemsModel(name: "Asus TUF Gaming F15 FX506HC Intel Core I5 16GB ",
      image: "assets/images/asus2.jpg",
      price: 299.99,
      description1: "512GB SSD NVIDIA 4GB - Black",
      description2: "Armed for combat, the TUF Gaming F15 features up to a 10th Gen Intel® Core™ i5 CPU with 4 cores and to tear through serious gaming, streaming, and heavy duty multitasking. Paired with up to a GeForce® GTX 1650 discrete 4GB GDDR6 GPU, it can pump out reliably high frame rates in a wide range of games. Accelerate load times across a massive collection with an up to 512GB NVMe PCIe® SSD."),
];

List<ItemsModel> phone = [
  ItemsModel(name: "Apple IPhone 14 Pro Max",
      image: "assets/images/iphone14.jpg",
      price: 1299.99,
      description1: "6GB RAM/128GB ROM IOS 16",
      description2: "The best iPhone ever, version 2022, size XL - we have the iPhone 14 Pro Max. The list of novelties this year includes the notch morphing into a pill, the introduction of an Always-On display, and an all-new primary camera - and while you can get all of that on the 14 Pro, the extra screen estate and longevity coupled with the Max's 'ultimate' status mean it has a market niche of its own."),
  ItemsModel(name: "iPhone 15 Pro Max",
      image: "assets/images/iphone15.jpg",
      price: 1299.99,
      description1: "Super Retina XDR display",
      description2: "New Apple iPhone 15 Plus with dynamic Island, which bubbles up alerts and Live Activities. A new 48MP Main camera for super-high-resolution photos. 2x Telephoto. A durable color‑infused glass and aluminum design. Charging as easy as USB‑C. The iPhone 15 Pro Max display has rounded corners that follow a beautiful curved design, and these corners are within a standard rectangle. When measured as a standard rectangular shape, the screen is 6.69 inches diagonally (actual viewable area is less)."),
  ItemsModel(name: "Apple IPhone 13 6.1",
      image: "assets/images/iphone13.jpg",
      price: 999.99,
      description1: "4GB RAM/128GB ROM IOS 15 - Blue",
      description2: "The Face ID notch that's been with us since the iPhone X was nobody's favorite, and perhaps its reincarnation as a pill is a step towards its eventual removal. But not before turning the eyesore into a feature - the pill is a Dynamic Island of notifications, blurring the line between hardware and software."),
  ItemsModel(name: "Samsung Galaxy Z Fold 5 5GB 7.6",
      image: "assets/images/samfold.jpg",
      price: 1599.99,
      description1: "12GB 512GB ROM Dual Sim - Blue",
      description2: "The Galaxy Z Fold5 of 2023 focuses on much-needed camera upgrades and throws in some subtle physical polishing, all the while maintaining the core concept of the productivity-driven phone-turns-tablet form factor.The camera setup of the Z Fold3,  Z fold4 used some relatively ancient hardware, and the new model changes most of it. Having in principle the same wide-ultra wide-telephoto arrangement, the Z Fold5 gets more reach on the long end and a larger sensor main camera, while the ultra-wide remains untouched. Mind you, it's still not a cutting-edge configuration - it's almost the same as the one on the Galaxy S22 (+) with some fine print in the autofocusing section."),
  ItemsModel(name: "Samsung Galaxy Z Fold 4 Dual SIM",
      image: "assets/images/fold4.jpg",
      price: 1999.99,
      description1: "12GB RAM, 512GB - Phantom Black",
      description2: "Samsung Galaxy Z Fold 4 - 7.6 (12GB RAM, 512GB ROM) Android 12 (50/12/12)MP + 10MP Selfie + 4MP Under Display - Dual Sim - Snapdragon 5G - 4400mAh - Phantom BlackNETWORK Technology GSM / CDMA / HSPA / EVDO / LTE / 5G2G bands GSM 850 / 900 / 1800 / 1900  CDMA 800 / 19003G bands HSDPA 850 / 900 / 1700(AWS) / 1900 / 2100  HSDPA 850 / 900 / 1900 / 2100  CDMA2000 1xEV-DO4G bands 1, 2, 3, 4, 5, 7, 8, 12, 13, 14, 18, 19, 20, 25, 26, 28, 30, 38, 39, 40, 41, 46, 48, 66, 715G bands 2, 5, 25, 41, 66, 71, 260, 261 SA/NSA/Sub6/mmWaveSpeed HSPA 42.2/5.76 Mbps, LTE-A (7CA) Cat20 2000/200 Mbps, 5G"),
  ItemsModel(name: "Samsung Galaxy Z Flip 4 - 6.7",
      image: "assets/images/samflip.jpg",
      price: 1999.99,
      description1: "10MP Selfie - 5G - Dual Sim -3700mAh",
      description2: "Samsung has improved on the Galaxy Z Flip3 by tweaking all weak points both reviewers and users have agreed upon - low-light camera performance, battery life, charging speed. And, of course, the new Z Flip4 gets to boast the most current Android chip - the Snapdragon 8+ Gen 1."),
];

List<ItemsModel> tab = [
  ItemsModel(name: "Apple IPad 10th Gen 10.9",
      image: "assets/images/ipadp.jpg",
      price: 1599.99,
      description1: "Wi-Fi 64GB - Blue - 2022 - Model",
      description2: "The all-new and redesigned iPad is more capable and intuitive than ever before. With superfast wireless connectivity, an improved new all-screen design and a variety of features. You get powerful 12MP wide angled cameras and a multi-touch display with IPS technology. This iPad is equipped for superfast Wi-Fi connectivity."),
  ItemsModel(name: "Samsung Galaxy Tab A7 Lite",
      image: "assets/images/samtab.jpg",
      price: 2999.99,
      description1: "8.7-Inch 3GB RAM, 32GB ROM Android",
      description2: "The tablet comes with a 8.7-inch touchscreen display with a resolution of 1340x800 pixels. Samsung Galaxy Tab A7 Lite is powered by a 1.8GHz octa-core MediaTek Helio P22T (MT8768T) processor. It comes with 3GB of RAM. The Samsung Galaxy Tab A7 Lite runs Android 11 and is powered by a 5100mAh battery."),
  ItemsModel(name: "Apple iPad Pro",
      image: "assets/images/ipad.png",
      price: 1599.99,
      description1: "Space Gray - 8th Gen",
      description2: "Powerful. Easy to use. Versatile. The new iPad has a beautiful 10.2-inch Retina display, powerful A13 Bionic chip, an Ultra Wide front camera with Center Stage, and works with Apple Pencil and the Smart Keyboard. iPad lets you do more, more easily. All for an incredible value."),
  ItemsModel(name: "Apple IPad Pro 12.9 Inches",
      image: "assets/images/ipadpro.jpg",
      price: 2299.99,
      description1: "Wi-Fi + Cellular 256GB - Silver",
      description2: "The M2 chip is the next generation of Apple silicon, with a CPU that delivers faster performance and a GPU that provides faster graphics performance. With a faster Neural Engine to accelerate machine learning tasks and more memory bandwidth, M2 brings astonishing performance and capabilities to iPad Pro. So, you can create photorealistic 3D designs, build intricate AR models and play games with console-quality graphics at high frame rates faster than ever. All while enjoying all-day battery life."),
  ItemsModel(name: "Samsung Galaxy Tab A8 - 10.5",
      image: "assets/images/samtab2.jpg",
      price: 1599.99,
      description1: "(3GB RAM, 32GB ROM) Android 11",
      description2: "Samsung Galaxy Tab A8 - 10.5 (4GB RAM, 64GB ROM) Android 11 - 8MP + 5MP Selfie - 7040mAh - 4G LTE - SilverSamsung Galaxy Tab A8 - 10.5 (4GB RAM, 64GB ROM) Android 11 - 8MP + 5MP Selfie - 7040mAh - 4G LTE - - SilverSamsung Galaxy Tab A8 - 10.5 (4GB RAM, 64GB ROM) Android 11 - 8MP + 5MP Selfie - 7040mAh - 4G LTE - Silver"),
  ItemsModel(name: "Samsung Galaxy Tab S7 FE 12.4",
      image: "assets/images/samtab3.jpg",
      price: 1299.99,
      description1: "4GB RAM, 64GB ROM - 5G - Silver",
      description2: "Enjoy the sleekness of the Galaxy Tab S7 FE in your hands. The simple, unibody design looks refined with the minimal camera housing on the rear, and the slim form factor keeps your grip comfortable. In your choice of four iconic colors: Mystic Black, Mystic Silver, Mystic Green and Mystic Pink."),
];