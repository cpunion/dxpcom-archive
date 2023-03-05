/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFileProtocolHandler.idl
 */

module mozilla.dxpcom.nsIFileProtocolHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFileProtocolHandler;


public import mozilla.dxpcom.nsIFileProtocolHandlerD;

public import mozilla.xpcom.nsIProtocolHandler;
public import mozilla.dxpcom.nsIProtocolHandlerD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIFileProtocolHandler */
class nsIFileProtocolHandlerD : public nsIProtocolHandlerD {

  static const nsIID IID = NS_IFILEPROTOCOLHANDLER_IID;


  alias nsIFileProtocolHandler InnerType;

  this(nsIFileProtocolHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsIFileProtocolHandler opCast() {
    return inner;
  }

  void opAssign(nsIFileProtocolHandler value) {
    inner = value;
  }

  /**
     * This method constructs a new file URI 
     *
     * @param aFile nsIFile
     * @return reference to a new nsIURI object
     */
  /* nsIURI newFileURI (in nsIFile aFile); */
  nsIURID  NewFileURI(nsIFileD aFile){
    nsIURI _retval;
    nsresult __result = inner.NewFileURI(aFile ? cast(nsIFile)aFile : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /**
     * Converts the nsIFile to the corresponding URL string.  NOTE: under
     * some platforms this is a lossy conversion (e.g., Mac Carbon build).
     * If the nsIFile is a local file, then the result will be a file://
     * URL string.
     *
     * The resulting string may contain URL-escaped characters.
     */
  /* AUTF8String getURLSpecFromFile (in nsIFile file); */
  char[] GetURLSpecFromFile(nsIFileD file){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetURLSpecFromFile(file ? cast(nsIFile)file : null, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
     * Converts the URL string into the corresponding nsIFile if possible.
     * A local file will be created if the URL string begins with file://.
     */
  /* nsIFile getFileFromURLSpec (in AUTF8String url); */
  nsIFileD  GetFileFromURLSpec(char[] url){
    scope auto _url = new ACString(url);
    nsIFile _retval;
    nsresult __result = inner.GetFileFromURLSpec(cast(nsACString*)_url, &_retval);
    CheckException(__result);
    return new nsIFileD(_retval);
  }

  /**
     * Takes a local file and tries to interpret it as an internet shortcut
     * (e.g. .url files on windows).
     * @param file The local file to read
     * @return The URI the file refers to
     *
     * @throw NS_ERROR_NOT_AVAILABLE if the OS does not support such files.
     * @throw NS_ERROR_NOT_AVAILABLE if this file is not an internet shortcut.
     */
  /* nsIURI readURLFile (in nsIFile file); */
  nsIURID  ReadURLFile(nsIFileD file){
    nsIURI _retval;
    nsresult __result = inner.ReadURLFile(file ? cast(nsIFile)file : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

private:
  nsIFileProtocolHandler inner;

}

