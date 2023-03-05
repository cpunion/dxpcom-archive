/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIResProtocolHandler.idl
 */

module mozilla.xpcom.nsIResProtocolHandler;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIProtocolHandler;


/* starting interface:    nsIResProtocolHandler */
const char[] NS_IRESPROTOCOLHANDLER_IID_STR = "067ca872-e947-4bd6-8946-a479cb6ba5dd";

const nsIID NS_IRESPROTOCOLHANDLER_IID= 
  {0x067ca872, 0xe947, 0x4bd6, 
    [ 0x89, 0x46, 0xa4, 0x79, 0xcb, 0x6b, 0xa5, 0xdd ]};

/**
 * Protocol handler interface for the resource:// protocol
 */
extern(Windows)
interface nsIResProtocolHandler : nsIProtocolHandler {
  static const char[] IID_STR = NS_IRESPROTOCOLHANDLER_IID_STR;
  static const nsIID IID = NS_IRESPROTOCOLHANDLER_IID;

  /**
     * Sets the substitution for the root key:
     *   resource://root/path ==> baseURI.resolve(path)
     *
     * A null baseURI removes the specified substitution.
     *
     * A root key should always be lowercase; however, this may not be
     * enforced.
     */
  /* void setSubstitution (in ACString root, in nsIURI baseURI); */
  nsresult SetSubstitution(nsACString * root, nsIURI baseURI);

  /**
     * Gets the substitution for the root key.
     *
     * @throws NS_ERROR_NOT_AVAILABLE if none exists.
     */
  /* nsIURI getSubstitution (in ACString root); */
  nsresult GetSubstitution(nsACString * root, nsIURI *_retval);

  /**
     * Returns TRUE if the substitution exists and FALSE otherwise.
     */
  /* boolean hasSubstitution (in ACString root); */
  nsresult HasSubstitution(nsACString * root, PRBool *_retval);

  /**
     * Utility function to resolve a resource URI.  A resolved URI is not 
     * guaranteed to reference a resource that exists (ie. opening a channel to
     * the resolved URI may fail).
     *
     * @throws NS_ERROR_NOT_AVAILABLE if resURI.host() is an unknown root key.
     */
  /* AUTF8String resolveURI (in nsIURI resURI); */
  nsresult ResolveURI(nsIURI resURI, nsACString * _retval);

}

