/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbDirFactoryService.idl
 */

module mozilla.dxpcom.nsIAbDirFactoryServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbDirFactoryService;


public import mozilla.dxpcom.nsIAbDirFactoryServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIAbDirFactory;

public import mozilla.dxpcom.nsIAbDirFactoryD;


/* starting wrapper class:    nsIAbDirFactoryService */
class nsIAbDirFactoryServiceD : public nsISupportsD {

  static const nsIID IID = NS_IABDIRFACTORYSERVICE_IID;


  alias nsIAbDirFactoryService InnerType;

  this(nsIAbDirFactoryService intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbDirFactoryService opCast() {
    return inner;
  }

  void opAssign(nsIAbDirFactoryService value) {
    inner = value;
  }

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
  nsIAbDirFactoryD  GetDirFactory(char*uri){
    nsIAbDirFactory _retval;
    nsresult __result = inner.GetDirFactory(uri, &_retval);
    CheckException(__result);
    return new nsIAbDirFactoryD(_retval);
  }

private:
  nsIAbDirFactoryService inner;

}

