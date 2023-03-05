/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbLDAPAttributeMap.idl
 */

module mozilla.xpcom.nsIAbLDAPAttributeMap;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */

public import mozilla.xpcom.nsILDAPMessage; /* forward declaration */

public import mozilla.xpcom.nsIAbCard; /* forward declaration */


/* starting interface:    nsIAbLDAPAttributeMap */
const char[] NS_IABLDAPATTRIBUTEMAP_IID_STR = "2ba46eae-9141-4d79-af90-3c7ecf2dc357";

const nsIID NS_IABLDAPATTRIBUTEMAP_IID= 
  {0x2ba46eae, 0x9141, 0x4d79, 
    [ 0xaf, 0x90, 0x3c, 0x7e, 0xcf, 0x2d, 0xc3, 0x57 ]};

/**
 * A mapping between addressbook properties and ldap attributes.
 *
 * Each addressbook property can map to one or more attributes.  If
 * there is no entry in preferences for a field, the getters generally
 * return null; empty strings are passed through as usual. The intent is
 * that properties with a non-zero number of attributes can be overridden for
 * a specific server by supplying a zero-length string.  For this to work,
 * most callers are likely to want to check for both success and a 
 * non-empty string. 
 *
 * Note that the one exception to this pattern is getAttributes, which
 * throws NS_ERROR_FAILURE for non-existent property entries, since
 * XPConnect doesn't like returning null arrays.
 *
 * Note that each LDAP attribute can map to at most one addressbook
 * property.  The checkState method is a useful tool in enforcing
 * this.  Failure to enforce it may make it impossible to guarantee
 * that getProperty will do something consistent and reasonable.
 *
 * Maybe someday once we support ldap autoconfig stuff (ie
 * draft-joslin-config-schema-11.txt), we can simplify this and other
 * code and only allow a property to map to a single attribute.
 */
extern(Windows)
interface nsIAbLDAPAttributeMap : nsISupports {
  static const char[] IID_STR = NS_IABLDAPATTRIBUTEMAP_IID_STR;
  static const nsIID IID = NS_IABLDAPATTRIBUTEMAP_IID;

  /**
   * Get all the LDAP attributes associated with a given property
   * name, in order of precedence (highest to lowest).
   *
   * @param       aProperty   the address book property to return attrs for   
   *    
   * @return      a comma-separated list of attributes, null if no entry is
   *              present
   */
  /* ACString getAttributeList (in ACString aProperty); */
  nsresult GetAttributeList(nsACString * aProperty, nsACString * _retval);

  /**
   * Get all the LDAP attributes associated with a given property name, in 
   * order of precedence (highest to lowest).
   * 
   * @param       aProperty   the address book property to return attrs for   
   *
   * @return      an array of attributes
   *
   * @exception   NS_ERROR_FAILURE if there is no entry for this property
   */
  /* void getAttributes (in ACString aProperty, out unsigned long aCount, [array, size_is (aCount), retval] out string aAttrs); */
  nsresult GetAttributes(nsACString * aProperty, PRUint32 *aCount, char ***aAttrs);

  /**
   * Get the first (canonical) LDAP attribute associated with a given property
   * name
   *
   * @param       aProperty   the address book property to return attrs for   
   * 
   * @return      the first attribute associated with a given property, 
   *              null if there is no entry for this property
   */
  /* ACString getFirstAttribute (in ACString aProperty); */
  nsresult GetFirstAttribute(nsACString * aProperty, nsACString * _retval);

  /**
   * Set an existing mapping to the comma-separated list of attributes.
   * 
   * @param aProperty               the mozilla addressbook property name
   *
   * @param aAttributeList          a comma-separated list of attributes in
   *                                order of precedence from high to low
   *
   * @param aAllowInconsistencies   allow changes that would result in
   *                                a map with an LDAP attribute associated
   *                                with more than one property.  Useful for
   *                                doing a bunch of sets at once, and
   *                                calling checkState at the end.
   *
   * @exception NS_ERROR_FAILURE    making this change would result in a map
   *                                with an LDAP attribute pointing to more
   *                                than one property
   */
  /* void setAttributeList (in ACString aProperty, in ACString aAttributeList, in boolean allowInconsistencies); */
  nsresult SetAttributeList(nsACString * aProperty, nsACString * aAttributeList, PRBool allowInconsistencies);

