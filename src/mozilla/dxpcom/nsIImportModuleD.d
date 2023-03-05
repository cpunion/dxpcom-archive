/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImportModule.idl
 */

module mozilla.dxpcom.nsIImportModuleD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImportModule;


public import mozilla.dxpcom.nsIImportModuleD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIImportModule */
class nsIImportModuleD : public nsISupportsD {

  static const nsIID IID = NS_IIMPORTMODULE_IID;


  alias nsIImportModule InnerType;

  this(nsIImportModule intr){
    super(intr);
    this.inner = intr;
  }

  nsIImportModule opCast() {
    return inner;
  }

  void opAssign(nsIImportModule value) {
    inner = value;
  }

  /* readonly attribute wstring name; */
  PRUnichar* Name(){
    PRUnichar* value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute wstring description; */
  PRUnichar* Description(){
    PRUnichar* value;
    nsresult __result = inner.GetDescription(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string supports; */
  char* Supports(){
    char* value;
    nsresult __result = inner.GetSupports(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean supportsUpgrade; */
  PRBool SupportsUpgrade(){
    PRBool value;
    nsresult __result = inner.GetSupportsUpgrade(&value);
    CheckException(__result);
    return value;
  }

  /* nsISupports GetImportInterface (in string importType); */
  nsISupportsD  GetImportInterface(char*importType){
    nsISupports _retval;
    nsresult __result = inner.GetImportInterface(importType, &_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

private:
  nsIImportModule inner;

}

