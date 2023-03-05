/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISeekableStream.idl
 */

module mozilla.dxpcom.nsISeekableStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISeekableStream;


public import mozilla.dxpcom.nsISeekableStreamD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISeekableStream */
class nsISeekableStreamD : public nsISupportsD {

  static const nsIID IID = NS_ISEEKABLESTREAM_IID;


  alias nsISeekableStream InnerType;

  this(nsISeekableStream intr){
    super(intr);
    this.inner = intr;
  }

  nsISeekableStream opCast() {
    return inner;
  }

  void opAssign(nsISeekableStream value) {
    inner = value;
  }

  enum { NS_SEEK_SET = 0 }

  enum { NS_SEEK_CUR = 1 }

  enum { NS_SEEK_END = 2 }

  /**
     *  seek
     *
     *  This method moves the stream offset of the steam implementing this
     *  interface.
     *
     *   @param whence specifies how to interpret the 'offset' parameter in
     *                 setting the stream offset associated with the implementing
     *                 stream.
     *     
     *   @param offset specifies a value, in bytes, that is used in conjunction
     *                 with the 'whence' parameter to set the stream offset of the 
     *                 implementing stream.  A negative value causes seeking in 
     *                 the reverse direction.
     */
  /* void seek (in long whence, in long long offset); */
  void Seek(PRInt32 whence, PRInt64 offset){
    nsresult __result = inner.Seek(whence, offset);
    CheckException(__result);
  }

  /**
     *  tell
     *
     *  This method reports the current offset, in bytes, from the start of the 
     *  stream. 
     */
  /* long long tell (); */
  PRInt64 Tell(){
    PRInt64 _retval;
    nsresult __result = inner.Tell(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     *  setEOF
     *
     *  This method truncates the stream at the current offset.
     */
  /* void setEOF (); */
  void SetEOF(){
    nsresult __result = inner.SetEOF();
    CheckException(__result);
  }

private:
  nsISeekableStream inner;

}

