/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMultiplexInputStream.idl
 */

module mozilla.xpcom.nsIMultiplexInputStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIInputStream;


/* starting interface:    nsIMultiplexInputStream */
const char[] NS_IMULTIPLEXINPUTSTREAM_IID_STR = "a076fd12-1dd1-11b2-b19a-d53b5dffaade";

const nsIID NS_IMULTIPLEXINPUTSTREAM_IID= 
  {0xa076fd12, 0x1dd1, 0x11b2, 
    [ 0xb1, 0x9a, 0xd5, 0x3b, 0x5d, 0xff, 0xaa, 0xde ]};

/**
 * The multiplex stream concatinates a list of input streams into a single
 * stream.
 */
extern(Windows)
interface nsIMultiplexInputStream : nsIInputStream {
  static const char[] IID_STR = NS_IMULTIPLEXINPUTSTREAM_IID_STR;
  static const nsIID IID = NS_IMULTIPLEXINPUTSTREAM_IID;

  /**
     * Number of streams in this multiplex-stream
     */
  /* readonly attribute unsigned long count; */
  nsresult GetCount(PRUint32 *aCount);

  /**
     * Appends a stream to the end of the streams. The cursor of the stream
     * should be located at the beginning of the stream if the implementation
     * of this nsIMultiplexInputStream also is used as an nsISeekableStream.
     * @param stream  stream to append
     */
  /* void appendStream (in nsIInputStream stream); */
  nsresult AppendStream(nsIInputStream stream);

  /**
     * Insert a stream at specified index.  If the cursor of this stream is at
     * the beginning of the stream at index, the cursor will be placed at the
     * beginning of the inserted stream instead.
     * The cursor of the new stream should be located at the beginning of the
     * stream if the implementation of this nsIMultiplexInputStream also is
     * used as an nsISeekableStream.
     * @param stream  stream to insert
     * @param index   index to insert stream at, must be <= count
     */
  /* void insertStream (in nsIInputStream stream, in unsigned long index); */
  nsresult InsertStream(nsIInputStream stream, PRUint32 index);

  /**
     * Remove stream at specified index. If this stream is the one currently
     * being read the readcursor is moved to the beginning of the next
     * stream
     * @param index   remove stream at this index, must be < count
     */
  /* void removeStream (in unsigned long index); */
  nsresult RemoveStream(PRUint32 index);

  /**
     * Get stream at specified index.
     * @param index   return stream at this index, must be < count
     * @return        stream at specified index
     */
  /* nsIInputStream getStream (in unsigned long index); */
  nsresult GetStream(PRUint32 index, nsIInputStream *_retval);

}

