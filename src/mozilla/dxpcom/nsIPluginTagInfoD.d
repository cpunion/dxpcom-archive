/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginTagInfo.idl
 */

module mozilla.dxpcom.nsIPluginTagInfoD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPluginTagInfo;


public import mozilla.dxpcom.nsIPluginTagInfoD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nspluginroot;
public import mozilla.dxpcom.nspluginrootD;

public import mozilla.xpcom.nsIDOMElement;

public import mozilla.dxpcom.nsIDOMElementD;


/* starting wrapper class:    nsIPluginTagInfo */
/**
 * Plugin Tag Info Interface
 * This interface provides information about the HTML tag on the page.
 * Some day this might get superseded by a DOM API.
 */
class nsIPluginTagInfoD : public nsISupportsD {

  static const nsIID IID = NS_IPLUGINTAGINFO_IID;


  alias nsIPluginTagInfo InnerType;

  this(nsIPluginTagInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIPluginTagInfo opCast() {
    return inner;
  }

  void opAssign(nsIPluginTagInfo value) {
    inner = value;
  }

  /**
   * QueryInterface on nsIPluginInstancePeer to get this.
   *
   * (Corresponds to NPP_New's argc, argn, and argv arguments.)
   * Get a ptr to the paired list of attribute names and values,
   * returns the length of the array.
   *
   * Each name or value is a null-terminated string.
   */
  /* void getAttributes (in PRUint16Ref aCount, in constCharStarConstStar aNames, in constCharStarConstStar aValues); */
  void GetAttributes(PRUint16 * aCount, char** * aNames, char** * aValues){
    nsresult __result = inner.GetAttributes(aCount, aNames, aValues);
    CheckException(__result);
  }

  /**
     * Gets the value for the named attribute.
     *
   * @param aName   - the name of the attribute to find
   * @param aResult - the resulting attribute
     * @result - NS_OK if this operation was successful, NS_ERROR_FAILURE if
     * this operation failed. result is set to NULL if the attribute is not found
     * else to the found value.
     */
  /* void getAttribute (in string aName, out constCharPtr aResult); */
  void GetAttribute(char*aName, out char * aResult){
    nsresult __result = inner.GetAttribute(aName, &aResult);
    CheckException(__result);
  }

private:
  nsIPluginTagInfo inner;

}

