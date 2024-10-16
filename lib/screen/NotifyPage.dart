import 'package:flutter/material.dart';
import 'package:flutter_hooks/flutter_hooks.dart';
import 'package:hooks_riverpod/hooks_riverpod.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:dental_guard_flutter/resources/AppResources.dart';
import 'package:dental_guard_flutter/screen/base/BasePage.dart';
import 'package:dental_guard_flutter/resources/AppColors.dart';
import 'package:dental_guard_flutter/widgets/common/TextWidgets.dart';

class NotifyPage extends HookConsumerWidget {
  const NotifyPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // 模擬通知資料
    final notifications = useState<List<Map<String, String>>>([
      {
        "title": "System Update",
        "content": "The system will undergo routine maintenance tonight.",
        "timestamp": "2024-09-16 18:00"
      },
      {
        "title": "New Feature Release",
        "content":
        "We have launched a new notification system. Please check the settings page for more details.",
        "timestamp": "2024-09-15 09:30"
      },
    ]);

    // 滾動加載的控制器
    final scrollController = useScrollController();
    final isLoadingMore = useState(false); // 控制加載狀態
    final hasMoreData = useState(true); // 是否還有更多數據
    const double scrollThreshold = 200; // 提前200像素觸發加載更多

    // 模擬API加載更多數據
    Future<void> loadMoreNotifications() async {
      if (isLoadingMore.value || !hasMoreData.value) return;

      isLoadingMore.value = true;
      await Future.delayed(const Duration(seconds: 2)); // 模擬網絡延遲

      // 假設API每次返回20條數據
      final newNotifications = List<Map<String, String>>.generate(20, (index) {
        return {
          "title": "Notification ${notifications.value.length + index + 1}",
          "content":
          "This is notification number ${notifications.value.length + index + 1}.",
          "timestamp": "2024-09-17 10:00",
        };
      });

      notifications.value = [...notifications.value, ...newNotifications];
      isLoadingMore.value = false;
    }

    // 監聽滾動事件，當滾動接近底部時加載更多數據
    useEffect(() {
      scrollController.addListener(() {
        if (scrollController.position.pixels >=
            scrollController.position.maxScrollExtent - scrollThreshold &&
            hasMoreData.value) {
          loadMoreNotifications(); // 滾動接近底部時加載更多數據
        }
      });
      return null;
    }, [scrollController]);

    // 下拉刷新功能
    Future<void> _refresh() async {
      await Future.delayed(const Duration(seconds: 2)); // 模擬網絡延遲
      notifications.value = [
        {
          "title": "System Update",
          "content": "The system will undergo routine maintenance tonight.",
          "timestamp": "2024-09-16 18:00"
        },
        {
          "title": "New Feature Release",
          "content":
          "We have launched a new notification system. Please check the settings page for more details.",
          "timestamp": "2024-09-15 09:30"
        },
      ]; // 模擬刷新後的數據
      hasMoreData.value = true; // 重置是否還有更多數據
    }

    // 新增20條假資料
    void addMoreNotifications() {
      final newNotifications = List<Map<String, String>>.generate(20, (index) {
        return {
          "title": "Notification ${notifications.value.length + index + 1}",
          "content":
          "This is notification number ${notifications.value.length + index + 1}.",
          "timestamp": "2024-09-17 10:00",
        };
      });
      notifications.value = [...notifications.value, ...newNotifications];
    }

    // 清空通知
    void clearNotifications() {
      notifications.value = [];
    }

    return BasePage(
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 16.sp, horizontal: 16.sp),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ElevatedButton(
                  onPressed: addMoreNotifications,
                  child: const Text("+20"),
                ),
                ElevatedButton(
                  onPressed: clearNotifications,
                  child: const Text("Clean"),
                ),
              ],
            ),
          ),
          Expanded(
            child: RefreshIndicator(
              onRefresh: _refresh,
              child: CustomScrollView(
                controller: scrollController,
                physics: const AlwaysScrollableScrollPhysics(),
                slivers: [
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                          (context, index) {
                        if (index >= notifications.value.length) {
                          return Container(
                            padding: EdgeInsets.all(8.sp),
                            height: 96.sp,
                            alignment: Alignment.center,
                            child: const CircularProgressIndicator(),
                          );
                        }
                        final notification = notifications.value[index];
                        return _buildNotificationItem(
                          title: notification['title']!,
                          content: notification['content']!,
                          timestamp: notification['timestamp']!,
                        );
                      },
                      childCount: notifications.value.length +
                          (isLoadingMore.value ? 1 : 0),
                    ),
                  ),
                  // 添加一個底部的空白區域
                  SliverToBoxAdapter(
                    child: SizedBox(height: 96.sp),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  // 構建每個通知項目的 Widget
  Widget _buildNotificationItem({
    required String title,
    required String content,
    required String timestamp,
  }) {
    return Card(
      margin: EdgeInsets.only(bottom: 12.sp),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10.sp),
      ),
      elevation: 4,
      child: Padding(
        padding: EdgeInsets.all(16.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            body1Text(
              title,
              fontWeight: FontWeight.bold,
              fontSize: 16.sp,
              color: AppColors.primaryBlack,
            ),
            gapH8,
            body1Text(
              content,
              fontSize: 14.sp,
              color: AppColors.grey,
            ),
            gapH12,
            Align(
              alignment: Alignment.bottomRight,
              child: body1Text(
                timestamp,
                fontSize: 12.sp,
                color: AppColors.primaryColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
