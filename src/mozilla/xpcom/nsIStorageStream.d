/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStorageStream.idl
 */

module mozilla.xpcom.nsIStorageStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIMemory; /* forward declaration */

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */


/* starting interface:    nsIStorageStream */
const char[] NS_ISTORAGESTREAM_IID_STR = "604ad9d0-753e-11d3-90ca-34278643278f";

const nsIID NS_ISTORAGESTREAM_IID= 
  {0x604ad9d0, 0x753e, 0x11d3, 
    [ 0x90, 0xca, 0x34, 0x27, 0x86, 0x43, 0x27, 0x8f ]};

/**
 * The nsIStorageStream interface maintains an internal data buffer that can be
 * filled using a single output stream.  One or more independent input streams
 * can be created to read the data from the buffer non-destructively.
 */
extern(Windows)
interface nsIStorageStream : nsISupports {
  static const char[] IID_STR = NS_ISTORAGESTREAM_IID_STR;
  static const nsIID IID = NS_ISTORAGESTREAM_IID;

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
  nsresult Init(PRUint32 segmentSize, PRUint32 maxSize, nsIMemory segmentAllocator);

  /**
     * Get a reference to the one and only output stream for this instance.
     * The zero-based startPosition argument is used is used to set the initial
     * write cursor position.  The startPosition cannot be set larger than the
     * current buffer length.  Calling this method has the side-effect of
     * truncating the internal buffer to startPosition bytes.
     */
  /* nsIOutputStream getOutputStream (in PRInt32 startPosition); */
  nsresult GetOutputStream(PRInt32 startPosition, nsIOutputStream *_retval);

  /**
     * Create a new input stream to read data (written by the singleton output
     * stream) from the internal buffer.  Multiple, independent input streams
     * can be created.
     */
  /* nsIInputStream newInputStream (in PRInt32 startPosition); */
  nsresult NewInputStream(PRInt32 startPosition, nsIInputStream *_retval);

  /** 
     * The length attribute indicates the total number of bytes stored in the
     * nsIStorageStream internal buffer, regardless of any consumption by input
     * streams.  Assigning to the length field can be used to truncate the
     * buffer data, but can not be used when either the instance's output
     * stream is in use.
     *
     * @See #writeInProgress */
  /* attribute PRUint32 length; */
  nsresult GetLength(PRUint32 *aLength);
  nsresult SetLength(PRUint32 aLength);

  /**
     * True, when output stream has not yet been Close'ed
     */
  /* readonly attribute boolean writeInProgress; */
  nsresult GetWriteInProgress(PRBool *aWriteInProgress);

}

