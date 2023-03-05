/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPipe.idl
 */

module mozilla.xpcom.nsIPipe;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIAsyncInputStream;
public import mozilla.xpcom.nsIAsyncOutputStream;

public import mozilla.xpcom.nsIMemory; /* forward declaration */


/* starting interface:    nsIPipe */
const char[] NS_IPIPE_IID_STR = "f4211abc-61b3-11d4-9877-00c04fa0cf4a";

const nsIID NS_IPIPE_IID= 
  {0xf4211abc, 0x61b3, 0x11d4, 
    [ 0x98, 0x77, 0x00, 0xc0, 0x4f, 0xa0, 0xcf, 0x4a ]};

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
extern(Windows)
interface nsIPipe : nsISupports {
  static const char[] IID_STR = NS_IPIPE_IID_STR;
  static const nsIID IID = NS_IPIPE_IID;

  /**
     * initialize this pipe
     */
  /* void init (in boolean nonBlockingInput, in boolean nonBlockingOutput, in unsigned long segmentSize, in unsigned long segmentCount, in nsIMemory segmentAllocator); */
  nsresult Init(PRBool nonBlockingInput, PRBool nonBlockingOutput, PRUint32 segmentSize, PRUint32 segmentCount, nsIMemory segmentAllocator);

  /**
     * The pipe's input end, which also implements nsISearchableInputStream.
     */
  /* readonly attribute nsIAsyncInputStream inputStream; */
  nsresult GetInputStream(nsIAsyncInputStream  *aInputStream);

  /**
     * The pipe's output end.
     */
  /* readonly attribute nsIAsyncOutputStream outputStream; */
  nsresult GetOutputStream(nsIAsyncOutputStream  *aOutputStream);

}


/* starting interface:    nsISearchableInputStream */
const char[] NS_ISEARCHABLEINPUTSTREAM_IID_STR = "8c39ef62-f7c9-11d4-98f5-001083010e9b";

const nsIID NS_ISEARCHABLEINPUTSTREAM_IID= 
  {0x8c39ef62, 0xf7c9, 0x11d4, 
    [ 0x98, 0xf5, 0x00, 0x10, 0x83, 0x01, 0x0e, 0x9b ]};

/**
 * XXX this interface doesn't really belong in here.  It is here because
 * currently nsPipeInputStream is the only implementation of this interface.
 */
extern(Windows)
interface nsISearchableInputStream : nsISupports {
  static const char[] IID_STR = NS_ISEARCHABLEINPUTSTREAM_IID_STR;
  static const nsIID IID = NS_ISEARCHABLEINPUTSTREAM_IID;

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
  nsresult Search(char *forString, PRBool ignoreCase, PRBool *found, PRUint32 *offsetSearchedTo);

}

