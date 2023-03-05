/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStringStream.idl
 */

module mozilla.xpcom.nsIStringStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIInputStream;


/* starting interface:    nsIStringInputStream */
const char[] NS_ISTRINGINPUTSTREAM_IID_STR = "450cd2d4-f0fd-424d-b365-b1251f80fd53";

const nsIID NS_ISTRINGINPUTSTREAM_IID= 
  {0x450cd2d4, 0xf0fd, 0x424d, 
    [ 0xb3, 0x65, 0xb1, 0x25, 0x1f, 0x80, 0xfd, 0x53 ]};

/**
 * nsIStringInputStream
 *
 * Provides scriptable and specialized C++ only methods for initializing a
 * nsIInputStream implementation with a simple character array.
 */
extern(Windows)
interface nsIStringInputStream : nsIInputStream {
  static const char[] IID_STR = NS_ISTRINGINPUTSTREAM_IID_STR;
  static const nsIID IID = NS_ISTRINGINPUTSTREAM_IID;

  /**
     * SetData - assign data to the input stream (copied on assignment).
     *
     * @param data    - stream data
     * @param dataLen - stream data length (-1 if length should be computed)
     *
     * NOTE: C++ code should consider using AdoptData or ShareData to avoid
     * making an extra copy of the stream data.
     */
  /* void setData (in string data, in long dataLen); */
  nsresult SetData(char *data, PRInt32 dataLen);

  /**
     * NOTE: the following methods are designed to give C++ code added control
     * over the ownership and lifetime of the stream data.  Use with care :-)
     */
/**
     * AdoptData - assign data to the input stream.  the input stream takes
     * ownership of the given data buffer and will nsMemory::Free it when
     * the input stream is destroyed.
     *
     * @param data      - stream data
     * @param dataLen   - stream data length (-1 if length should be computed)
     */
  /* [noscript] void adoptData (in charPtr data, in long dataLen); */
  nsresult AdoptData(char * data, PRInt32 dataLen);

  /**
     * ShareData - assign data to the input stream.  the input stream references
     * the given data buffer until the input stream is destroyed.  the given
     * data buffer must outlive the input stream.
     *
     * @param data      - stream data
     * @param dataLen   - stream data length (-1 if length should be computed)
     */
  /* [noscript] void shareData (in string data, in long dataLen); */
  nsresult ShareData(char *data, PRInt32 dataLen);

}

