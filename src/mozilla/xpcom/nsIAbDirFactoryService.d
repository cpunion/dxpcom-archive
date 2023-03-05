/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbDirFactoryService.idl
 */

module mozilla.xpcom.nsIAbDirFactoryService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIAbDirFactory; /* forward declaration */


/* starting interface:    nsIAbDirFactoryService */
const char[] NS_IABDIRFACTORYSERVICE_IID_STR = "be2075a8-1dd1-11b2-99ba-bcb9db1d77cc";

const nsIID NS_IABDIRFACTORYSERVICE_IID= 
  {0xbe2075a8, 0x1dd1, 0x11b2, 
    [ 0x99, 0xba, 0xbc, 0xb9, 0xdb, 0x1d, 0x77, 0xcc ]};

extern(Windows)
interface nsIAbDirFactoryService : nsISupports {
  static const char[] IID_STR = NS_IABDIRFACTORYSERVICE_IID_STR;
  static const nsIID IID = NS_IABDIRFACTORYSERVICE_IID;

  /**
     * Obtain a directory factory component
     * given a uri representing an address book
     *
     * The scheme is extracted from the uri and
     * contract id is generated of the form:
     * @mozilla.org/addressbook/directory-factory;1?type=<scheme>
     * 
     * This id is used to instantiate a registered
     * component which implemented the nsIAbDirFactory
     * interface
     *
     * @param uri
     *        The uri which contains the scheme that
     *        defines what directory factory instance
     *        is returned
     */
  /* nsIAbDirFactory getDirFactory (in string uri); */
  nsresult GetDirFactory(char *uri, nsIAbDirFactory *_retval);

}

