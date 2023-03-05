/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPURL.idl
 */

module mozilla.xpcom.nsILDAPURL;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIURI;


/* starting interface:    nsILDAPURL */
const char[] NS_ILDAPURL_IID_STR = "7310562d-1567-43c7-a123-633c1ba3663e";

const nsIID NS_ILDAPURL_IID= 
  {0x7310562d, 0x1567, 0x43c7, 
    [ 0xa1, 0x23, 0x63, 0x3c, 0x1b, 0xa3, 0x66, 0x3e ]};

/**
 * Strings in methods inherited from nsIURI, which are using XPIDL
 * |string| types, are expected to be UTF8 encoded. All such strings
 * in this interface, except attribute types (e.g. "cn"), should in fact
 * be UTF8. It's important to remember that attributes can not be UTF8,
 * they can only be of a limited subset of ASCII (see RFC 2251).
 */
extern(Windows)
interface nsILDAPURL : nsIURI {
  static const char[] IID_STR = NS_ILDAPURL_IID_STR;
  static const nsIID IID = NS_ILDAPURL_IID;

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
  nsresult GetDn(nsACString * aDn);
  nsresult SetDn(nsACString * aDn);

  /**
     * Return all LDAP attributes currently set. The empty array indicates
     * that all attributes are requested.
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer to GET method
     * @exception NS_ERROR_OUT_OF_MEMORY	Ran out of memory
     */
  /* void getAttributes (out unsigned long aCount, [array, size_is (aCount), retval] out string aAttrs); */
  nsresult GetAttributes(PRUint32 *aCount, char ***aAttrs);

  /**
     * Set the array of attributes, dropping whatever was there before.
     *
     * @param aAttrs                        An array of LDAP attributes
     * @exception NS_ERROR_OUT_OF_MEMORY	Ran out of memory
     */
  /* void setAttributes (in unsigned long aCount, [array, size_is (aCount)] in string aAttrs); */
  nsresult SetAttributes(PRUint32 aCount, char **aAttrs);

  /**
     * Add one attribute to the array of attributes to request. If the
     * attribute is already in our array, this becomes a noop.
     *
     * @param aAttribute          An LDAP attribute (e.g. "cn")
     */
  /* void addAttribute (in string aAttribute); */
  nsresult AddAttribute(char *aAttribute);

  /**
     * Remove one attribute from the array of attributes to request. If
     * the attribute didn't exist in the array, this becomes a noop.
     *
     * @param aAttribute                    An LDAP attribute (e.g. "cn")
     * @exception NS_ERROR_OUT_OF_MEMORY	Ran out of memory
     */
  /* void removeAttribute (in string aAttribute); */
  nsresult RemoveAttribute(char *aAttribute);

  /**
     * Test if an attribute is in our list of attributes already
     *
     * @param aAttribute                    An LDAP attribute (e.g. "cn")
     * @return boolean                      Truth value
     * @exception NS_ERROR_NULL_POINTER     NULL pointer to GET method
     */
  /* boolean hasAttribute (in string aAttribute); */
  nsresult HasAttribute(char *aAttribute, PRBool *_retval);

  /**
     * The scope of the search.  defaults to SCOPE_BASE. 
     *
     * @exception NS_ERROR_NULL_POINTER     NULL pointer to GET method
     * @exception NS_ERROR_MALFORMED_URI	Illegal base to SET method
     */
  /* attribute long scope; */
  nsresult GetScope(PRInt32 *aScope);
  nsresult SetScope(PRInt32 aScope);

  /**
     * Search just the base object
     */
  enum { SCOPE_BASE = 0 };

  /** 
     * Search only the children of the base object
     */
  enum { SCOPE_ONELEVEL = 1 };

  /**
     * Search the entire subtree under and including the base object
     */
  enum { SCOPE_SUBTREE = 2 };

  /**
     * The search filter. "(objectClass=*)" is the default.
     */
  /* attribute AUTF8String filter; */
  nsresult GetFilter(nsACString * aFilter);
  nsresult SetFilter(nsACString * aFilter);

  /**
     * Any options defined for this URL (check options using a bitwise and)
     * 
     * @exception NS_ERROR_NULL_POINTER     NULL pointer to GET method
     * @exception NS_ERROR_OUT_OF_MEMORY    Ran out of memory
     */
  /* attribute unsigned long options; */
  nsresult GetOptions(PRUint32 *aOptions);
  nsresult SetOptions(PRUint32 aOptions);

  /**
     * If this is set/true, this is an ldaps: URL, not an ldap: URL
     */
  enum { OPT_SECURE = 1U };

}

