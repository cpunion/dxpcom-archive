/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIInterfaceInfoToIDL.idl
 */

module mozilla.dxpcom.nsIInterfaceInfoToIDLD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIInterfaceInfoToIDL;


public import mozilla.dxpcom.nsIInterfaceInfoToIDLD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIInterfaceInfoToIDL */
class nsIInterfaceInfoToIDLD : public nsISupportsD {

  static const nsIID IID = NS_IINTERFACEINFOTOIDL_IID;


  alias nsIInterfaceInfoToIDL InnerType;

  this(nsIInterfaceInfoToIDL intr){
    super(intr);
    this.inner = intr;
  }

  nsIInterfaceInfoToIDL opCast() {
    return inner;
  }

  void opAssign(nsIInterfaceInfoToIDL value) {
    inner = value;
  }

  /* string generateIDL (in nsIIDRef aIID, in PRBool withIncludes, in PRBool withForwardDeclarations); */
  char* GenerateIDL(nsIID * aIID, PRBool withIncludes, PRBool withForwardDeclarations){
    char* _retval;
    nsresult __result = inner.GenerateIDL(aIID, withIncludes, withForwardDeclarations, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void getReferencedInterfaceNames (in nsIIDRef aIID, out PRUint32 aArrayLength, [array, size_is (aArrayLength), retval] out string aNames); */
  void GetReferencedInterfaceNames(nsIID * aIID, out PRUint32 aArrayLength, out char**aNames){
    nsresult __result = inner.GetReferencedInterfaceNames(aIID, &aArrayLength, &aNames);
    CheckException(__result);
  }

private:
  nsIInterfaceInfoToIDL inner;

}

