/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBufferedStreams.idl
 */

module mozilla.xpcom.nsIBufferedStreams;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIInputStream;
public import mozilla.xpcom.nsIOutputStream;


/* starting interface:    nsIBufferedInputStream */
const char[] NS_IBUFFEREDINPUTSTREAM_IID_STR = "616f5b48-da09-11d3-8cda-0060b0fc14a3";

const nsIID NS_IBUFFEREDINPUTSTREAM_IID= 
  {0x616f5b48, 0xda09, 0x11d3, 
    [ 0x8c, 0xda, 0x00, 0x60, 0xb0, 0xfc, 0x14, 0xa3 ]};

/**
 * An input stream that reads ahead and keeps a buffer coming from another input
 * stream so that fewer accesses to the underlying stream are necessary.
 */
extern(Windows)
interface nsIBufferedInputStream : nsIInputStream {
  static const char[] IID_STR = NS_IBUFFEREDINPUTSTREAM_IID_STR;
  static const nsIID IID = NS_IBUFFEREDINPUTSTREAM_IID;

  /**
     * @param fillFromStream - add buffering to this stream
     * @param bufferSize     - specifies the maximum buffer size
     */
  /* void init (in nsIInputStream fillFromStream, in unsigned long bufferSize); */
  nsresult Init(nsIInputStream fillFromStream, PRUint32 bufferSize);

}


/* starting interface:    nsIBufferedOutputStream */
const char[] NS_IBUFFEREDOUTPUTSTREAM_IID_STR = "6476378a-da09-11d3-8cda-0060b0fc14a3";

const nsIID NS_IBUFFEREDOUTPUTSTREAM_IID= 
  {0x6476378a, 0xda09, 0x11d3, 
    [ 0x8c, 0xda, 0x00, 0x60, 0xb0, 0xfc, 0x14, 0xa3 ]};

/**
 * An output stream that stores up data to write out to another output stream
 * and does the entire write only when the buffer is full, so that fewer writes
 * to the underlying output stream are necessary.
 */
extern(Windows)
interface nsIBufferedOutputStream : nsIOutputStream {
  static const char[] IID_STR = NS_IBUFFEREDOUTPUTSTREAM_IID_STR;
  static const nsIID IID = NS_IBUFFEREDOUTPUTSTREAM_IID;

  /**
     * @param sinkToStream - add buffering to this stream
     * @param bufferSize   - specifies the maximum buffer size
     */
  /* void init (in nsIOutputStream sinkToStream, in unsigned long bufferSize); */
  nsresult Init(nsIOutputStream sinkToStream, PRUint32 bufferSize);

}

