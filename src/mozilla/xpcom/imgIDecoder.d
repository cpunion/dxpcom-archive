/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM imgIDecoder.idl
 */

module mozilla.xpcom.imgIDecoder;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

public import mozilla.xpcom.imgILoad; /* forward declaration */


/* starting interface:    imgIDecoder */
const char[] IMGIDECODER_IID_STR = "9eebf43a-1dd1-11b2-953e-f1782f4cbad3";

const nsIID IMGIDECODER_IID= 
  {0x9eebf43a, 0x1dd1, 0x11b2, 
    [ 0x95, 0x3e, 0xf1, 0x78, 0x2f, 0x4c, 0xba, 0xd3 ]};

/**
 * imgIDecoder interface
 *
 * @author Stuart Parmenter <pavlov@netscape.com>
 * @version 0.2
 * @see imagelib2
 */
extern(Windows)
interface imgIDecoder : nsISupports {
  static const char[] IID_STR = IMGIDECODER_IID_STR;
  static const nsIID IID = IMGIDECODER_IID;

  /**
   * Initalize an image decoder.
   * @param aRequest the request that owns the decoder.
   *
   * @note The decode should QI \a aLoad to an imgIDecoderObserver
   * and should send decoder notifications to the request.
   * The decoder should always pass NULL as the first two parameters to
   * all of the imgIDecoderObserver APIs.
   */
  /* void init (in imgILoad aLoad); */
  nsresult Init(imgILoad aLoad);

  /** 
   * Closes the stream. 
   */
  /* void close (); */
  nsresult Close();

  /**
   * Flushes the stream.
   */
  /* void flush (); */
  nsresult Flush();

  /**
   * Writes data into the stream from an input stream.
   * Implementer's note: This method is defined by this interface in order
   * to allow the output stream to efficiently copy the data from the input
   * stream into its internal buffer (if any). If this method was provide
   * as an external facility, a separate char* buffer would need to be used
   * in order to call the output stream's other Write method.
   * @param fromStream the stream from which the data is read
   * @param count the maximun number of bytes to write
   * @return aWriteCount out parameter to hold the number of
   *         bytes written. if an error occurs, the writecount
   *         is undefined
   */
  /* unsigned long writeFrom (in nsIInputStream inStr, in unsigned long count); */
  nsresult WriteFrom(nsIInputStream inStr, PRUint32 count, PRUint32 *_retval);

}

