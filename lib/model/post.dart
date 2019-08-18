class Post{
  //去除了const
    Post({
    this.title,
    this.author,
    this.imageUrl,
    this.description,

  });

  final String title; 
  final String author; 
  final String imageUrl; 
  final String description; 
  bool selected = false;
}


final List<Post> posts = [
  Post(
    title: 'myworld',
    author: 'Mike',
    imageUrl: 'http://seopic.699pic.com/photo/40159/7104.jpg_wh1200.jpg',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
  ),
  Post(
    title: 'mycastle',
    author: 'Sarah',
    imageUrl: 'http://seopic.699pic.com/photo/40159/2060.jpg_wh1200.jpg',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
  ),
  Post(
    title: 'origin society',
    author: 'Joey',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
    imageUrl: 'http://seopic.699pic.com/photo/40159/2060.jpg_wh1200.jpg',
  ),
  Post(
    title: 'myworld',
    author: 'Mike',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
    imageUrl: 'http://seopic.699pic.com/photo/40159/7104.jpg_wh1200.jpg',
  ),
  Post(
    title: 'mycastle',
    author: 'Sarah',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
    imageUrl: 'http://seopic.699pic.com/photo/40159/2060.jpg_wh1200.jpg',
  ),
  Post(
    title: 'origin society',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
    author: 'Joey',
    imageUrl: 'http://seopic.699pic.com/photo/40159/2060.jpg_wh1200.jpg',
  ),
  Post(
    
    title: 'myworld',
    author: 'Mike',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
    imageUrl: 'http://seopic.699pic.com/photo/40159/7104.jpg_wh1200.jpg',
  ),
  Post(
    title: 'mycastle',
    author: 'Sarah',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
    imageUrl: 'http://seopic.699pic.com/photo/40159/2060.jpg_wh1200.jpg',
  ),
  Post(
    title: 'origin society',
    author: 'Joey',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
    imageUrl: 'http://seopic.699pic.com/photo/40159/2060.jpg_wh1200.jpg',
  ),
  Post(
    title: 'myworld',
    author: 'Mike',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
    imageUrl: 'http://seopic.699pic.com/photo/40159/7104.jpg_wh1200.jpg',
  ),
  Post(
    title: 'mycastle',
    author: 'Sarah',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
    imageUrl: 'http://seopic.699pic.com/photo/40159/2060.jpg_wh1200.jpg',
  ),
  Post(
    title: 'origin society',
    author: 'Joey',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
    imageUrl: 'http://seopic.699pic.com/photo/40159/2060.jpg_wh1200.jpg',
  ),
  Post(
    title: 'myworld',
    author: 'Mike',
    imageUrl: 'http://seopic.699pic.com/photo/40159/7104.jpg_wh1200.jpg',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
  ),
  Post(
    title: 'mycastle',
    author: 'Sarah',
    imageUrl: 'http://seopic.699pic.com/photo/40159/2060.jpg_wh1200.jpg',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
  ),
  Post(
    title: 'origin society',
    author: 'Joey',
    imageUrl: 'http://seopic.699pic.com/photo/40159/2060.jpg_wh1200.jpg',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
  ),
  Post(
    title: 'myworld',
    author: 'Mike',
    imageUrl: 'http://seopic.699pic.com/photo/40159/7104.jpg_wh1200.jpg',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
  ),
  Post(
    title: 'mycastle',
    author: 'Sarah',
    imageUrl: 'http://seopic.699pic.com/photo/40159/2060.jpg_wh1200.jpg',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
  ),
  Post(
    title: 'origin society',
    author: 'Joey',
    imageUrl: 'http://seopic.699pic.com/photo/40159/2060.jpg_wh1200.jpg',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
  ),
  Post(
    title: 'myworld',
    author: 'Mike',
    imageUrl: 'http://seopic.699pic.com/photo/40159/7104.jpg_wh1200.jpg',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
  ),
  Post(
    title: 'mycastle',
    author: 'Sarah',
    imageUrl: 'http://seopic.699pic.com/photo/40159/2060.jpg_wh1200.jpg',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
  ),
  Post(
    title: 'origin society',
    author: 'Joey',
    imageUrl: 'http://seopic.699pic.com/photo/40159/2060.jpg_wh1200.jpg',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
  ),
  Post(
    title: 'myworld',
    author: 'Mike',
    imageUrl: 'http://seopic.699pic.com/photo/40159/7104.jpg_wh1200.jpg',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
  ),
  Post(
    title: 'mycastle',
    author: 'Sarah',
    imageUrl: 'http://seopic.699pic.com/photo/40159/2060.jpg_wh1200.jpg',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
  ),
  Post(
    title: 'origin society',
    author: 'Joey',
    imageUrl: 'http://seopic.699pic.com/photo/40159/2060.jpg_wh1200.jpg',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
  ),
  Post(
    title: 'myworld',
    author: 'Mike',
    imageUrl: 'http://seopic.699pic.com/photo/40159/7104.jpg_wh1200.jpg',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
  ),
  Post(
    title: 'mycastle',
    author: 'Sarah',
    imageUrl: 'http://seopic.699pic.com/photo/40159/2060.jpg_wh1200.jpg',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
  ),
  Post(
    title: 'origin society',
    author: 'Joey',
    imageUrl: 'http://seopic.699pic.com/photo/40159/2060.jpg_wh1200.jpg',
    description:'英雄联盟》还致力于推动全球电子竞技的发展，除了联动各赛区发展职业联赛、打造电竞体系之外，每年还会举办 “季中冠军赛”“全球总决赛”“All Star 全明星赛” 三大世界级赛事，获得了亿万玩家的喜爱，形成了自己独有的电子竞技文化,英雄联盟是一款多人竞技类游戏于2018年加入亚运会。',
  ),
];
