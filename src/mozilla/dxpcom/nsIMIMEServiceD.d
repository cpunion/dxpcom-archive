/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMIMEService.idl
 */

module mozilla.dxpcom.nsIMIMEServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMIMEService;


public import mozilla.dxpcom.nsIMIMEServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMIMEInfo;
public import mozilla.dxpcom.nsIMIMEInfoD;
public import mozilla.xpcom.nsIURI;
public import mozilla.dxpcom.nsIURID;
public import mozilla.xpcom.nsIFile;
public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIMIMEService */
/**
 * The MIME service is responsible for mapping file extensions to MIME-types
 * (see RFC 2045). It also provides access to nsIMIMEInfo interfaces and
 * acts as a general convenience wrapper of nsIMIMEInfo interfaces.
 *
 * The MIME service maintains a database with a <b>one</b> MIME type <b>to many</b>
 * file extensions rule. Adding the same file extension to multiple MIME types
 * is illegal and behavior is undefined.
 *
 * @see nsIMIMEInfo
 */
class nsIMIMEServiceD : public nsISupportsD {

  static const nsIID IID = NS_IMIMESERVICE_IID;


  alias nsIMIMEService InnerType;

  this(nsIMIMEService intr){
    super(intr);
    this.inner = intr;
  }

  nsIMIMEService opCast() {
    return inner;
  }

  void opAssign(nsIMIMEService value) {
    inner = value;
  }

  /**
     * Retrieves an nsIMIMEInfo using both the extension
     * and the type of a file. The type is given preference
     * during the lookup. One of aMIMEType and aFileExt
     * can be an empty string. At least one of aMIMEType and aFileExt
     * must be nonempty.
     */
  /* nsIMIMEInfo getFromTypeAndExtension (in ACString aMIMEType, in AUTF8String aFileExt); */
  nsIMIMEInfoD  GetFromTypeAndExtension(char[] aMIMEType, char[] aFileExt){
    scope auto _aMIMEType = new ACString(aMIMEType);
    scope auto _aFileExt = new ACString(aFileExt);
    nsIMIMEInfo _retval;
    nsresult __result = inner.GetFromTypeAndExtension(cast(nsACString*)_aMIMEType, cast(nsACString*)_aFileExt, &_retval);
    CheckException(__result);
    return new nsIMIMEInfoD(_retval);
  }

  /**
     * Retrieves a ACString representation of the MIME type
     * associated with this file extension.
     *
     * @param  A file extension (excluding the dot ('.')).
     * @return The MIME type, if any.
     */
  /* ACString getTypeFromExtension (in AUTF8String aFileExt); */
  char[] GetTypeFromExtension(char[] aFileExt){
    scope auto _aFileExt = new ACString(aFileExt);
    scope auto _retval = new ACString;
    nsresult __result = inner.GetTypeFromExtension(cast(nsACString*)_aFileExt, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
     * Retrieves a ACString representation of the MIME type
     * associated with this URI. The association is purely
     * file extension to MIME type based. No attempt to determine
     * the type via server headers or byte scanning is made.
     *
     * @param  The URI the user wants MIME info on.
     * @return The MIME type, if any.
     */
  /* ACString getTypeFromURI (in nsIURI aURI); */
  char[] GetTypeFromURI(nsIURID aURI){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetTypeFromURI(aURI ? cast(nsIURI)aURI : null, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* ACString getTypeFromFile (in nsIFile aFile); */
  char[] GetTypeFromFile(nsIFileD aFile){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetTypeFromFile(aFile ? cast(nsIFile)aFile : null, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
     * Given a Type/Extension combination, returns the default extension
     * for this type. This may be identical to the passed-in extension.
     *
     * @param aMIMEType The Type to get information on. Must not be empty.
     * @param aFileExt  File Extension. Can be empty.
     */
  /* AUTF8String getPrimaryExtension (in ACString aMIMEType, in AUTF8String aFileExt); */
  char[] GetPrimaryExtension(char[] aMIMEType, char[] aFileExt){
    scope auto _aMIMEType = new ACString(aMIMEType);
    scope auto _aFileExt = new ACString(aFileExt);
    scope auto _retval = new ACString;
    nsresult __result = inner.GetPrimaryExtension(cast(nsACString*)_aMIMEType, cast(nsACString*)_aFileExt, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIMIMEService inner;

}

