// ignore_for_file: must_be_immutable

import 'package:e_commerce_c9_friday/features/home/domain/entities/CategoryAndBrandEntity.dart';

class CategoryAndBrandModel extends CategoryAndBrandEntity {
  CategoryAndBrandModel({
    super.results,
    this.metadata,
    super.data,
  });

  CategoryAndBrandModel.fromJson(dynamic json) {
    results = json['results'];
    metadata =
        json['metadata'] != null ? Metadata.fromJson(json['metadata']) : null;
    if (json['data'] != null) {
      data = [];
      json['data'].forEach((v) {
        data?.add(Data.fromJson(v));
      });
    }
  }

  Metadata? metadata;

  @override
  // TODO: implement props
  List<Object?> get props => [super.props, metadata];
}

class Data extends DataEntity {
  Data({
    super.id,
    super.name,
    this.slug,
    super.image,
    this.createdAt,
    this.updatedAt,
  });

  Data.fromJson(dynamic json) {
    id = json['_id'];
    name = json['name'];
    slug = json['slug'];
    image = json['image'];
    createdAt = json['createdAt'];
    updatedAt = json['updatedAt'];
  }

  String? slug;
  String? createdAt;
  String? updatedAt;

  @override
  // TODO: implement props
  List<Object?> get props => [super.props];
}

class Metadata {
  Metadata({
    this.currentPage,
    this.numberOfPages,
    this.limit,
    this.nextPage,
  });

  Metadata.fromJson(dynamic json) {
    currentPage = json['currentPage'];
    numberOfPages = json['numberOfPages'];
    limit = json['limit'];
    nextPage = json['nextPage'];
  }

  int? currentPage;
  int? numberOfPages;
  int? limit;
  int? nextPage;

  Map<String, dynamic> toJson() {
    final map = <String, dynamic>{};
    map['currentPage'] = currentPage;
    map['numberOfPages'] = numberOfPages;
    map['limit'] = limit;
    map['nextPage'] = nextPage;
    return map;
  }
}
