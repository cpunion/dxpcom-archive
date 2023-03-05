/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIConverterInputStream.idl
 */

module mozilla.xpcom.nsIConverterInputStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIUnicharInputStream;

public import mozilla.xpcom.nsIInputStream; /* forward declaration */


/* starting interface:    nsIConverterInputStream */
const char[] NS_ICONVERTERINPUTSTREAM_IID_STR = "fc66ffb6-5404-4908-a4a3-27f92fa0579d";

const nsIID NS_ICONVERTERINPUTSTREAM_IID= 
  {0xfc66ffb6, 0x5404, 0x4908, 
    [ 0xa4, 0xa3, 0x27, 0xf9, 0x2f, 0xa0, 0x57, 0x9d ]};

/**
 * A unichar input stream that wraps an input stream.
 * This allows reading unicode strings from a stream, automatically converting
 * the bytes from a selected character encoding.
 */
extern(Windows)
interface nsIConverterInputStream : nsIUnicharInputStream {
  static const char[] IID_STR = NS_ICONVERTERINPUTSTREAM_IID_STR;
  static const nsIID IID = NS_ICONVERTERINPUTSTREAM_IID;

  /**
     * Default replacement char value, U+FFFD REPLACEMENT CHARACTER.
     */
  enum { DEFAULT_REPLACEMENT_CHARACTER = 65533U };

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
  nsresult Init(nsIInputStream aStream, char *aCharset, PRInt32 aBufferSize, PRUnichar aReplacementChar);

}

