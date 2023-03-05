/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImportService.idl
 */

module mozilla.dxpcom.nsIImportServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImportService;


public import mozilla.dxpcom.nsIImportServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIImportModule;

public import mozilla.dxpcom.nsIImportModuleD;

public import mozilla.xpcom.nsIImportMailboxDescriptor;

public import mozilla.dxpcom.nsIImportMailboxDescriptorD;

public import mozilla.xpcom.nsIImportABDescriptor;

public import mozilla.dxpcom.nsIImportABDescriptorD;

public import mozilla.xpcom.nsIImportGeneric;

public import mozilla.dxpcom.nsIImportGenericD;

public import mozilla.xpcom.nsIImportFieldMap;

public import mozilla.dxpcom.nsIImportFieldMapD;


/* starting wrapper class:    nsIImportService */
class nsIImportServiceD : public nsISupportsD {

  static const nsIID IID = NS_IIMPORTSERVICE_IID;


  alias nsIImportService InnerType;

  this(nsIImportService intr){
    super(intr);
    this.inner = intr;
  }

  nsIImportService opCast() {
    return inner;
  }

  void opAssign(nsIImportService value) {
    inner = value;
  }

  /* void DiscoverModules (); */
  void DiscoverModules(){
    nsresult __result = inner.DiscoverModules();
    CheckException(__result);
  }

  /* long GetModuleCount (in string filter); */
  PRInt32 GetModuleCount(char*filter){
    PRInt32 _retval;
    nsresult __result = inner.GetModuleCount(filter, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void GetModuleInfo (in string filter, in long index, out wstring name, out wstring description); */
  void GetModuleInfo(char*filter, PRInt32 index, out PRUnichar*name, out PRUnichar*description){
    nsresult __result = inner.GetModuleInfo(filter, index, &name, &description);
    CheckException(__result);
  }

  /* wstring GetModuleName (in string filter, in long index); */
  PRUnichar* GetModuleName(char*filter, PRInt32 index){
    PRUnichar* _retval;
    nsresult __result = inner.GetModuleName(filter, index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* wstring GetModuleDescription (in string filter, in long index); */
  PRUnichar* GetModuleDescription(char*filter, PRInt32 index){
    PRUnichar* _retval;
    nsresult __result = inner.GetModuleDescription(filter, index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIImportModule GetModule (in string filter, in long index); */
  nsIImportModuleD  GetModule(char*filter, PRInt32 index){
    nsIImportModule _retval;
    nsresult __result = inner.GetModule(filter, index, &_retval);
    CheckException(__result);
    return new nsIImportModuleD(_retval);
  }

  /* nsIImportModule GetModuleWithCID (in nsCIDRef cid); */
  nsIImportModuleD  GetModuleWithCID(nsCID * cid){
    nsIImportModule _retval;
    nsresult __result = inner.GetModuleWithCID(cid, &_retval);
    CheckException(__result);
    return new nsIImportModuleD(_retval);
  }

  /* nsIImportFieldMap CreateNewFieldMap (); */
  nsIImportFieldMapD  CreateNewFieldMap(){
    nsIImportFieldMap _retval;
    nsresult __result = inner.CreateNewFieldMap(&_retval);
    CheckException(__result);
    return new nsIImportFieldMapD(_retval);
  }

  /* nsIImportMailboxDescriptor CreateNewMailboxDescriptor (); */
  nsIImportMailboxDescriptorD  CreateNewMailboxDescriptor(){
    nsIImportMailboxDescriptor _retval;
    nsresult __result = inner.CreateNewMailboxDescriptor(&_retval);
    CheckException(__result);
    return new nsIImportMailboxDescriptorD(_retval);
  }

  /* nsIImportABDescriptor CreateNewABDescriptor (); */
  nsIImportABDescriptorD  CreateNewABDescriptor(){
    nsIImportABDescriptor _retval;
    nsresult __result = inner.CreateNewABDescriptor(&_retval);
    CheckException(__result);
    return new nsIImportABDescriptorD(_retval);
  }

  /* nsIImportGeneric CreateNewGenericMail (); */
  nsIImportGenericD  CreateNewGenericMail(){
    nsIImportGeneric _retval;
    nsresult __result = inner.CreateNewGenericMail(&_retval);
    CheckException(__result);
    return new nsIImportGenericD(_retval);
  }

  /* nsIImportGeneric CreateNewGenericAddressBooks (); */
  nsIImportGenericD  CreateNewGenericAddressBooks(){
    nsIImportGeneric _retval;
    nsresult __result = inner.CreateNewGenericAddressBooks(&_retval);
    CheckException(__result);
    return new nsIImportGenericD(_retval);
  }

  /* [noscript] void SystemStringToUnicode (in string sysStr, in nsStringRef uniStr); */
  void SystemStringToUnicode(char*sysStr, nsString * uniStr){
    nsresult __result = inner.SystemStringToUnicode(sysStr, uniStr);
    CheckException(__result);
  }

  /* [noscript] void SystemStringFromUnicode (in wstring uniStr, in nsCStringRef sysStr); */
  void SystemStringFromUnicode(PRUnichar*uniStr, nsCString * sysStr){
    nsresult __result = inner.SystemStringFromUnicode(uniStr, sysStr);
    CheckException(__result);
  }

private:
  nsIImportService inner;

}

