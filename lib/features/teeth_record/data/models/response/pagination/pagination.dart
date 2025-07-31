import 'package:freezed_annotation/freezed_annotation.dart';

part 'pagination.freezed.dart';
part 'pagination.g.dart';

@freezed
class Pagination with _$Pagination {
  const factory Pagination({
    @JsonKey(name: 'total_records') required int totalRecords, // 紀錄總筆數
    @JsonKey(name: 'total_pages') required int totalPages,   // 總頁數
    @JsonKey(name: 'current_page') required int currentPage,  // 目前所在的頁碼
    @JsonKey(name: 'page_size') required int pageSize,     // 每頁顯示的紀錄數量
  }) = _Pagination;

  factory Pagination.fromJson(Map<String, dynamic> json) =>
      _$PaginationFromJson(json);
}