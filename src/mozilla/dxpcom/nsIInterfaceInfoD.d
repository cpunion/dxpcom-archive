/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIInterfaceInfo.idl
 */

module mozilla.dxpcom.nsIInterfaceInfoD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIInterfaceInfo;


public import mozilla.dxpcom.nsIInterfaceInfoD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIInterfaceInfo */
class nsIInterfaceInfoD : public nsISupportsD {

  static const nsIID IID = NS_IINTERFACEINFO_IID;


  alias nsIInterfaceInfo InnerType;

  this(nsIInterfaceInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIInterfaceInfo opCast() {
    return inner;
  }

  void opAssign(nsIInterfaceInfo value) {
    inner = value;
  }

  /* readonly attribute string name; */
  char* Name(){
    char* value;
    nsresult __result = inner.GetName(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIIDPtr InterfaceIID; */
  nsIID * InterfaceIID(){
    nsIID * value;
    nsresult __result = inner.GetInterfaceIID(&value);
    CheckException(__result);
    return value;
  }

  /* PRBool isScriptable (); */
  PRBool IsScriptable(){
    PRBool _retval;
    nsresult __result = inner.IsScriptable(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* readonly attribute nsIInterfaceInfo parent; */
  nsIInterfaceInfoD  Parent(){
    nsIInterfaceInfo value;
    nsresult __result = inner.GetParent(&value);
    CheckException(__result);
    return new nsIInterfaceInfoD(value);
  }

  /**
    * These include counts for parent (and all ancestors).
    */
  /* readonly attribute PRUint16 methodCount; */
  PRUint16 MethodCount(){
    PRUint16 value;
    nsresult __result = inner.GetMethodCount(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRUint16 constantCount; */
  PRUint16 ConstantCount(){
    PRUint16 value;
    nsresult __result = inner.GetConstantCount(&value);
    CheckException(__result);
    return value;
  }

  /**
    * These include methods and constants for parent (and all ancestors).
    * 
    * These do *not* make copies ***explicit bending of XPCOM rules***.
    */
  /* void getMethodInfo (in PRUint16 index, [shared, retval] out nsXPTMethodInfoPtr info); */
  void GetMethodInfo(PRUint16 index, out nsXPTMethodInfo * info){
    nsresult __result = inner.GetMethodInfo(index, &info);
    CheckException(__result);
  }

  /* void getMethodInfoForName (in string methodName, out PRUint16 index, [shared, retval] out nsXPTMethodInfoPtr info); */
  void GetMethodInfoForName(char*methodName, out PRUint16 index, out nsXPTMethodInfo * info){
    nsresult __result = inner.GetMethodInfoForName(methodName, &index, &info);
    CheckException(__result);
  }

  /* void getConstant (in PRUint16 index, [shared, retval] out nsXPTConstantPtr constant); */
  void GetConstant(PRUint16 index, out nsXPTConstant * constant){
    nsresult __result = inner.GetConstant(index, &constant);
    CheckException(__result);
  }

  /**
    * Get the interface information or iid associated with a param of some
    * method in this interface.
    */
  /* nsIInterfaceInfo getInfoForParam (in PRUint16 methodIndex, [const] in nsXPTParamInfoPtr param); */
  nsIInterfaceInfoD  GetInfoForParam(PRUint16 methodIndex, nsXPTParamInfo * param){
    nsIInterfaceInfo _retval;
    nsresult __result = inner.GetInfoForParam(methodIndex, param, &_retval);
    CheckException(__result);
    return new nsIInterfaceInfoD(_retval);
  }

  /* nsIIDPtr getIIDForParam (in PRUint16 methodIndex, [const] in nsXPTParamInfoPtr param); */
  nsIID * GetIIDForParam(PRUint16 methodIndex, nsXPTParamInfo * param){
nsIID * _retval;
    nsresult __result = inner.GetIIDForParam(methodIndex, param, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
    * These do *not* make copies ***explicit bending of XPCOM rules***.
    */
  /* nsXPTType getTypeForParam (in PRUint16 methodIndex, [const] in nsXPTParamInfoPtr param, in PRUint16 dimension); */
  nsXPTType GetTypeForParam(PRUint16 methodIndex, nsXPTParamInfo * param, PRUint16 dimension){
nsXPTType _retval;
    nsresult __result = inner.GetTypeForParam(methodIndex, param, dimension, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint8 getSizeIsArgNumberForParam (in PRUint16 methodIndex, [const] in nsXPTParamInfoPtr param, in PRUint16 dimension); */
  PRUint8 GetSizeIsArgNumberForParam(PRUint16 methodIndex, nsXPTParamInfo * param, PRUint16 dimension){
    PRUint8 _retval;
    nsresult __result = inner.GetSizeIsArgNumberForParam(methodIndex, param, dimension, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint8 getLengthIsArgNumberForParam (in PRUint16 methodIndex, [const] in nsXPTParamInfoPtr param, in PRUint16 dimension); */
  PRUint8 GetLengthIsArgNumberForParam(PRUint16 methodIndex, nsXPTParamInfo * param, PRUint16 dimension){
    PRUint8 _retval;
    nsresult __result = inner.GetLengthIsArgNumberForParam(methodIndex, param, dimension, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint8 getInterfaceIsArgNumberForParam (in PRUint16 methodIndex, [const] in nsXPTParamInfoPtr param); */
  PRUint8 GetInterfaceIsArgNumberForParam(PRUint16 methodIndex, nsXPTParamInfo * param){
    PRUint8 _retval;
    nsresult __result = inner.GetInterfaceIsArgNumberForParam(methodIndex, param, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRBool isIID (in nsIIDPtr IID); */
  PRBool IsIID(nsIID * IID){
    PRBool _retval;
    nsresult __result = inner.IsIID(IID, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void getNameShared ([shared, retval] out string name); */
  void GetNameShared(out char*name){
    nsresult __result = inner.GetNameShared(&name);
    CheckException(__result);
  }

  /* void getIIDShared ([shared, retval] out nsIIDPtrShared iid); */
  void GetIIDShared(out nsIID * iid){
    nsresult __result = inner.GetIIDShared(&iid);
    CheckException(__result);
  }

  /* PRBool isFunction (); */
  PRBool IsFunction(){
    PRBool _retval;
    nsresult __result = inner.IsFunction(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRBool hasAncestor (in nsIIDPtr iid); */
  PRBool HasAncestor(nsIID * iid){
    PRBool _retval;
    nsresult __result = inner.HasAncestor(iid, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* [notxpcom] nsresult getIIDForParamNoAlloc (in PRUint16 methodIndex, [const] in nsXPTParamInfoPtr param, out nsIID iid); */
  nsresult GetIIDForParamNoAlloc(PRUint16 methodIndex, nsXPTParamInfo * param, out nsIID iid){
    nsresult _retval;
    _retval = inner.GetIIDForParamNoAlloc(methodIndex, param, &iid);

    return _retval;
  }

private:
  nsIInterfaceInfo inner;

}

