/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAbLDIFService.idl
 */

module mozilla.dxpcom.nsIAbLDIFServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAbLDIFService;


public import mozilla.dxpcom.nsIAbLDIFServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;

public import mozilla.xpcom.nsIAddrDatabase;

public import mozilla.dxpcom.nsIAddrDatabaseD;


/* starting wrapper class:    nsIAbLDIFService */
class nsIAbLDIFServiceD : public nsISupportsD {

  static const nsIID IID = NS_IABLDIFSERVICE_IID;


  alias nsIAbLDIFService InnerType;

  this(nsIAbLDIFService intr){
    super(intr);
    this.inner = intr;
  }

  nsIAbLDIFService opCast() {
    return inner;
  }

  void opAssign(nsIAbLDIFService value) {
    inner = value;
  }

  /**
   * Determine if a file is likely to be an LDIF file based on field
   * names that commonly appear in LDIF files.
   *
   * @param       aSrc   The file to examine
   *    
   * @return      PR_TRUE if the file appears to be of LDIF type,
   *              PR_FALSE otherwise
   */
  /* boolean isLDIFFile (in nsIFileSpec aSrc); */
  PRBool IsLDIFFile(nsIFileSpecD aSrc){
    PRBool _retval;
    nsresult __result = inner.IsLDIFFile(aSrc ? cast(nsIFileSpec)aSrc : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Imports a file into the specified address book.
   *
   * @param       aDb             The address book to import addresses into.
   *
   * @param       aSrc            The file to import addresses from.
   *
   * @param       aStoreLocAsHome Stores the address as a home rather than work
   *                              address.
   *
   * @param       aProgress       May be null, but if a pointer is supplied,
   *                              then it will be updated regularly with the
   *                              current position of reading from the file.
   *
   */
  /* void importLDIFFile (in nsIAddrDatabase aDb, in nsIFileSpec aSrc, in boolean aStoreLocAsHome, inout unsigned long aProgress); */
  void ImportLDIFFile(nsIAddrDatabaseD aDb, nsIFileSpecD aSrc, PRBool aStoreLocAsHome, out PRUint32 aProgress){
    nsresult __result = inner.ImportLDIFFile(aDb ? cast(nsIAddrDatabase)aDb : null, aSrc ? cast(nsIFileSpec)aSrc : null, aStoreLocAsHome, &aProgress);
    CheckException(__result);
  }

private:
  nsIAbLDIFService inner;

}

