/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPURL.idl
 */

module mozilla.dxpcom.nsILDAPURLD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILDAPURL;


public import mozilla.dxpcom.nsILDAPURLD;

public import mozilla.xpcom.nsIURI;
public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsILDAPURL */
/**
 * Strings in methods inherited from nsIURI, which are using XPIDL
 * |string| types, are expected to be UTF8 encoded. All such strings
 * in this interface, except attribute types (e.g. "cn"), should in fact
 * be UTF8. It's important to remember that attributes can not be UTF8,
 * they can only be of a limited subset of ASCII (see RFC 2251).
 */
class nsILDAPURLD : public nsIURID {

  static const nsIID IID = NS_ILDAPURL_IID;


  alias nsILDAPURL InnerType;

  this(nsILDAPURL intr){
    super(intr);
    this.inner = intr;
  }

  nsILDAPURL opCast() {
    return inner;
  }

  void opAssign(nsILDAPURL value) {
    inner = value;
  }

  /**
     * The distinguished name of the URL (ie the base DN for the search).
     * This string is expected to be a valid UTF8 string.
     *
     * for the getter:
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer to GET method
     * @exception NS_ERROR_OUT_OF_MEMORY	Ran out of memory
     */
  /* attribute AUTF8String dn; */
  char[] Dn(){
    scope auto value = new ACString();
    nsresult __result = inner.GetDn(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Dn(char[] aDn){
    scope auto value = new ACString(aDn);
    nsresult __result = inner.SetDn(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * Return all LDAP attributes currently set. The empty array indicates
     * that all attributes are requested.
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer to GET method
     * @exception NS_ERROR_OUT_OF_MEMORY	Ran out of memory
     */
  /* void getAttributes (out unsigned long aCount, [array, size_is (aCount), retval] out string aAttrs); */
  void GetAttributes(out PRUint32 aCount, out char**aAttrs){
    nsresult __result = inner.GetAttributes(&aCount, &aAttrs);
    CheckException(__result);
  }

  /**
     * Set the array of attributes, dropping whatever was there before.
     *
     * @param aAttrs                        An array of LDAP attributes
     * @exception NS_ERROR_OUT_OF_MEMORY	Ran out of memory
     */
  /* void setAttributes (in unsigned long aCount, [array, size_is (aCount)] in string aAttrs); */
  void SetAttributes(PRUint32 aCount, char**aAttrs){
    nsresult __result = inner.SetAttributes(aCount, aAttrs);
    CheckException(__result);
  }

  /**
     * Add one attribute to the array of attributes to request. If the
     * attribute is already in our array, this becomes a noop.
     *
     * @param aAttribute          An LDAP attribute (e.g. "cn")
     */
  /* void addAttribute (in string aAttribute); */
  void AddAttribute(char*aAttribute){
    nsresult __result = inner.AddAttribute(aAttribute);
    CheckException(__result);
  }

  /**
     * Remove one attribute from the array of attributes to request. If
     * the attribute didn't exist in the array, this becomes a noop.
     *
     * @param aAttribute                    An LDAP attribute (e.g. "cn")
     * @exception NS_ERROR_OUT_OF_MEMORY	Ran out of memory
     */
  /* void removeAttribute (in string aAttribute); */
  void RemoveAttribute(char*aAttribute){
    nsresult __result = inner.RemoveAttribute(aAttribute);
    CheckException(__result);
  }

  /**
     * Test if an attribute is in our list of attributes already
     *
     * @param aAttribute                    An LDAP attribute (e.g. "cn")
     * @return boolean                      Truth value
     * @exception NS_ERROR_NULL_POINTER     NULL pointer to GET method
     */
  /* boolean hasAttribute (in string aAttribute); */
  PRBool HasAttribute(char*aAttribute){
    PRBool _retval;
    nsresult __result = inner.HasAttribute(aAttribute, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
     * The scope of the search.  defaults to SCOPE_BASE. 
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer to GET method
     * @exception NS_ERROR_MALFORMED_URI	Illegal base to SET method
     */
  /* attribute long scope; */
  PRInt32 Scope(){
    PRInt32 value;
    nsresult __result = inner.GetScope(&value);
    CheckException(__result);
    return value;
  }
  void Scope(PRInt32 aScope){
    nsresult __result = inner.SetScope(aScope);
    CheckException(__result);
  }

  /**
     * Search just the base object
     */
  enum { SCOPE_BASE = 0 }

  /** 
     * Search only the children of the base object
     */
  enum { SCOPE_ONELEVEL = 1 }

  /**
     * Search the entire subtree under and including the base object
     */
  enum { SCOPE_SUBTREE = 2 }

  /**
     * The search filter. "(objectClass=*)" is the default.
     */
  /* attribute AUTF8String filter; */
  char[] Filter(){
    scope auto value = new ACString();
    nsresult __result = inner.GetFilter(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Filter(char[] aFilter){
    scope auto value = new ACString(aFilter);
    nsresult __result = inner.SetFilter(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
     * Any options defined for this URL (check options using a bitwise and)
     * 
     * @exception NS_ERROR_NULL_POINTER     NULL pointer to GET method
     * @exception NS_ERROR_OUT_OF_MEMORY    Ran out of memory
     */
  /* attribute unsigned long options; */
  PRUint32 Options(){
    PRUint32 value;
    nsresult __result = inner.GetOptions(&value);
    CheckException(__result);
    return value;
  }
  void Options(PRUint32 aOptions){
    nsresult __result = inner.SetOptions(aOptions);
    CheckException(__result);
  }

  /**
     * If this is set/true, this is an ldaps: URL, not an ldap: URL
     */
  enum { OPT_SECURE = 1U }

private:
  nsILDAPURL inner;

}

