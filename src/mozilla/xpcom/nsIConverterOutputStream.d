/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIConverterOutputStream.idl
 */

module mozilla.xpcom.nsIConverterOutputStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIUnicharOutputStream;

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */


/* starting interface:    nsIConverterOutputStream */
const char[] NS_ICONVERTEROUTPUTSTREAM_IID_STR = "4b71113a-cb0d-479f-8ed5-01daeba2e8d4";

const nsIID NS_ICONVERTEROUTPUTSTREAM_IID= 
  {0x4b71113a, 0xcb0d, 0x479f, 
    [ 0x8e, 0xd5, 0x01, 0xda, 0xeb, 0xa2, 0xe8, 0xd4 ]};

/**
 * This interface allows writing strings to a stream, doing automatic
 * character encoding conversion.
 */
extern(Windows)
interface nsIConverterOutputStream : nsIUnicharOutputStream {
  static const char[] IID_STR = NS_ICONVERTEROUTPUTSTREAM_IID_STR;
  static const nsIID IID = NS_ICONVERTEROUTPUTSTREAM_IID;

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
  nsresult Init(nsIOutputStream aOutStream, char *aCharset, PRUint32 aBufferSize, PRUnichar aReplacementCharacter);

}

