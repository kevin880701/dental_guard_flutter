import 'loading_provider.dart';

class CancellableOperation<T> {
  final CancelToken _cancelToken;

  CancellableOperation._(this._cancelToken);

  // 創建可取消操作的靜態方法
  static CancellableOperation<T> create<T>(CancelToken cancelToken) {
    return CancellableOperation._(cancelToken);
  }

  // 執行異步操作，自動處理取消檢查
  Future<T?> execute(Future<T> Function() operation) async {
    try {
      // 開始前檢查
      _checkCancellation();

      // 包裝操作，在關鍵點自動檢查取消狀態
      final result = await Future.any([
        _executeWithCancellationChecks(operation),
        _cancelToken.future.then<T>((_) => throw OperationCancelledException()),
      ]);

      return result;
    } on OperationCancelledException {
      return null; // 操作被取消
    }
  }

  // 執行多步驟操作，每一步都會檢查取消狀態
  Future<T?> executeSteps<T>(List<Future<dynamic> Function()> steps) async {
    try {
      final results = <dynamic>[];

      for (final step in steps) {
        _checkCancellation();
        final result = await Future.any([
          step(),
          _cancelToken.future.then((_) => throw OperationCancelledException()),
        ]);
        results.add(result);
      }

      return results.last as T;
    } on OperationCancelledException {
      return null;
    }
  }

  // 私有方法：檢查取消狀態
  void _checkCancellation() {
    if (_cancelToken.isCancelled) {
      throw OperationCancelledException();
    }
  }

  // 私有方法：執行操作並在適當時機檢查取消
  Future<T> _executeWithCancellationChecks<T>(Future<T> Function() operation) async {
    // 執行前檢查
    _checkCancellation();

    // 執行操作
    final result = await operation();

    // 執行後檢查
    _checkCancellation();

    return result;
  }
}

class OperationCancelledException implements Exception {
  final String message;
  OperationCancelledException([this.message = "操作已取消"]);
}

// 便利的擴展方法，讓使用更簡潔
extension CancellableOperationHelper on CancelToken {
  // 簡單操作
  Future<T?> run<T>(Future<T> Function() operation) async {
    return CancellableOperation<T>._(this).execute(operation);
  }

  // 多步驟操作
  Future<T?> runSteps<T>(List<Future<dynamic> Function()> steps) async {
    return CancellableOperation<T>._(this).executeSteps(steps);
  }
}