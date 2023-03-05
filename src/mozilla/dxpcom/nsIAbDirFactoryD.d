/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbDirFactory.idl
 */

module mozilla.dxpcom.nsIAbDirFactoryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbDirFactory;


public import mozilla.dxpcom.nsIAbDirFactoryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISimpleEnumerator;
public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.nsIAbDirectory;

public import mozilla.dxpcom.nsIAbDirectoryD;

public import mozilla.xpcom.nsIAbDirectory;

import mozilla.dxpcom.nsIAbDirectoryD;


/* starting wrapper class:    nsIAbDirFactory */
class nsIAbDirFactoryD : public nsISupportsD {

  static const nsIID IID = NS_IABDIRFACTORY_IID;


  alias nsIAbDirFactory InnerType;

  this(nsIAbDirFactory intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbDirFactory opCast() {
    return inner;
  }

  void opAssign(nsIAbDirFactory value) {
    inner = value;
  }

  /**
     * Instantiate new top level address book
     * directories given some properties. 
     * More than one directory may be
     * returned depending on the implementation
     * and integration with the associated address book
     * sources
     *
     * @param aProperties
     *        nsIAbDirectoryProperties with the properties
     * @return
     *        Enumeration of nsIAbDirectory
     *        interfaces
     */
  /* nsISimpleEnumerator createDirectory (in nsIAbDirectoryProperties aProperties); */
  nsISimpleEnumeratorD  CreateDirectory(nsIAbDirectoryPropertiesD aProperties){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.CreateDirectory(aProperties ? cast(nsIAbDirectoryProperties)aProperties : null, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

  /**
     * Delete a top level address book directory
     * 
     */
  /* void deleteDirectory (in nsIAbDirectory directory); */
  void DeleteDirectory(nsIAbDirectoryD directory){
    nsresult __result = inner.DeleteDirectory(directory ? cast(nsIAbDirectory)directory : null);
    CheckException(__result);
  }

private:
  nsIAbDirFactory inner;

}

