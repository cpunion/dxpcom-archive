/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebBrowserStream.idl
 */

module mozilla.dxpcom.nsIWebBrowserStreamD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWebBrowserStream;


public import mozilla.dxpcom.nsIWebBrowserStreamD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIWebBrowserStream */
/**
 * This interface provides a way to stream data to the web browser. This allows
 * loading of data from sources which can not be accessed using URIs and
 * nsIWebNavigation.
 *
 * @status FROZEN
 */
class nsIWebBrowserStreamD : public nsISupportsD {

  static const nsIID IID = NS_IWEBBROWSERSTREAM_IID;


  alias nsIWebBrowserStream InnerType;

  this(nsIWebBrowserStream intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebBrowserStream opCast() {
    return inner;
  }

  void opAssign(nsIWebBrowserStream value) {
    inner = value;
  }

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
  void OpenStream(nsIURID aBaseURI, char[] aContentType){
    scope auto _aContentType = new ACString(aContentType);
    nsresult __result = inner.OpenStream(aBaseURI ? cast(nsIURI)aBaseURI : null, cast(nsACString*)_aContentType);
    CheckException(__result);
  }

  /**
   * Append data to this stream.
   * @param aData The data to append
   * @param aLen  Length of the data to append.
   *
   * @note To append more than 4 GB of data, call this method multiple times.
   */
  /* void appendToStream ([array, size_is (aLen), const] in octet aData, in unsigned long aLen); */
  void AppendToStream(PRUint8 *aData, PRUint32 aLen){
    nsresult __result = inner.AppendToStream(aData, aLen);
    CheckException(__result);
  }

  /**
   * Notifies the browser that all the data has been appended. This may notify
   * the user that the browser is "done loading" in some form.
   *
   * @throw NS_ERROR_UNEXPECTED
   *        This method was called without a preceding openStream.
   */
  /* void closeStream (); */
  void CloseStream(){
    nsresult __result = inner.CloseStream();
    CheckException(__result);
  }

private:
  nsIWebBrowserStream inner;

}

