class Travel {
  String name;
  String location;
  String url;
  String price;
  String overview;
  String itenary;

  Travel(this.name, this.location, this.url, this.price, this.overview,
      this.itenary);

  static List<Travel> generateTravelBlog() {
    return [
      Travel(
        'Wheaton River',
        'Canada',
        'assets/images/top1.jpg',
        'Starting from 6K per person',
        'Wheaton River offers one of the most breathtaking scenes in Canada.',
        'Located in the Yukon, the remote river boasts many photo ops from gorgeous icy shots of the forest, winding valleys, and a multitude of wildlife.',
      ),
      Travel(
        'Popeye Village',
        'Malta',
        'assets/images/top2.jpg',
        'Starting from 4K per person',
        'Originally it is a film set of the musical production Popeye is one of the best places to visit in Malta.',
        'The whole houses in the Popeye Village built with rustic and ramshackle wooden buildings and located just off Mellieha Bay.',
      ),
      Travel(
        'Arches National Park',
        'USA',
        'assets/images/top3.jpg',
        'Starting from 9K per person',
        'Located in Utah, this high desert landscape on the Colorado Plateau offers two of the key factors you need to see the Milky Way; it’s away from the main sources of light pollution, and it’s located at a very high elevation (5,000+ ft).The geological formations at Arches make you feel like you’re on another planet at night, and for many reasons, this is, in my opinion, the best place to photograph the Milky Way in the US.',
        'Day 1 : Cool of Sceneric Drive . See Stars. Day 2 : Do a sunrise hike at little arch. See Moab’s Best Art Gallery at Courthouse Wash',
      ),
      Travel(
        'Santorini',
        'Greece',
        'assets/images/top4.jpg',
        'Starting from 10K per person',
        'White-washed villages, dramatic coastline, scrumptious wine, and awe-inspiring caldera views: the list of things that people dream of when deciding to spend 3 days in Santorini is as long as it is accurate. This island dances in the dreams of so many visitors to Greece–us included–and we’re happy to report that Santorini more than lives up to expectations. We were blown away by this magnificent volcanic gem, which is so much more than its reputation as an #instagrammable backdrop (though it does live up to expectations there, too)–and after spending a few days in Santorini, we think you’ll agree.',
        'Day 1: Fira to Oia Hike & Sunset in Oia. Day 2: Exploring the Caldera Via Boat. Day 3: Exploring the Villages of Santorini + An Epic Wine Tour',
      ),
    ];
  }

  static List<Travel> generateMostPopular() {
    return [
      Travel(
        'Portstewart Strand',
        'Northern Ireland',
        'assets/images/bottom1.jpg',
        'Starting from 3K per person',
        'A beach for walkers and beach athletes.',
        'The two miles of Portstewart Strand are exceptionally well maintained, with every activity ascribed a dedicated zone.',
      ),
      Travel(
        'Bell Rock Lighthouse',
        'Scotland',
        'assets/images/bottom2.jpg',
        'Starting from 12K per person',
        'It’s a remarkable structure for both the fact, and that it stands in the North Sea.',
        'It stands 35 meters (115 feet) tall and is the oldest surviving sea-washed lighthouse in the world.',
      ),
      Travel(
        'Mount Logan',
        'Canada',
        'assets/images/bottom3.jpg',
        'Starting from 8K per person',
        'It is a part of Kluane National Park and Reserve.',
        'It is the second highest summit in North America and has the largest circumference of the base when compared to the several mountain ranges of the world map.',
      ),
      Travel(
          'Manali',
          'Himachal Pradesh',
          'assets/images/bottom4.jpg',
          'Starting from 8K per person',
          'New Manali is quite cramped up and touristy, whereas Old Manali is less crowded and a perfect place to stay. It is quite relaxing and serene surrounded by nature and only 3 kms from New Manali. Old Manali is what we would recommend if you want to experience the real Manali.',
          'Day 1 : Old Manali - Hidamba Temple - Vashisht Temple - Vashisht Hot Water Springs - Jogini Falls. Day 2 : Old Manali - Solang Valley - Rohtang Pass. Day 3 : Old Manali - Naggar Castle -Jana Falls - Mall Road Shopping'),
    ];
  }

  static List<Travel> activitiesBlog() {
    return [
      Travel(
          'Imagica Theme Park',
          'Pune',
          'assets/images/Offer1.jpg',
          'Starting from 2K per person',
          'Unique attractions, for the the first time in IndiaIndoor AC rides like Deep Space & RajasaurusThematic experiences like Mr. India & I for IndiaOutdoor roller coasters & ridesRestaurants & bars with multiple cuisinesShopping & lounge areas',
          'Day 1 - Unwind and relax at Novotel Imagicaa. Day 2 - Prepare for an adrenaline rush at Imagicaa theme park'),
      Travel(
        'The Matterhorn',
        'Switzerland',
        'assets/images/Offer2.jpg',
        'Starting from 4K per person',
        'The Matterhorn is a world famous peak, situated in the Swiss Alps. Its climb is one of the most popular in the world, as it is the birthplace of mountaineering. Depending on your skill level, there are a variety of routes to the summit, many of which suit beginners, through to routes of increased difficulty for the experienced veteran climbers.',
        'Day 1: Meet in Zermatt (early morning), review gear, condition and tour. Train ride to Rotenboden, ascent of Riffelhorn review of rock climbing techniques. Day 2: Lift ride to klein Matterhorn, traverse of Breithorn plateau and Di Verra glacier. Day 3:  Ascent and traverse of Breithorn. Return to Zermatt.',
      ),
    ];
  }
}
