/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginTagInfo.idl
 */

module mozilla.xpcom.nsIPluginTagInfo;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nspluginroot;

public import mozilla.xpcom.nsIDOMElement; /* forward declaration */


/* starting interface:    nsIPluginTagInfo */
const char[] NS_IPLUGINTAGINFO_IID_STR = "5f1ec1d0-019b-11d2-815b-006008119d7a";

const nsIID NS_IPLUGINTAGINFO_IID= 
  {0x5f1ec1d0, 0x019b, 0x11d2, 
    [ 0x81, 0x5b, 0x00, 0x60, 0x08, 0x11, 0x9d, 0x7a ]};

/**
 * Plugin Tag Info Interface
 * This interface provides information about the HTML tag on the page.
 * Some day this might get superseded by a DOM API.
 */
extern(Windows)
interface nsIPluginTagInfo : nsISupports {
  static const char[] IID_STR = NS_IPLUGINTAGINFO_IID_STR;
  static const nsIID IID = NS_IPLUGINTAGINFO_IID;

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
  nsresult GetAttributes(PRUint16 * aCount, char** * aNames, char** * aValues);

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
  nsresult GetAttribute(char *aName, char * *aResult);

}

