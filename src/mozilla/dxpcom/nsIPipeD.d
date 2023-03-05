/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPipe.idl
 */

module mozilla.dxpcom.nsIPipeD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPipe;


public import mozilla.dxpcom.nsIPipeD;

public import mozilla.xpcom.nsIAsyncInputStream;
public import mozilla.dxpcom.nsIAsyncInputStreamD;
public import mozilla.xpcom.nsIAsyncOutputStream;
public import mozilla.dxpcom.nsIAsyncOutputStreamD;

public import mozilla.xpcom.nsIMemory;

public import mozilla.dxpcom.nsIMemoryD;


/* starting wrapper class:    nsIPipe */
/**
 * nsIPipe represents an in-process buffer that can be read using nsIInputStream
 * and written using nsIOutputStream.  The reader and writer of a pipe do not
 * have to be on the same thread.  As a result, the pipe is an ideal mechanism
 * to bridge data exchange between two threads.  For example, a worker thread
 * might write data to a pipe from which the main thread will read.
 *
 * Each end of the pipe can be either blocking or non-blocking.  Recall that a
 * non-blocking stream will return NS_BASE_STREAM_WOULD_BLOCK if it cannot be
 * read or written to without blocking the calling thread.  For example, if you
 * try to read from an empty pipe that has not yet been closed, then if that
 * pipe's input end is non-blocking, then the read call will fail immediately
 * with NS_BASE_STREAM_WOULD_BLOCK as the error condition.  However, if that
 * pipe's input end is blocking, then the read call will not return until the
 * pipe has data or until the pipe is closed.  This example presumes that the
 * pipe is being filled asynchronously on some background thread.
 *
 * The pipe supports nsIAsyncInputStream and nsIAsyncOutputStream, which give
 * the user of a non-blocking pipe the ability to wait for the pipe to become
 * ready again.  For example, in the case of an empty non-blocking pipe, the
 * user can call AsyncWait on the input end of the pipe to be notified when 
 * the pipe has data to read (or when the pipe becomes closed).
 *
 * NS_NewPipe2 and NS_NewPipe provide convenient pipe constructors.  In most
 * cases nsIPipe is not actually used.  It is usually enough to just get
 * references to the pipe's input and output end.  In which case, the pipe is
 * automatically closed when the respective pipe ends are released.
 */
class nsIPipeD : public nsISupportsD {

  static const nsIID IID = NS_IPIPE_IID;


  alias nsIPipe InnerType;

  this(nsIPipe intr){
    super(intr);
    this.inner = intr;
  }

  nsIPipe opCast() {
    return inner;
  }

  void opAssign(nsIPipe value) {
    inner = value;
  }

  /**
     * initialize this pipe
     */
  /* void init (in boolean nonBlockingInput, in boolean nonBlockingOutput, in unsigned long segmentSize, in unsigned long segmentCount, in nsIMemory segmentAllocator); */
  void Init(PRBool nonBlockingInput, PRBool nonBlockingOutput, PRUint32 segmentSize, PRUint32 segmentCount, nsIMemoryD segmentAllocator){
    nsresult __result = inner.Init(nonBlockingInput, nonBlockingOutput, segmentSize, segmentCount, segmentAllocator ? cast(nsIMemory)segmentAllocator : null);
    CheckException(__result);
  }

  /**
     * The pipe's input end, which also implements nsISearchableInputStream.
     */
  /* readonly attribute nsIAsyncInputStream inputStream; */
  nsIAsyncInputStreamD  InputStream(){
    nsIAsyncInputStream value;
    nsresult __result = inner.GetInputStream(&value);
    CheckException(__result);
    return new nsIAsyncInputStreamD(value);
  }

  /**
     * The pipe's output end.
     */
  /* readonly attribute nsIAsyncOutputStream outputStream; */
  nsIAsyncOutputStreamD  OutputStream(){
    nsIAsyncOutputStream value;
    nsresult __result = inner.GetOutputStream(&value);
    CheckException(__result);
    return new nsIAsyncOutputStreamD(value);
  }

private:
  nsIPipe inner;

}


/* starting wrapper class:    nsISearchableInputStream */
/**
 * XXX this interface doesn't really belong in here.  It is here because
 * currently nsPipeInputStream is the only implementation of this interface.
 */
class nsISearchableInputStreamD : public nsISupportsD {

  static const nsIID IID = NS_ISEARCHABLEINPUTSTREAM_IID;


  alias nsISearchableInputStream InnerType;

  this(nsISearchableInputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsISearchableInputStream opCast() {
    return inner;
  }

  void opAssign(nsISearchableInputStream value) {
    inner = value;
  }

  /**
     * Searches for a string in the input stream. Since the stream has a notion
     * of EOF, it is possible that the string may at some time be in the 
     * buffer, but is is not currently found up to some offset. Consequently,
     * both the found and not found cases return an offset:
     *    if found, return offset where it was found
     *    if not found, return offset of the first byte not searched
     * In the case the stream is at EOF and the string is not found, the first
     * byte not searched will correspond to the length of the buffer.
     */
  /* void search (in string forString, in boolean ignoreCase, out boolean found, out unsigned long offsetSearchedTo); */
  void Search(char*forString, PRBool ignoreCase, out PRBool found, out PRUint32 offsetSearchedTo){
    nsresult __result = inner.Search(forString, ignoreCase, &found, &offsetSearchedTo);
    CheckException(__result);
  }

private:
  nsISearchableInputStream inner;

}

