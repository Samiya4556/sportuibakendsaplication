import 'package:bakenss/models/status_models.dart';
import 'package:bakenss/service/status_service.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test("Get status servesi togri ishlayaptimi", () async {
    dynamic result = await StatusService.getStatus();
    expect(result.runtimeType, StatusModels);
  });
}
