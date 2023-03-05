/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrincipal.idl
 */

module mozilla.xpcom.nsIPrincipal;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISerializable;

public import mozilla.xpcom.nsIURI; /* forward declaration */


/* starting interface:    nsIPrincipal */
const char[] NS_IPRINCIPAL_IID_STR = "fb9ddeb9-26f9-46b8-85d5-3978aaee05aa";

const nsIID NS_IPRINCIPAL_IID= 
  {0xfb9ddeb9, 0x26f9, 0x46b8, 
    [ 0x85, 0xd5, 0x39, 0x78, 0xaa, 0xee, 0x05, 0xaa ]};

extern(Windows)
interface nsIPrincipal : nsISerializable {
  static const char[] IID_STR = NS_IPRINCIPAL_IID_STR;
  static const nsIID IID = NS_IPRINCIPAL_IID;

  /**
     * Values of capabilities for each principal. Order is
     * significant: if an operation is performed on a set
     * of capabilities, the minimum is computed.
     */
  enum { ENABLE_DENIED = 1 };

  enum { ENABLE_UNKNOWN = 2 };

  enum { ENABLE_WITH_USER_PERMISSION = 3 };

  enum { ENABLE_GRANTED = 4 };

  /**
     * Returns the security preferences associated with this principal.
     * prefBranch will be set to the pref branch to which these preferences
     * pertain.  id is a pseudo-unique identifier, pertaining to either the
     * fingerprint or the origin.  subjectName is a name that identifies the
     * entity this principal represents (may be empty).  grantedList and
     * deniedList are space-separated lists of capabilities which were
     * explicitly granted or denied by a pref.
     */
  /* void getPreferences (out string prefBranch, out string id, out string subjectName, out string grantedList, out string deniedList); */
  nsresult GetPreferences(char **prefBranch, char **id, char **subjectName, char **grantedList, char **deniedList);

  /**
     * Returns whether the other principal is equivalent to this principal.
     * Principals are considered equal if they are the same principal,
     * they have the same origin, or have the same certificate fingerprint ID
     */
  /* boolean equals (in nsIPrincipal other); */
  nsresult Equals(nsIPrincipal other, PRBool *_retval);

  /**
     * Returns a hash value for the principal.
     */
  /* readonly attribute unsigned long hashValue; */
  nsresult GetHashValue(PRUint32 *aHashValue);

  /**
     * Returns the JS equivalent of the principal.
     * @see JSPrincipals.h
     */
  /* JSPrincipals getJSPrincipals (in JSContext cx); */
  nsresult GetJSPrincipals(JSContext * cx, JSPrincipals * *_retval);

  /**
     * The domain security policy of the principal.
     */
  /* attribute voidPtr securityPolicy; */
  nsresult GetSecurityPolicy(void * *aSecurityPolicy);
  nsresult SetSecurityPolicy(void * aSecurityPolicy);

  /* short canEnableCapability (in string capability); */
  nsresult CanEnableCapability(char *capability, PRInt16 *_retval);

  /* void setCanEnableCapability (in string capability, in short canEnable); */
  nsresult SetCanEnableCapability(char *capability, PRInt16 canEnable);

  /* boolean isCapabilityEnabled (in string capability, in voidPtr annotation); */
  nsresult IsCapabilityEnabled(char *capability, void * annotation, PRBool *_retval);

  /* void enableCapability (in string capability, inout voidPtr annotation); */
  nsresult EnableCapability(char *capability, void * *annotation);

  /* void revertCapability (in string capability, inout voidPtr annotation); */
  nsresult RevertCapability(char *capability, void * *annotation);

  /* void disableCapability (in string capability, inout voidPtr annotation); */
  nsresult DisableCapability(char *capability, void * *annotation);

  /**
     * The codebase URI to which this principal pertains.  This is
     * generally the document URI.
     */
  /* readonly attribute nsIURI URI; */
  nsresult GetURI(nsIURI  *aURI);

  /**
     * The domain URI to which this principal pertains.
     * This is congruent with HTMLDocument.domain, and may be null.
     * Setting this has no effect on the URI.
     */
  /* attribute nsIURI domain; */
  nsresult GetDomain(nsIURI  *aDomain);
  nsresult SetDomain(nsIURI  aDomain);

  /**
     * The origin of this principal's domain, if non-null, or its
     * codebase URI otherwise. An origin is defined as:
     * scheme + host + port.
     */
  /* readonly attribute string origin; */
  nsresult GetOrigin(char * *aOrigin);

  /**
     * Whether this principal is associated with a certificate.
     */
  /* readonly attribute boolean hasCertificate; */
  nsresult GetHasCertificate(PRBool *aHasCertificate);

  /**
     * The fingerprint ID of this principal's certificate.
     * Throws if there is no certificate associated with this principal.
     */
  /* readonly attribute AUTF8String fingerprint; */
  nsresult GetFingerprint(nsACString * aFingerprint);

  /**
     * The pretty name for the certificate.  This sort of (but not really)
     * identifies the subject of the certificate (the entity that stands behind
     * the certificate).  Note that this may be empty; prefer to get the
     * certificate itself and get this information from it, since that may
     * provide more information.
     *
     * Throws if there is no certificate associated with this principal.
     */
  /* readonly attribute AUTF8String prettyName; */
  nsresult GetPrettyName(nsACString * aPrettyName);

  /**
     * Returns whether the other principal is equal to or weaker than this
     * principal.  Principals are equal if they are the same object, they
     * have the same origin, or they have the same certificate ID.
     *
     * Thus a principal subsumes itself if it is equal to itself.
     *
     * The system principal subsumes itself and all other principals except
     * the non-principal.
     *
     * The non-principal is not equal to itself or any other principal, and
     * therefore does not subsume itself.
     *
     * Both codebase and certificate principals are subsumed by the system
     * principal, but no codebase or certificate principal yet subsumes any
     * other codebase or certificate principal.  This may change in a future
     * release; note that nsIPrincipal is unfrozen, not slated to be frozen.
     */
  /* boolean subsumes (in nsIPrincipal other); */
  nsresult Subsumes(nsIPrincipal other, PRBool *_retval);

  /**
     * The subject name for the certificate.  This actually identifies the
     * subject of the certificate.  This may well not be a string that would
     * mean much to a typical user on its own (e.g. it may have a number of
     * different names all concatenated together with some information on what
     * they mean in between).
     *
     * Throws if there is no certificate associated with this principal.
     */
  /* readonly attribute AUTF8String subjectName; */
  nsresult GetSubjectName(nsACString * aSubjectName);

  /**
     * The certificate associated with this principal, if any.  If there isn't
     * one, this will return null.  Getting this attribute never throws.
     */
  /* readonly attribute nsISupports certificate; */
  nsresult GetCertificate(nsISupports  *aCertificate);

}

