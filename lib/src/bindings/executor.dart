part of derry;

typedef executor_fn = Void Function(Pointer<Utf8>, Int32);
typedef Executor = void Function(Pointer<Utf8>, int);

void executor(String input, bool silent) {
  final rootLibrary = 'package:derry/derry.dart';
  final blobs = cli
      .waitFor(Isolate.resolvePackageUri(Uri.parse(rootLibrary)))
      .resolve('src/blobs/');
  final objectFile = blobs.resolve(getObject()).toFilePath();
  final dylib = DynamicLibrary.open(objectFile);

  final executorPointer = dylib.lookup<NativeFunction<executor_fn>>('executor');
  final executorFunction = executorPointer.asFunction<Executor>();

  final script = input.toNativeUtf8();

  executorFunction(script, silent ? 1 : 0);
}
