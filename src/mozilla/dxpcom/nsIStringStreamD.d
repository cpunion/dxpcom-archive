/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIStringStream.idl
 */

module mozilla.dxpcom.nsIStringStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIStringStream;


public import mozilla.dxpcom.nsIStringStreamD;

public import mozilla.xpcom.nsIInputStream;
public import mozilla.dxpcom.nsIInputStreamD;


/* starting wrapper class:    nsIStringInputStream */
/**
 * nsIStringInputStream
 *
 * Provides scriptable and specialized C++ only methods for initializing a
 * nsIInputStream implementation with a simple character array.
 */
class nsIStringInputStreamD : public nsIInputStreamD {

  static const nsIID IID = NS_ISTRINGINPUTSTREAM_IID;


  alias nsIStringInputStream InnerType;

  this(nsIStringInputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIStringInputStream opCast() {
    return inner;
  }

  void opAssign(nsIStringInputStream value) {
    inner = value;
  }

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
  void SetData(char*data, PRInt32 dataLen){
    nsresult __result = inner.SetData(data, dataLen);
    CheckException(__result);
  }

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
  void AdoptData(char * data, PRInt32 dataLen){
    nsresult __result = inner.AdoptData(data, dataLen);
    CheckException(__result);
  }

  /**
     * ShareData - assign data to the input stream.  the input stream references
     * the given data buffer until the input stream is destroyed.  the given
     * data buffer must outlive the input stream.
     *
     * @param data      - stream data
     * @param dataLen   - stream data length (-1 if length should be computed)
     */
  /* [noscript] void shareData (in string data, in long dataLen); */
  void ShareData(char*data, PRInt32 dataLen){
    nsresult __result = inner.ShareData(data, dataLen);
    CheckException(__result);
  }

private:
  nsIStringInputStream inner;

}

