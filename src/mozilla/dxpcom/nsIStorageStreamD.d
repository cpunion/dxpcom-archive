/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStorageStream.idl
 */

module mozilla.dxpcom.nsIStorageStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIStorageStream;


public import mozilla.dxpcom.nsIStorageStreamD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsrootidl;
public import mozilla.dxpcom.nsrootidlD;

public import mozilla.xpcom.nsIMemory;

public import mozilla.dxpcom.nsIMemoryD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;


/* starting wrapper class:    nsIStorageStream */
/**
 * The nsIStorageStream interface maintains an internal data buffer that can be
 * filled using a single output stream.  One or more independent input streams
 * can be created to read the data from the buffer non-destructively.
 */
class nsIStorageStreamD : public nsISupportsD {

  static const nsIID IID = NS_ISTORAGESTREAM_IID;


  alias nsIStorageStream InnerType;

  this(nsIStorageStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIStorageStream opCast() {
    return inner;
  }

  void opAssign(nsIStorageStream value) {
    inner = value;
  }

  /**
     *
     * Initialize the stream, setting up the amount of space that will be
     * allocated for the stream's backing-store.
     *
     * @param segmentSize
     *        Size of each segment. Must be a power of two.
     * @param maxSize
     *        Maximum total size of this stream. length will always be less
     *        than or equal to this value. Passing PR_UINT32_MAX is safe.
     * @param segmentAllocator
     *        Which allocator to use for the segments. May be null, in which
     *        case a default allocator will be used.
     */
  /* void init (in PRUint32 segmentSize, in PRUint32 maxSize, in nsIMemory segmentAllocator); */
  void Init(PRUint32 segmentSize, PRUint32 maxSize, nsIMemoryD segmentAllocator){
    nsresult __result = inner.Init(segmentSize, maxSize, segmentAllocator ? cast(nsIMemory)segmentAllocator : null);
    CheckException(__result);
  }

  /**
     * Get a reference to the one and only output stream for this instance.
     * The zero-based startPosition argument is used is used to set the initial
     * write cursor position.  The startPosition cannot be set larger than the
     * current buffer length.  Calling this method has the side-effect of
     * truncating the internal buffer to startPosition bytes.
     */
  /* nsIOutputStream getOutputStream (in PRInt32 startPosition); */
  nsIOutputStreamD  GetOutputStream(PRInt32 startPosition){
    nsIOutputStream _retval;
    nsresult __result = inner.GetOutputStream(startPosition, &_retval);
    CheckException(__result);
    return new nsIOutputStreamD(_retval);
  }

  /**
     * Create a new input stream to read data (written by the singleton output
     * stream) from the internal buffer.  Multiple, independent input streams
     * can be created.
     */
  /* nsIInputStream newInputStream (in PRInt32 startPosition); */
  nsIInputStreamD  NewInputStream(PRInt32 startPosition){
    nsIInputStream _retval;
    nsresult __result = inner.NewInputStream(startPosition, &_retval);
    CheckException(__result);
    return new nsIInputStreamD(_retval);
  }

  /** 
     * The length attribute indicates the total number of bytes stored in the
     * nsIStorageStream internal buffer, regardless of any consumption by input
     * streams.  Assigning to the length field can be used to truncate the
     * buffer data, but can not be used when either the instance's output
     * stream is in use.
     *
     * @See #writeInProgress */
  /* attribute PRUint32 length; */
  PRUint32 Length(){
    PRUint32 value;
    nsresult __result = inner.GetLength(&value);
    CheckException(__result);
    return value;
  }
  void Length(PRUint32 aLength){
    PRUint32 value;
    nsresult __result = inner.SetLength(value);
    CheckException(__result);
  }

  /**
     * True, when output stream has not yet been Close'ed
     */
  /* readonly attribute boolean writeInProgress; */
  PRBool WriteInProgress(){
    PRBool value;
    nsresult __result = inner.GetWriteInProgress(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIStorageStream inner;

}

