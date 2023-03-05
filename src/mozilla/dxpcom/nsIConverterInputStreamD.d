/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIConverterInputStream.idl
 */

module mozilla.dxpcom.nsIConverterInputStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIConverterInputStream;


public import mozilla.dxpcom.nsIConverterInputStreamD;

public import mozilla.xpcom.nsIUnicharInputStream;
public import mozilla.dxpcom.nsIUnicharInputStreamD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;


/* starting wrapper class:    nsIConverterInputStream */
/**
 * A unichar input stream that wraps an input stream.
 * This allows reading unicode strings from a stream, automatically converting
 * the bytes from a selected character encoding.
 */
class nsIConverterInputStreamD : public nsIUnicharInputStreamD {

  static const nsIID IID = NS_ICONVERTERINPUTSTREAM_IID;


  alias nsIConverterInputStream InnerType;

  this(nsIConverterInputStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIConverterInputStream opCast() {
    return inner;
  }

  void opAssign(nsIConverterInputStream value) {
    inner = value;
  }

  /**
     * Default replacement char value, U+FFFD REPLACEMENT CHARACTER.
     */
  enum { DEFAULT_REPLACEMENT_CHARACTER = 65533U }

  /**
     * Initialize this stream.
     * @param aStream 
     *        The underlying stream to read from.
     * @param aCharset
     *        The character encoding to use for converting the bytes of the
     *        stream. A null charset will be interpreted as UTF-8.
     * @param aBufferSize
     *        How many bytes to buffer.
     * @param aReplacementChar
     *        The character to replace unknown byte sequences in the stream
     *        with. The standard replacement character is U+FFFD.
     *        A value of 0x0000 will cause an exception to be thrown if unknown
     *        byte sequences are encountered in the stream.
     */
  /* void init (in nsIInputStream aStream, in string aCharset, in long aBufferSize, in PRUnichar aReplacementChar); */
  void Init(nsIInputStreamD aStream, char*aCharset, PRInt32 aBufferSize, PRUnichar aReplacementChar){
    nsresult __result = inner.Init(aStream ? cast(nsIInputStream)aStream : null, aCharset, aBufferSize, aReplacementChar);
    CheckException(__result);
  }

private:
  nsIConverterInputStream inner;

}

