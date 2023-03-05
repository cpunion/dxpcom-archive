/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDOMParser.idl
 */

module mozilla.dxpcom.nsIDOMParserD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDOMParser;


public import mozilla.dxpcom.nsIDOMParserD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIDOMParser */
/**
 * The nsIDOMParser interface is a non-SAX interface that can be used
 * to parse a string or byte stream containing XML or HTML content
 * to a DOM document. Parsing is always synchronous - a document is always
 * returned from the parsing methods. This is as opposed to loading and
 * parsing with the XMLHttpRequest interface, which can be used for
 * asynchronous (callback-based) loading.
 */
class nsIDOMParserD : public nsISupportsD {

  static const nsIID IID = NS_IDOMPARSER_IID;


  alias nsIDOMParser InnerType;

  this(nsIDOMParser intr){
    super(intr);
    this.inner = intr;
  }

  nsIDOMParser opCast() {
    return inner;
  }

  void opAssign(nsIDOMParser value) {
    inner = value;
  }

  /**
   * The string passed in is parsed into a DOM document.
   *
   * @param str The UTF16 string to be parsed
   * @param contentType The content type of the string (see parseFromStream)
   * @returns The DOM document created as a result of parsing the 
   *          string
   */
  /* nsIDOMDocument parseFromString (in wstring str, in string contentType); */
  nsIDOMDocumentD  ParseFromString(PRUnichar*str, char*contentType){
    nsIDOMDocument _retval;
    nsresult __result = inner.ParseFromString(str, contentType, &_retval);
    CheckException(__result);
    return new nsIDOMDocumentD(_retval);
  }

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
  nsIDOMDocumentD  ParseFromBuffer(PRUint8 *buf, PRUint32 bufLen, char*contentType){
    nsIDOMDocument _retval;
    nsresult __result = inner.ParseFromBuffer(buf, bufLen, contentType, &_retval);
    CheckException(__result);
    return new nsIDOMDocumentD(_retval);
  }

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
  nsIDOMDocumentD  ParseFromStream(nsIInputStreamD stream, char*charset, PRInt32 contentLength, char*contentType){
    nsIDOMDocument _retval;
    nsresult __result = inner.ParseFromStream(stream ? cast(nsIInputStream)stream : null, charset, contentLength, contentType, &_retval);
    CheckException(__result);
    return new nsIDOMDocumentD(_retval);
  }

  /**
   * Set/Get the baseURI, may be needed when called from native code.
   */
  /* [noscript] attribute nsIURI baseURI; */
  nsIURID  BaseURI(){
    nsIURI value;
    nsresult __result = inner.GetBaseURI(&value);
    CheckException(__result);
    return new nsIURID(value);
  }
  void BaseURI(nsIURID  aBaseURI){
    nsIURI value;
    nsresult __result = inner.SetBaseURI(value);
    CheckException(__result);
  }

private:
  nsIDOMParser inner;

}

