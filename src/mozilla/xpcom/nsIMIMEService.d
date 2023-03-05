/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMIMEService.idl
 */

module mozilla.xpcom.nsIMIMEService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMIMEInfo;
public import mozilla.xpcom.nsIURI;
public import mozilla.xpcom.nsIFile;


/* starting interface:    nsIMIMEService */
const char[] NS_IMIMESERVICE_IID_STR = "5b3675a1-02db-4f8f-a560-b34736635f47";

const nsIID NS_IMIMESERVICE_IID= 
  {0x5b3675a1, 0x02db, 0x4f8f, 
    [ 0xa5, 0x60, 0xb3, 0x47, 0x36, 0x63, 0x5f, 0x47 ]};

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
extern(Windows)
interface nsIMIMEService : nsISupports {
  static const char[] IID_STR = NS_IMIMESERVICE_IID_STR;
  static const nsIID IID = NS_IMIMESERVICE_IID;

  /**
     * Retrieves an nsIMIMEInfo using both the extension
     * and the type of a file. The type is given preference
     * during the lookup. One of aMIMEType and aFileExt
     * can be an empty string. At least one of aMIMEType and aFileExt
     * must be nonempty.
     */
  /* nsIMIMEInfo getFromTypeAndExtension (in ACString aMIMEType, in AUTF8String aFileExt); */
  nsresult GetFromTypeAndExtension(nsACString * aMIMEType, nsACString * aFileExt, nsIMIMEInfo *_retval);

  /**
     * Retrieves a ACString representation of the MIME type
     * associated with this file extension.
     *
     * @param  A file extension (excluding the dot ('.')).
     * @return The MIME type, if any.
     */
  /* ACString getTypeFromExtension (in AUTF8String aFileExt); */
  nsresult GetTypeFromExtension(nsACString * aFileExt, nsACString * _retval);

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
  nsresult GetTypeFromURI(nsIURI aURI, nsACString * _retval);

  /* ACString getTypeFromFile (in nsIFile aFile); */
  nsresult GetTypeFromFile(nsIFile aFile, nsACString * _retval);

  /**
     * Given a Type/Extension combination, returns the default extension
     * for this type. This may be identical to the passed-in extension.
     *
     * @param aMIMEType The Type to get information on. Must not be empty.
     * @param aFileExt  File Extension. Can be empty.
     */
  /* AUTF8String getPrimaryExtension (in ACString aMIMEType, in AUTF8String aFileExt); */
  nsresult GetPrimaryExtension(nsACString * aMIMEType, nsACString * aFileExt, nsACString * _retval);

}

