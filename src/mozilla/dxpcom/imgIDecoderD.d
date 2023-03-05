/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM imgIDecoder.idl
 */

module mozilla.dxpcom.imgIDecoderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.imgIDecoder;


public import mozilla.dxpcom.imgIDecoderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.imgILoad;

public import mozilla.dxpcom.imgILoadD;


/* starting wrapper class:    imgIDecoder */
/**
 * imgIDecoder interface
 *
 * @author Stuart Parmenter <pavlov@netscape.com>
 * @version 0.2
 * @see imagelib2
 */
class imgIDecoderD : public nsISupportsD {

  static const nsIID IID = IMGIDECODER_IID;


  alias imgIDecoder InnerType;

  this(imgIDecoder intr){
    super(intr);
    this.inner = intr;
  }

  imgIDecoder opCast() {
    return inner;
  }

  void opAssign(imgIDecoder value) {
    inner = value;
  }

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
  void Init(imgILoadD aLoad){
    nsresult __result = inner.Init(aLoad ? cast(imgILoad)aLoad : null);
    CheckException(__result);
  }

  /** 
   * Closes the stream. 
   */
  /* void close (); */
  void Close(){
    nsresult __result = inner.Close();
    CheckException(__result);
  }

  /**
   * Flushes the stream.
   */
  /* void flush (); */
  void Flush(){
    nsresult __result = inner.Flush();
    CheckException(__result);
  }

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
  PRUint32 WriteFrom(nsIInputStreamD inStr, PRUint32 count){
    PRUint32 _retval;
    nsresult __result = inner.WriteFrom(inStr ? cast(nsIInputStream)inStr : null, count, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  imgIDecoder inner;

}

