/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMParser.idl
 */

module mozilla.xpcom.nsIDOMParser;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIDOMParser */
const char[] NS_IDOMPARSER_IID_STR = "4f45513e-55e5-411c-a844-e899057026c1";

const nsIID NS_IDOMPARSER_IID= 
  {0x4f45513e, 0x55e5, 0x411c, 
    [ 0xa8, 0x44, 0xe8, 0x99, 0x05, 0x70, 0x26, 0xc1 ]};

/**
 * The nsIDOMParser interface is a non-SAX interface that can be used
 * to parse a string or byte stream containing XML or HTML content
 * to a DOM document. Parsing is always synchronous - a document is always
 * returned from the parsing methods. This is as opposed to loading and
 * parsing with the XMLHttpRequest interface, which can be used for
 * asynchronous (callback-based) loading.
 */
extern(Windows)
interface nsIDOMParser : nsISupports {
  static const char[] IID_STR = NS_IDOMPARSER_IID_STR;
  static const nsIID IID = NS_IDOMPARSER_IID;

  /**
   * The string passed in is parsed into a DOM document.
   *
   * @param str The UTF16 string to be parsed
   * @param contentType The content type of the string (see parseFromStream)
   * @returns The DOM document created as a result of parsing the 
   *          string
   */
  /* nsIDOMDocument parseFromString (in wstring str, in string contentType); */
  nsresult ParseFromString(PRUnichar *str, char *contentType, nsIDOMDocument *_retval);

  /**
   * The buffer is parsed into a DOM document.
   * The charset is determined from the xml entity decl.
   *
   * @param buf The octet array data to be parsed
   * @param bufLen Length (in bytes) of the data
   * @param contentType The content type of the data (see parseFromStream)
   * @returns The DOM document created as a result of parsing the 
   *          string
   */
  /* nsIDOMDocument parseFromBuffer ([array, size_is (bufLen), const] in octet buf, in PRUint32 bufLen, in string contentType); */
  nsresult ParseFromBuffer(PRUint8 *buf, PRUint32 bufLen, char *contentType, nsIDOMDocument *_retval);

  /**
   * The byte stream passed in is parsed into a DOM document.
   *
   * Not accessible from web content.
   *
   * @param stream The byte stream whose contents are parsed
   * @param charset The character set that was used to encode the byte
   *                stream. NULL if not specified.
   * @param contentLength The number of bytes in the input stream.
   * @param contentType The content type of the string - either text/xml,
   *                    application/xml, or application/xhtml+xml.
   *                    Must not be NULL.
   * @returns The DOM document created as a result of parsing the 
   *          stream
   */
  /* nsIDOMDocument parseFromStream (in nsIInputStream stream, in string charset, in long contentLength, in string contentType); */
  nsresult ParseFromStream(nsIInputStream stream, char *charset, PRInt32 contentLength, char *contentType, nsIDOMDocument *_retval);

  /**
   * Set/Get the baseURI, may be needed when called from native code.
   */
  /* [noscript] attribute nsIURI baseURI; */
  nsresult GetBaseURI(nsIURI  *aBaseURI);
  nsresult SetBaseURI(nsIURI  aBaseURI);

}