  /**
   * Find the Mozilla addressbook property name that this attribute should
   * map to. 
   * 
   * @return the addressbook property name, null if it's not used in the map
   */
  /* ACString getProperty (in ACString aAttribute); */
  nsresult GetProperty(nsACString * aAttribute, nsACString * _retval);

  /**
   * Get all attributes that may be used in an addressbook card via this
   * property map (used for passing to to an LDAP search when you want
   * everything that could be in a card returned).
   *
   * @return                      a comma-separated list of attribute names
   *
   * @exception NS_ERROR_FAILURE  there are no attributes in this property map
   */
  /* ACString getAllCardAttributes (); */
  nsresult GetAllCardAttributes(nsACString * _retval);

  /**
   * Check that no LDAP attributes are listed in more than one property.
   *
   * @exception NS_ERROR_FAILURE    one or more LDAP attributes are listed
   *                                multiple times.  The object is now in an
   *                                inconsistent state, and should be either
   *                                manually repaired or discarded.
   */
  /* void checkState (); */
  nsresult CheckState();

  /**
   * Set any attributes specified in the given prefbranch on this object.
   *
   * @param aPrefBranchName         the pref branch containing all the
   *                                property names
   * 
   * @exception NS_ERROR_FAILURE    one or more LDAP attributes are listed
   *                                multiple times.  The object is now in an
   *                                inconsistent state, and should be either
   *                                manually repaired or discarded.
   */
  /* void setFromPrefs (in ACString aPrefBranchName); */
  nsresult SetFromPrefs(nsACString * aPrefBranchName);

  /**
   * Set the properties on an addressbook card from the given LDAP message
   * using the map in this object.
   *
   * @param       aCard is the card object whose values are to be set
   * @param       aMessage is the LDAP message to get the values from
   *
   * @exception   NS_ERROR_FAILURE is thrown if no addressbook properties
   *              are found in the message
   */
  /* void setCardPropertiesFromLDAPMessage (in nsILDAPMessage aMessage, in nsIAbCard aCard); */
  nsresult SetCardPropertiesFromLDAPMessage(nsILDAPMessage aMessage, nsIAbCard aCard);

}


/* starting interface:    nsIAbLDAPAttributeMapService */
const char[] NS_IABLDAPATTRIBUTEMAPSERVICE_IID_STR = "12e2d589-3c2a-48e4-8c82-b1e6464a0dfd";

const nsIID NS_IABLDAPATTRIBUTEMAPSERVICE_IID= 
  {0x12e2d589, 0x3c2a, 0x48e4, 
    [ 0x8c, 0x82, 0xb1, 0xe6, 0x46, 0x4a, 0x0d, 0xfd ]};

/**
 * The nsIAbLDAPAttributeMapService is used to build and hold a cache
 * of maps.  
 */
extern(Windows)
interface nsIAbLDAPAttributeMapService : nsISupports {
  static const char[] IID_STR = NS_IABLDAPATTRIBUTEMAPSERVICE_IID_STR;
  static const nsIID IID = NS_IABLDAPATTRIBUTEMAPSERVICE_IID;

  /**
   * Accessor to construct or return a cached copy of the attribute
   * map for a given preference branch.  The map is constructed by
   * first taking the default map (as specified by the
   * "ldap_2.servers.default.attrmap" prefbranch), and then having any
   * preferences specified by aPrefBranchName override the defaults.
   * LDIF import and export code should use the default map.
   *
   * @return      the requested map
   *
   * @exception   NS_ERROR_FAILURE    error constructing the map;
   *                                  possibly because of a failure
   *                                  from checkState()
   */
  /* nsIAbLDAPAttributeMap getMapForPrefBranch (in ACString aPrefBranchName); */
  nsresult GetMapForPrefBranch(nsACString * aPrefBranchName, nsIAbLDAPAttributeMap *_retval);

}

