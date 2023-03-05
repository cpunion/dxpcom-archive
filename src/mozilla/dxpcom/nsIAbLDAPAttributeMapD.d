/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbLDAPAttributeMap.idl
 */

module mozilla.dxpcom.nsIAbLDAPAttributeMapD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbLDAPAttributeMap;


public import mozilla.dxpcom.nsIAbLDAPAttributeMapD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.nsILDAPMessage;

public import mozilla.dxpcom.nsILDAPMessageD;

public import mozilla.xpcom.nsIAbCard;

public import mozilla.dxpcom.nsIAbCardD;


/* starting wrapper class:    nsIAbLDAPAttributeMap */
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
class nsIAbLDAPAttributeMapD : public nsISupportsD {

  static const nsIID IID = NS_IABLDAPATTRIBUTEMAP_IID;


  alias nsIAbLDAPAttributeMap InnerType;

  this(nsIAbLDAPAttributeMap intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbLDAPAttributeMap opCast() {
    return inner;
  }

  void opAssign(nsIAbLDAPAttributeMap value) {
    inner = value;
  }

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
  char[] GetAttributeList(char[] aProperty){
    scope auto _aProperty = new ACString(aProperty);
    scope auto _retval = new ACString;
    nsresult __result = inner.GetAttributeList(cast(nsACString*)_aProperty, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

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
  void GetAttributes(char[] aProperty, out PRUint32 aCount, out char**aAttrs){
    scope auto _aProperty = new ACString(aProperty);
    nsresult __result = inner.GetAttributes(cast(nsACString*)_aProperty, &aCount, &aAttrs);
    CheckException(__result);
  }

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
  char[] GetFirstAttribute(char[] aProperty){
    scope auto _aProperty = new ACString(aProperty);
    scope auto _retval = new ACString;
    nsresult __result = inner.GetFirstAttribute(cast(nsACString*)_aProperty, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

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
  void SetAttributeList(char[] aProperty, char[] aAttributeList, PRBool allowInconsistencies){
    scope auto _aProperty = new ACString(aProperty);
    scope auto _aAttributeList = new ACString(aAttributeList);
    nsresult __result = inner.SetAttributeList(cast(nsACString*)_aProperty, cast(nsACString*)_aAttributeList, allowInconsistencies);
    CheckException(__result);
  }

  /**
   * Find the Mozilla addressbook property name that this attribute should
   * map to. 
   * 
   * @return the addressbook property name, null if it's not used in the map
   */
  /* ACString getProperty (in ACString aAttribute); */
  char[] GetProperty(char[] aAttribute){
    scope auto _aAttribute = new ACString(aAttribute);
    scope auto _retval = new ACString;
    nsresult __result = inner.GetProperty(cast(nsACString*)_aAttribute, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

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
  char[] GetAllCardAttributes(){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetAllCardAttributes(cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Check that no LDAP attributes are listed in more than one property.
   *
   * @exception NS_ERROR_FAILURE    one or more LDAP attributes are listed
   *                                multiple times.  The object is now in an
   *                                inconsistent state, and should be either
   *                                manually repaired or discarded.
   */
  /* void checkState (); */
  void CheckState(){
    nsresult __result = inner.CheckState();
    CheckException(__result);
  }

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
  void SetFromPrefs(char[] aPrefBranchName){
    scope auto _aPrefBranchName = new ACString(aPrefBranchName);
    nsresult __result = inner.SetFromPrefs(cast(nsACString*)_aPrefBranchName);
    CheckException(__result);
  }

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
  void SetCardPropertiesFromLDAPMessage(nsILDAPMessageD aMessage, nsIAbCardD aCard){
    nsresult __result = inner.SetCardPropertiesFromLDAPMessage(aMessage ? cast(nsILDAPMessage)aMessage : null, aCard ? cast(nsIAbCard)aCard : null);
    CheckException(__result);
  }

private:
  nsIAbLDAPAttributeMap inner;

}


/* starting wrapper class:    nsIAbLDAPAttributeMapService */
/**
 * The nsIAbLDAPAttributeMapService is used to build and hold a cache
 * of maps.  
 */
class nsIAbLDAPAttributeMapServiceD : public nsISupportsD {

  static const nsIID IID = NS_IABLDAPATTRIBUTEMAPSERVICE_IID;


  alias nsIAbLDAPAttributeMapService InnerType;

  this(nsIAbLDAPAttributeMapService intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbLDAPAttributeMapService opCast() {
    return inner;
  }

  void opAssign(nsIAbLDAPAttributeMapService value) {
    inner = value;
  }

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
  nsIAbLDAPAttributeMapD  GetMapForPrefBranch(char[] aPrefBranchName){
    scope auto _aPrefBranchName = new ACString(aPrefBranchName);
    nsIAbLDAPAttributeMap _retval;
    nsresult __result = inner.GetMapForPrefBranch(cast(nsACString*)_aPrefBranchName, &_retval);
    CheckException(__result);
    return new nsIAbLDAPAttributeMapD(_retval);
  }

private:
  nsIAbLDAPAttributeMapService inner;

}

