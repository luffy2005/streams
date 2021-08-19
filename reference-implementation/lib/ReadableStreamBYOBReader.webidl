[Exposed=(Window,Worker,Worklet)]
interface ReadableStreamBYOBReader {
  constructor(ReadableStream stream);

  Promise<ReadableStreamBYOBReadResult> read(ArrayBufferView view);
  Promise<ReadableStreamBYOBReadResult> fill(ArrayBufferView view);
  void releaseLock();
};
ReadableStreamBYOBReader includes ReadableStreamGenericReader;
