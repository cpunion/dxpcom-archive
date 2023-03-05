/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImportAddressBooks.idl
 */

module mozilla.dxpcom.nsIImportAddressBooksD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImportAddressBooks;


public import mozilla.dxpcom.nsIImportAddressBooksD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;

public import mozilla.xpcom.nsISupportsArray;

public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsIImportABDescriptor;

public import mozilla.dxpcom.nsIImportABDescriptorD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;

public import mozilla.xpcom.nsIAddrDatabase;

public import mozilla.dxpcom.nsIAddrDatabaseD;

public import mozilla.xpcom.nsIImportFieldMap;

public import mozilla.dxpcom.nsIImportFieldMapD;


/* starting wrapper class:    nsIImportAddressBooks */
class nsIImportAddressBooksD : public nsISupportsD {

  static const nsIID IID = NS_IIMPORTADDRESSBOOKS_IID;


  alias nsIImportAddressBooks InnerType;

  this(nsIImportAddressBooks intr){
    super(intr);
    this.inner = intr;
  }

  nsIImportAddressBooks opCast() {
    return inner;
  }

  void opAssign(nsIImportAddressBooks value) {
    inner = value;
  }

  /* PRBool GetSupportsMultiple (); */
  PRBool GetSupportsMultiple(){
    PRBool _retval;
    nsresult __result = inner.GetSupportsMultiple(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRBool GetAutoFind (out wstring description); */
  PRBool GetAutoFind(out PRUnichar*description){
    PRBool _retval;
    nsresult __result = inner.GetAutoFind(&description, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRBool GetNeedsFieldMap (in nsIFileSpec location); */
  PRBool GetNeedsFieldMap(nsIFileSpecD location){
    PRBool _retval;
    nsresult __result = inner.GetNeedsFieldMap(location ? cast(nsIFileSpec)location : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void GetDefaultLocation (out nsIFileSpec location, out boolean found, out boolean userVerify); */
  void GetDefaultLocation(out nsIFileSpecD location, out PRBool found, out PRBool userVerify){
    nsIFileSpec _location;
    nsresult __result = inner.GetDefaultLocation(&_location, &found, &userVerify);
    CheckException(__result);
    location = _location ? new nsIFileSpecD(_location) : null;
  }

  /* nsISupportsArray FindAddressBooks (in nsIFileSpec location); */
  nsISupportsArrayD  FindAddressBooks(nsIFileSpecD location){
    nsISupportsArray _retval;
    nsresult __result = inner.FindAddressBooks(location ? cast(nsIFileSpec)location : null, &_retval);
    CheckException(__result);
    return new nsISupportsArrayD(_retval);
  }

  /* void InitFieldMap (in nsIFileSpec location, in nsIImportFieldMap fieldMap); */
  void InitFieldMap(nsIFileSpecD location, nsIImportFieldMapD fieldMap){
    nsresult __result = inner.InitFieldMap(location ? cast(nsIFileSpec)location : null, fieldMap ? cast(nsIImportFieldMap)fieldMap : null);
    CheckException(__result);
  }

  /* void ImportAddressBook (in nsIImportABDescriptor source, in nsIAddrDatabase destination, in nsIImportFieldMap fieldMap, in boolean isAddrLocHome, out wstring errorLog, out wstring successLog, out boolean fatalError); */
  void ImportAddressBook(nsIImportABDescriptorD source, nsIAddrDatabaseD destination, nsIImportFieldMapD fieldMap, PRBool isAddrLocHome, out PRUnichar*errorLog, out PRUnichar*successLog, out PRBool fatalError){
    nsresult __result = inner.ImportAddressBook(source ? cast(nsIImportABDescriptor)source : null, destination ? cast(nsIAddrDatabase)destination : null, fieldMap ? cast(nsIImportFieldMap)fieldMap : null, isAddrLocHome, &errorLog, &successLog, &fatalError);
    CheckException(__result);
  }

  /* unsigned long GetImportProgress (); */
  PRUint32 GetImportProgress(){
    PRUint32 _retval;
    nsresult __result = inner.GetImportProgress(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void SetSampleLocation (in nsIFileSpec location); */
  void SetSampleLocation(nsIFileSpecD location){
    nsresult __result = inner.SetSampleLocation(location ? cast(nsIFileSpec)location : null);
    CheckException(__result);
  }

  /* wstring GetSampleData (in long recordNumber, out boolean recordExists); */
  PRUnichar* GetSampleData(PRInt32 recordNumber, out PRBool recordExists){
    PRUnichar* _retval;
    nsresult __result = inner.GetSampleData(recordNumber, &recordExists, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIImportAddressBooks inner;

}

