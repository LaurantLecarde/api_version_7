class MangaResponse {
  List<MangaData>? data;
  MangaMeta? meta;
  MangaLinks? links;

  MangaResponse({this.data, this.meta, this.links});

  MangaResponse.fromJson(Map<String, dynamic> json) {
    if (json['data'] != null) {
      data = <MangaData>[];
      json['data'].forEach((v) {
        data!.add(new MangaData.fromJson(v));
      });
    }
    meta = json['meta'] != null ? new MangaMeta.fromJson(json['meta']) : null;
    links =
        json['links'] != null ? new MangaLinks.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.data != null) {
      data['data'] = this.data!.map((v) => v.toJson()).toList();
    }
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    return data;
  }
}

class MangaData {
  String? id;
  String? type;
  MangaLinks? links;
  MangaAttributes? attributes;
  MangaRelationships? relationships;

  MangaData(
      {this.id, this.type, this.links, this.attributes, this.relationships});

  MangaData.fromJson(Map<String, dynamic> json) {
    id = json['id'];
    type = json['type'];
    links =
        json['links'] != null ? new MangaLinks.fromJson(json['links']) : null;
    attributes = json['attributes'] != null
        ? new MangaAttributes.fromJson(json['attributes'])
        : null;
    relationships = json['relationships'] != null
        ? new MangaRelationships.fromJson(json['relationships'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['id'] = this.id;
    data['type'] = this.type;
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    if (this.attributes != null) {
      data['attributes'] = this.attributes!.toJson();
    }
    if (this.relationships != null) {
      data['relationships'] = this.relationships!.toJson();
    }
    return data;
  }
}

class MangaLinks {
  String? self;

  MangaLinks({this.self});

  MangaLinks.fromJson(Map<String, dynamic> json) {
    self = json['self'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['self'] = this.self;
    return data;
  }
}

class MangaAttributes {
  String? createdAt;
  String? updatedAt;
  String? slug;
  String? synopsis;
  String? description;
  int? coverImageTopOffset;
  MangaTitles? titles;
  String? canonicalTitle;
  List<String>? abbreviatedTitles;
  String? averageRating;
  MangaRatingFrequencies? ratingFrequencies;
  int? userCount;
  int? favoritesCount;
  String? startDate;
  String? endDate;
  dynamic nextRelease;
  int? popularityRank;
  int? ratingRank;
  String? ageRating;
  String? ageRatingGuide;
  String? subtype;
  String? status;
  String? tba;
  MangaPosterImage? posterImage;
  MangaCoverImage? coverImage;
  int? chapterCount;
  int? volumeCount;
  String? serialization;
  String? mangaType;

  MangaAttributes(
      {this.createdAt,
      this.updatedAt,
      this.slug,
      this.synopsis,
      this.description,
      this.coverImageTopOffset,
      this.titles,
      this.canonicalTitle,
      this.abbreviatedTitles,
      this.averageRating,
      this.ratingFrequencies,
      this.userCount,
      this.favoritesCount,
      this.startDate,
      this.endDate,
      this.nextRelease,
      this.popularityRank,
      this.ratingRank,
      this.ageRating,
      this.ageRatingGuide,
      this.subtype,
      this.status,
      this.tba,
      this.posterImage,
      this.coverImage,
      this.chapterCount,
      this.volumeCount,
      this.serialization,
      this.mangaType});

  MangaAttributes.fromJson(Map<String, dynamic> json) {
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
    slug = json['slug'];
    synopsis = json['synopsis'];
    description = json['description'];
    coverImageTopOffset = json['coverImageTopOffset'];
    titles = json['titles'] != null
        ? new MangaTitles.fromJson(json['titles'])
        : null;
    canonicalTitle = json['canonicalTitle'];
    abbreviatedTitles = json['abbreviatedTitles'].cast<String>();
    averageRating = json['averageRating'];
    ratingFrequencies = json['ratingFrequencies'] != null
        ? new MangaRatingFrequencies.fromJson(json['ratingFrequencies'])
        : null;
    userCount = json['userCount'];
    favoritesCount = json['favoritesCount'];
    startDate = json['startDate'];
    endDate = json['endDate'];
    nextRelease = json['nextRelease'];
    popularityRank = json['popularityRank'];
    ratingRank = json['ratingRank'];
    ageRating = json['ageRating'];
    ageRatingGuide = json['ageRatingGuide'];
    subtype = json['subtype'];
    status = json['status'];
    tba = json['tba'];
    posterImage = json['posterImage'] != null
        ? new MangaPosterImage.fromJson(json['posterImage'])
        : null;
    coverImage = json['coverImage'] != null
        ? new MangaCoverImage.fromJson(json['coverImage'])
        : null;
    chapterCount = json['chapterCount'];
    volumeCount = json['volumeCount'];
    serialization = json['serialization'];
    mangaType = json['mangaType'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['createdAt'] = this.createdAt;
    data['updatedAt'] = this.updatedAt;
    data['slug'] = this.slug;
    data['synopsis'] = this.synopsis;
    data['description'] = this.description;
    data['coverImageTopOffset'] = this.coverImageTopOffset;
    if (this.titles != null) {
      data['titles'] = this.titles!.toJson();
    }
    data['canonicalTitle'] = this.canonicalTitle;
    data['abbreviatedTitles'] = this.abbreviatedTitles;
    data['averageRating'] = this.averageRating;
    if (this.ratingFrequencies != null) {
      data['ratingFrequencies'] = this.ratingFrequencies!.toJson();
    }
    data['userCount'] = this.userCount;
    data['favoritesCount'] = this.favoritesCount;
    data['startDate'] = this.startDate;
    data['endDate'] = this.endDate;
    data['nextRelease'] = this.nextRelease;
    data['popularityRank'] = this.popularityRank;
    data['ratingRank'] = this.ratingRank;
    data['ageRating'] = this.ageRating;
    data['ageRatingGuide'] = this.ageRatingGuide;
    data['subtype'] = this.subtype;
    data['status'] = this.status;
    data['tba'] = this.tba;
    if (this.posterImage != null) {
      data['posterImage'] = this.posterImage!.toJson();
    }
    if (this.coverImage != null) {
      data['coverImage'] = this.coverImage!.toJson();
    }
    data['chapterCount'] = this.chapterCount;
    data['volumeCount'] = this.volumeCount;
    data['serialization'] = this.serialization;
    data['mangaType'] = this.mangaType;
    return data;
  }
}

class MangaTitles {
  String? en;
  String? enJp;
  String? enUs;
  String? jaJp;

  MangaTitles({this.en, this.enJp, this.enUs, this.jaJp});

  MangaTitles.fromJson(Map<String, dynamic> json) {
    en = json['en'];
    enJp = json['en_jp'];
    enUs = json['en_us'];
    jaJp = json['ja_jp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['en'] = this.en;
    data['en_jp'] = this.enJp;
    data['en_us'] = this.enUs;
    data['ja_jp'] = this.jaJp;
    return data;
  }
}

class MangaRatingFrequencies {
  String? s2;
  String? s3;
  String? s4;
  String? s5;
  String? s6;
  String? s7;
  String? s8;
  String? s9;
  String? s10;
  String? s11;
  String? s12;
  String? s13;
  String? s14;
  String? s15;
  String? s16;
  String? s17;
  String? s18;
  String? s19;
  String? s20;

  MangaRatingFrequencies(
      {this.s2,
      this.s3,
      this.s4,
      this.s5,
      this.s6,
      this.s7,
      this.s8,
      this.s9,
      this.s10,
      this.s11,
      this.s12,
      this.s13,
      this.s14,
      this.s15,
      this.s16,
      this.s17,
      this.s18,
      this.s19,
      this.s20});

  MangaRatingFrequencies.fromJson(Map<String, dynamic> json) {
    s2 = json['2'];
    s3 = json['3'];
    s4 = json['4'];
    s5 = json['5'];
    s6 = json['6'];
    s7 = json['7'];
    s8 = json['8'];
    s9 = json['9'];
    s10 = json['10'];
    s11 = json['11'];
    s12 = json['12'];
    s13 = json['13'];
    s14 = json['14'];
    s15 = json['15'];
    s16 = json['16'];
    s17 = json['17'];
    s18 = json['18'];
    s19 = json['19'];
    s20 = json['20'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['2'] = this.s2;
    data['3'] = this.s3;
    data['4'] = this.s4;
    data['5'] = this.s5;
    data['6'] = this.s6;
    data['7'] = this.s7;
    data['8'] = this.s8;
    data['9'] = this.s9;
    data['10'] = this.s10;
    data['11'] = this.s11;
    data['12'] = this.s12;
    data['13'] = this.s13;
    data['14'] = this.s14;
    data['15'] = this.s15;
    data['16'] = this.s16;
    data['17'] = this.s17;
    data['18'] = this.s18;
    data['19'] = this.s19;
    data['20'] = this.s20;
    return data;
  }
}

class MangaPosterImage {
  String? tiny;
  String? large;
  String? small;
  String? medium;
  String? original;
  MangaMeta? meta;

  MangaPosterImage(
      {this.tiny,
      this.large,
      this.small,
      this.medium,
      this.original,
      this.meta});

  MangaPosterImage.fromJson(Map<String, dynamic> json) {
    tiny = json['tiny'];
    large = json['large'];
    small = json['small'];
    medium = json['medium'];
    original = json['original'];
    meta = json['meta'] != null ? new MangaMeta.fromJson(json['meta']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tiny'] = this.tiny;
    data['large'] = this.large;
    data['small'] = this.small;
    data['medium'] = this.medium;
    data['original'] = this.original;
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    return data;
  }
}

class MangaMeta {
  MangaDimensions? dimensions;

  MangaMeta({this.dimensions});

  MangaMeta.fromJson(Map<String, dynamic> json) {
    dimensions = json['dimensions'] != null
        ? new MangaDimensions.fromJson(json['dimensions'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.dimensions != null) {
      data['dimensions'] = this.dimensions!.toJson();
    }
    return data;
  }
}

class MangaDimensions {
  MangaTiny? tiny;
  MangaTiny? large;
  MangaTiny? small;
  MangaTiny? medium;

  MangaDimensions({this.tiny, this.large, this.small, this.medium});

  MangaDimensions.fromJson(Map<String, dynamic> json) {
    tiny = json['tiny'] != null ? new MangaTiny.fromJson(json['tiny']) : null;
    large =
        json['large'] != null ? new MangaTiny.fromJson(json['large']) : null;
    small =
        json['small'] != null ? new MangaTiny.fromJson(json['small']) : null;
    medium =
        json['medium'] != null ? new MangaTiny.fromJson(json['medium']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tiny != null) {
      data['tiny'] = this.tiny!.toJson();
    }
    if (this.large != null) {
      data['large'] = this.large!.toJson();
    }
    if (this.small != null) {
      data['small'] = this.small!.toJson();
    }
    if (this.medium != null) {
      data['medium'] = this.medium!.toJson();
    }
    return data;
  }
}

class MangaTiny {
  int? width;
  int? height;

  MangaTiny({this.width, this.height});

  MangaTiny.fromJson(Map<String, dynamic> json) {
    width = json['width'];
    height = json['height'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['width'] = this.width;
    data['height'] = this.height;
    return data;
  }
}

class MangaCoverImage {
  String? tiny;
  String? large;
  String? small;
  String? original;
  MangaMeta? meta;
  String? tinyWebp;
  String? largeWebp;
  String? smallWebp;

  MangaCoverImage(
      {this.tiny,
      this.large,
      this.small,
      this.original,
      this.meta,
      this.tinyWebp,
      this.largeWebp,
      this.smallWebp});

  MangaCoverImage.fromJson(Map<String, dynamic> json) {
    tiny = json['tiny'];
    large = json['large'];
    small = json['small'];
    original = json['original'];
    meta = json['meta'] != null ? new MangaMeta.fromJson(json['meta']) : null;
    tinyWebp = json['tiny_webp'];
    largeWebp = json['large_webp'];
    smallWebp = json['small_webp'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['tiny'] = this.tiny;
    data['large'] = this.large;
    data['small'] = this.small;
    data['original'] = this.original;
    if (this.meta != null) {
      data['meta'] = this.meta!.toJson();
    }
    data['tiny_webp'] = this.tinyWebp;
    data['large_webp'] = this.largeWebp;
    data['small_webp'] = this.smallWebp;
    return data;
  }
}

class MangaDimensionsTwo {
  MangaTiny? tiny;
  MangaTiny? large;
  MangaTiny? small;
  MangaTiny? tinyWebp;
  MangaTiny? largeWebp;
  MangaTiny? smallWebp;

  MangaDimensionsTwo(
      {this.tiny,
      this.large,
      this.small,
      this.tinyWebp,
      this.largeWebp,
      this.smallWebp});

  MangaDimensionsTwo.fromJson(Map<String, dynamic> json) {
    tiny = json['tiny'] != null ? new MangaTiny.fromJson(json['tiny']) : null;
    large =
        json['large'] != null ? new MangaTiny.fromJson(json['large']) : null;
    small =
        json['small'] != null ? new MangaTiny.fromJson(json['small']) : null;
    tinyWebp = json['tiny_webp'] != null
        ? new MangaTiny.fromJson(json['tiny_webp'])
        : null;
    largeWebp = json['large_webp'] != null
        ? new MangaTiny.fromJson(json['large_webp'])
        : null;
    smallWebp = json['small_webp'] != null
        ? new MangaTiny.fromJson(json['small_webp'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tiny != null) {
      data['tiny'] = this.tiny!.toJson();
    }
    if (this.large != null) {
      data['large'] = this.large!.toJson();
    }
    if (this.small != null) {
      data['small'] = this.small!.toJson();
    }
    if (this.tinyWebp != null) {
      data['tiny_webp'] = this.tinyWebp!.toJson();
    }
    if (this.largeWebp != null) {
      data['large_webp'] = this.largeWebp!.toJson();
    }
    if (this.smallWebp != null) {
      data['small_webp'] = this.smallWebp!.toJson();
    }
    return data;
  }
}

class MangaRelationships {
  MangaGenres? genres;
  MangaGenres? categories;
  MangaGenres? castings;
  MangaGenres? installments;
  MangaGenres? mappings;
  MangaGenres? reviews;
  MangaGenres? mediaRelationships;
  MangaGenres? characters;
  MangaGenres? staff;
  MangaGenres? productions;
  MangaGenres? quotes;
  MangaGenres? chapters;
  MangaGenres? mangaCharacters;
  MangaGenres? mangaStaff;

  MangaRelationships(
      {this.genres,
      this.categories,
      this.castings,
      this.installments,
      this.mappings,
      this.reviews,
      this.mediaRelationships,
      this.characters,
      this.staff,
      this.productions,
      this.quotes,
      this.chapters,
      this.mangaCharacters,
      this.mangaStaff});

  MangaRelationships.fromJson(Map<String, dynamic> json) {
    genres = json['genres'] != null
        ? new MangaGenres.fromJson(json['genres'])
        : null;
    categories = json['categories'] != null
        ? new MangaGenres.fromJson(json['categories'])
        : null;
    castings = json['castings'] != null
        ? new MangaGenres.fromJson(json['castings'])
        : null;
    installments = json['installments'] != null
        ? new MangaGenres.fromJson(json['installments'])
        : null;
    mappings = json['mappings'] != null
        ? new MangaGenres.fromJson(json['mappings'])
        : null;
    reviews = json['reviews'] != null
        ? new MangaGenres.fromJson(json['reviews'])
        : null;
    mediaRelationships = json['mediaRelationships'] != null
        ? new MangaGenres.fromJson(json['mediaRelationships'])
        : null;
    characters = json['characters'] != null
        ? new MangaGenres.fromJson(json['characters'])
        : null;
    staff =
        json['staff'] != null ? new MangaGenres.fromJson(json['staff']) : null;
    productions = json['productions'] != null
        ? new MangaGenres.fromJson(json['productions'])
        : null;
    quotes = json['quotes'] != null
        ? new MangaGenres.fromJson(json['quotes'])
        : null;
    chapters = json['chapters'] != null
        ? new MangaGenres.fromJson(json['chapters'])
        : null;
    mangaCharacters = json['mangaCharacters'] != null
        ? new MangaGenres.fromJson(json['mangaCharacters'])
        : null;
    mangaStaff = json['mangaStaff'] != null
        ? new MangaGenres.fromJson(json['mangaStaff'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.genres != null) {
      data['genres'] = this.genres!.toJson();
    }
    if (this.categories != null) {
      data['categories'] = this.categories!.toJson();
    }
    if (this.castings != null) {
      data['castings'] = this.castings!.toJson();
    }
    if (this.installments != null) {
      data['installments'] = this.installments!.toJson();
    }
    if (this.mappings != null) {
      data['mappings'] = this.mappings!.toJson();
    }
    if (this.reviews != null) {
      data['reviews'] = this.reviews!.toJson();
    }
    if (this.mediaRelationships != null) {
      data['mediaRelationships'] = this.mediaRelationships!.toJson();
    }
    if (this.characters != null) {
      data['characters'] = this.characters!.toJson();
    }
    if (this.staff != null) {
      data['staff'] = this.staff!.toJson();
    }
    if (this.productions != null) {
      data['productions'] = this.productions!.toJson();
    }
    if (this.quotes != null) {
      data['quotes'] = this.quotes!.toJson();
    }
    if (this.chapters != null) {
      data['chapters'] = this.chapters!.toJson();
    }
    if (this.mangaCharacters != null) {
      data['mangaCharacters'] = this.mangaCharacters!.toJson();
    }
    if (this.mangaStaff != null) {
      data['mangaStaff'] = this.mangaStaff!.toJson();
    }
    return data;
  }
}

class MangaGenres {
  MangaLinks? links;

  MangaGenres({this.links});

  MangaGenres.fromJson(Map<String, dynamic> json) {
    links =
        json['links'] != null ? new MangaLinks.fromJson(json['links']) : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.links != null) {
      data['links'] = this.links!.toJson();
    }
    return data;
  }
}

class MangaLinksTwo {
  String? self;
  String? related;

  MangaLinksTwo({this.self, this.related});

  MangaLinksTwo.fromJson(Map<String, dynamic> json) {
    self = json['self'];
    related = json['related'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['self'] = this.self;
    data['related'] = this.related;
    return data;
  }
}

class MangaMetaTwo {
  int? count;

  MangaMetaTwo({this.count});

  MangaMetaTwo.fromJson(Map<String, dynamic> json) {
    count = json['count'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['count'] = this.count;
    return data;
  }
}

class MangaLinksThree {
  String? first;
  String? next;
  String? last;

  MangaLinksThree({this.first, this.next, this.last});

  MangaLinksThree.fromJson(Map<String, dynamic> json) {
    first = json['first'];
    next = json['next'];
    last = json['last'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['first'] = this.first;
    data['next'] = this.next;
    data['last'] = this.last;
    return data;
  }
}
