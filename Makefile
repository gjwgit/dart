.PHONY: test docs

test:
	dart test test/distance.dart
	dart test test/distance_mock_data.dart

docs:
	dart doc
