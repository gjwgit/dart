void main() {
  String name = "Lisp";

  try {
    print('Name: $name');

    // The following line generates a RangeError.

    name.indexOf(name[0], name.length - (name.length + 2));
  } on RangeError catch (exception) {
    // Identifying a specific exception.

    print('On Exception: $exception');
  } catch (exception) {
    // Fall back to capture any expcetion.

    print('Catch Exception: $exception');
  } finally {
    // Always run irrespective of exception or not.

    print('All done.');
  }
}
