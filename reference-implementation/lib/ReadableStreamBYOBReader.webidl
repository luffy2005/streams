[Exposed=(Window,Worker,Worklet)]
interface ReadableStreamBYOBReader {
  constructor(ReadableStream stream);

  Promise<ReadableStreamBYOBReadResult> read(ArrayBufferView view, optional ReadableStreamBYOBReaderReadOptions options = {});
  Promise<ReadableStreamBYOBReadResult> fill(ArrayBufferView view);
  void releaseLock();
};
ReadableStreamBYOBReader includes ReadableStreamGenericReader;

dictionary ReadableStreamBYOBReaderReadOptions {
  [EnforceRange] unsigned long long atLeast;
};
