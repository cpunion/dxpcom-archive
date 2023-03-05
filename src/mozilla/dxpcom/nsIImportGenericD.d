/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImportGeneric.idl
 */

module mozilla.dxpcom.nsIImportGenericD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImportGeneric;


public import mozilla.dxpcom.nsIImportGenericD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMWindowInternal;

public import mozilla.dxpcom.nsIDOMWindowInternalD;

public import mozilla.xpcom.nsISupportsPrimitives;

import mozilla.dxpcom.nsISupportsPrimitivesD;


/* starting wrapper class:    nsIImportGeneric */
class nsIImportGenericD : public nsISupportsD {

  static const nsIID IID = NS_IIMPORTGENERIC_IID;


  alias nsIImportGeneric InnerType;

  this(nsIImportGeneric intr){
    super(intr);
    this.inner = intr;
  }

  nsIImportGeneric opCast() {
    return inner;
  }

  void opAssign(nsIImportGeneric value) {
    inner = value;
  }

  /* nsISupports GetData (in string dataId); */
  nsISupportsD  GetData(char*dataId){
    nsISupports _retval;
    nsresult __result = inner.GetData(dataId, &_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

  /* void SetData (in string dataId, in nsISupports pData); */
  void SetData(char*dataId, nsISupportsD pData){
    nsresult __result = inner.SetData(dataId, pData ? cast(nsISupports)pData : null);
    CheckException(__result);
  }

  /* long GetStatus (in string statusKind); */
  PRInt32 GetStatus(char*statusKind){
    PRInt32 _retval;
    nsresult __result = inner.GetStatus(statusKind, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean WantsProgress (); */
  PRBool WantsProgress(){
    PRBool _retval;
    nsresult __result = inner.WantsProgress(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean BeginImport (in nsISupportsString successLog, in nsISupportsString errorLog, in boolean isAddrLocHome); */
  PRBool BeginImport(nsISupportsStringD successLog, nsISupportsStringD errorLog, PRBool isAddrLocHome){
    PRBool _retval;
    nsresult __result = inner.BeginImport(successLog ? cast(nsISupportsString)successLog : null, errorLog ? cast(nsISupportsString)errorLog : null, isAddrLocHome, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean ContinueImport (); */
  PRBool ContinueImport(){
    PRBool _retval;
    nsresult __result = inner.ContinueImport(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* long GetProgress (); */
  PRInt32 GetProgress(){
    PRInt32 _retval;
    nsresult __result = inner.GetProgress(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void CancelImport (); */
  void CancelImport(){
    nsresult __result = inner.CancelImport();
    CheckException(__result);
  }

private:
  nsIImportGeneric inner;

}

