/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPrincipal.idl
 */

module mozilla.dxpcom.nsIPrincipalD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPrincipal;


public import mozilla.dxpcom.nsIPrincipalD;

public import mozilla.xpcom.nsISerializable;
public import mozilla.dxpcom.nsISerializableD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIPrincipal */
class nsIPrincipalD : public nsISerializableD {

  static const nsIID IID = NS_IPRINCIPAL_IID;


  alias nsIPrincipal InnerType;

  this(nsIPrincipal intr){
    super(intr);
    this.inner = intr;
  }

  nsIPrincipal opCast() {
    return inner;
  }

  void opAssign(nsIPrincipal value) {
    inner = value;
  }

  /**
     * Values of capabilities for each principal. Order is
     * significant: if an operation is performed on a set
     * of capabilities, the minimum is computed.
     */
  enum { ENABLE_DENIED = 1 }

  enum { ENABLE_UNKNOWN = 2 }

  enum { ENABLE_WITH_USER_PERMISSION = 3 }

  enum { ENABLE_GRANTED = 4 }

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
  void GetPreferences(out char*prefBranch, out char*id, out char*subjectName, out char*grantedList, out char*deniedList){
    nsresult __result = inner.GetPreferences(&prefBranch, &id, &subjectName, &grantedList, &deniedList);
    CheckException(__result);
  }

  /**
     * Returns whether the other principal is equivalent to this principal.
     * Principals are considered equal if they are the same principal,
     * they have the same origin, or have the same certificate fingerprint ID
     */
  /* boolean equals (in nsIPrincipal other); */
  PRBool Equals(nsIPrincipalD other){
    PRBool _retval;
    nsresult __result = inner.Equals(other ? cast(nsIPrincipal)other : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * Returns a hash value for the principal.
     */
  /* readonly attribute unsigned long hashValue; */
  PRUint32 HashValue(){
    PRUint32 value;
    nsresult __result = inner.GetHashValue(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Returns the JS equivalent of the principal.
     * @see JSPrincipals.h
     */
  /* JSPrincipals getJSPrincipals (in JSContext cx); */
  JSPrincipals * GetJSPrincipals(JSContext * cx){
JSPrincipals * _retval;
    nsresult __result = inner.GetJSPrincipals(cx, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * The domain security policy of the principal.
     */
  /* attribute voidPtr securityPolicy; */
  void * SecurityPolicy(){
    void * value;
    nsresult __result = inner.GetSecurityPolicy(&value);
    CheckException(__result);
    return value;
  }
  void SecurityPolicy(void * aSecurityPolicy){
    nsresult __result = inner.SetSecurityPolicy(aSecurityPolicy);
    CheckException(__result);
  }

  /* short canEnableCapability (in string capability); */
  PRInt16 CanEnableCapability(char*capability){
    PRInt16 _retval;
    nsresult __result = inner.CanEnableCapability(capability, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void setCanEnableCapability (in string capability, in short canEnable); */
  void SetCanEnableCapability(char*capability, PRInt16 canEnable){
    nsresult __result = inner.SetCanEnableCapability(capability, canEnable);
    CheckException(__result);
  }

  /* boolean isCapabilityEnabled (in string capability, in voidPtr annotation); */
  PRBool IsCapabilityEnabled(char*capability, void * annotation){
    PRBool _retval;
    nsresult __result = inner.IsCapabilityEnabled(capability, annotation, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void enableCapability (in string capability, inout voidPtr annotation); */
  void EnableCapability(char*capability, out void * annotation){
    nsresult __result = inner.EnableCapability(capability, &annotation);
    CheckException(__result);
  }

  /* void revertCapability (in string capability, inout voidPtr annotation); */
  void RevertCapability(char*capability, out void * annotation){
    nsresult __result = inner.RevertCapability(capability, &annotation);
    CheckException(__result);
  }

  /* void disableCapability (in string capability, inout voidPtr annotation); */
  void DisableCapability(char*capability, out void * annotation){
    nsresult __result = inner.DisableCapability(capability, &annotation);
    CheckException(__result);
  }

  /**
     * The codebase URI to which this principal pertains.  This is
     * generally the document URI.
     */
  /* readonly attribute nsIURI URI; */
  nsIURID  URI(){
    nsIURI value;
    nsresult __result = inner.GetURI(&value);
    CheckException(__result);
    return new nsIURID(value);
  }

  /**
     * The domain URI to which this principal pertains.
     * This is congruent with HTMLDocument.domain, and may be null.
     * Setting this has no effect on the URI.
     */
  /* attribute nsIURI domain; */
  nsIURID  Domain(){
    nsIURI value;
    nsresult __result = inner.GetDomain(&value);
    CheckException(__result);
    return new nsIURID(value);
  }
  void Domain(nsIURID  aDomain){
    nsIURI value;
    nsresult __result = inner.SetDomain(value);
    CheckException(__result);
  }

  /**
     * The origin of this principal's domain, if non-null, or its
     * codebase URI otherwise. An origin is defined as:
     * scheme + host + port.
     */
  /* readonly attribute string origin; */
  char* Origin(){
    char* value;
    nsresult __result = inner.GetOrigin(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Whether this principal is associated with a certificate.
     */
  /* readonly attribute boolean hasCertificate; */
  PRBool HasCertificate(){
    PRBool value;
    nsresult __result = inner.GetHasCertificate(&value);
    CheckException(__result);
    return value;
  }

  /**
     * The fingerprint ID of this principal's certificate.
     * Throws if there is no certificate associated with this principal.
     */
  /* readonly attribute AUTF8String fingerprint; */
  char[] Fingerprint(){
    scope auto value = new ACString();
    nsresult __result = inner.GetFingerprint(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

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
  char[] PrettyName(){
    scope auto value = new ACString();
    nsresult __result = inner.GetPrettyName(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

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
  PRBool Subsumes(nsIPrincipalD other){
    PRBool _retval;
    nsresult __result = inner.Subsumes(other ? cast(nsIPrincipal)other : null, &_retval);
    CheckException(__result);
    return _retval;
  }

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
  char[] SubjectName(){
    scope auto value = new ACString();
    nsresult __result = inner.GetSubjectName(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**
     * The certificate associated with this principal, if any.  If there isn't
     * one, this will return null.  Getting this attribute never throws.
     */
  /* readonly attribute nsISupports certificate; */
  nsISupportsD  Certificate(){
    nsISupports value;
    nsresult __result = inner.GetCertificate(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }

private:
  nsIPrincipal inner;

}

