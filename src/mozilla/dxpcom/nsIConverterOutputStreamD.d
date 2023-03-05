/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIConverterOutputStream.idl
 */

module mozilla.dxpcom.nsIConverterOutputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIConverterOutputStream;


public import mozilla.dxpcom.nsIConverterOutputStreamD;

public import mozilla.xpcom.nsIUnicharOutputStream;
public import mozilla.dxpcom.nsIUnicharOutputStreamD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;


/* starting wrapper class:    nsIConverterOutputStream */
/**
 * This interface allows writing strings to a stream, doing automatic
 * character encoding conversion.
 */
class nsIConverterOutputStreamD : public nsIUnicharOutputStreamD {

  static const nsIID IID = NS_ICONVERTEROUTPUTSTREAM_IID;


  alias nsIConverterOutputStream InnerType;

  this(nsIConverterOutputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIConverterOutputStream opCast() {
    return inner;
  }

  void opAssign(nsIConverterOutputStream value) {
    inner = value;
  }

  /**
     * Initialize this stream. Must be called before any other method on this
     * interface, or you will crash. The output stream passed to this method
     * must not be null, or you will crash.
     *
     * @param aOutStream
     *        The underlying output stream to which the converted strings will
     *        be written.
     * @param aCharset
     *        The character set to use for encoding the characters. A null
     *        charset will be interpreted as UTF-8.
     * @param aBufferSize
     *        How many bytes to buffer. A value of 0 means that no bytes will be
     *        buffered. Implementations not supporting buffering may ignore
     *        this parameter.
     * @param aReplacementCharacter
     *        The replacement character to use when an unsupported character is found.
     *        The character must be encodable in the selected character
     *        encoding; otherwise, attempts to write an unsupported character
     *        will throw NS_ERROR_LOSS_OF_SIGNIFICANT_DATA.
     *
     *        A value of 0x0000 will cause an exception to be thrown upon
     *        attempts to write unsupported characters.
     */
  /* void init (in nsIOutputStream aOutStream, in string aCharset, in unsigned long aBufferSize, in PRUnichar aReplacementCharacter); */
  void Init(nsIOutputStreamD aOutStream, char*aCharset, PRUint32 aBufferSize, PRUnichar aReplacementCharacter){
    nsresult __result = inner.Init(aOutStream ? cast(nsIOutputStream)aOutStream : null, aCharset, aBufferSize, aReplacementCharacter);
    CheckException(__result);
  }

private:
  nsIConverterOutputStream inner;

}

