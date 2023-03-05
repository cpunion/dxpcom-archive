/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebBrowserStream.idl
 */

module mozilla.xpcom.nsIWebBrowserStream;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIWebBrowserStream */
const char[] NS_IWEBBROWSERSTREAM_IID_STR = "86d02f0e-219b-4cfc-9c88-bd98d2cce0b8";

const nsIID NS_IWEBBROWSERSTREAM_IID= 
  {0x86d02f0e, 0x219b, 0x4cfc, 
    [ 0x9c, 0x88, 0xbd, 0x98, 0xd2, 0xcc, 0xe0, 0xb8 ]};

/**
 * This interface provides a way to stream data to the web browser. This allows
 * loading of data from sources which can not be accessed using URIs and
 * nsIWebNavigation.
 *
 * @status FROZEN
 */
extern(Windows)
interface nsIWebBrowserStream : nsISupports {
  static const char[] IID_STR = NS_IWEBBROWSERSTREAM_IID_STR;
  static const nsIID IID = NS_IWEBBROWSERSTREAM_IID;

  /**
   * Prepare to load a stream of data. When this function returns successfully,
   * it must be paired by a call to closeStream.
   *
   * @param aBaseURI
   *        The base URI of the data. Must not be null. Relative
   *        URIs will be resolved relative to this URI.
   * @param aContentType
   *        ASCII string giving the content type of the data. If rendering
   *        content of this type is not supported, this method fails.
   *        This string may include a charset declaration, for example:
   *        text/html;charset=ISO-8859-1
   *
   * @throw NS_ERROR_NOT_AVAILABLE
   *        The requested content type is not supported.
   * @throw NS_ERROR_IN_PROGRESS
   *        openStream was called twice without an intermediate closeStream.
   */
  /* void openStream (in nsIURI aBaseURI, in ACString aContentType); */
  nsresult OpenStream(nsIURI aBaseURI, nsACString * aContentType);

  /**
   * Append data to this stream.
   * @param aData The data to append
   * @param aLen  Length of the data to append.
   *
   * @note To append more than 4 GB of data, call this method multiple times.
   */
  /* void appendToStream ([array, size_is (aLen), const] in octet aData, in unsigned long aLen); */
  nsresult AppendToStream(PRUint8 *aData, PRUint32 aLen);

  /**
   * Notifies the browser that all the data has been appended. This may notify
   * the user that the browser is "done loading" in some form.
   *
   * @throw NS_ERROR_UNEXPECTED
   *        This method was called without a preceding openStream.
   */
  /* void closeStream (); */
  nsresult CloseStream();

}

