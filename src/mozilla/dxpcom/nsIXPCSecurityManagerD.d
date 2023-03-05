/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPCSecurityManager.idl
 */

module mozilla.dxpcom.nsIXPCSecurityManagerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXPCSecurityManager;


public import mozilla.dxpcom.nsIXPCSecurityManagerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIClassInfo;

public import mozilla.dxpcom.nsIClassInfoD;

public import mozilla.xpcom.nsIXPConnect;

import mozilla.dxpcom.nsIXPConnectD;


/* starting wrapper class:    nsIXPCSecurityManager */
class nsIXPCSecurityManagerD : public nsISupportsD {

  static const nsIID IID = NS_IXPCSECURITYMANAGER_IID;


  alias nsIXPCSecurityManager InnerType;

  this(nsIXPCSecurityManager intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPCSecurityManager opCast() {
    return inner;
  }

  void opAssign(nsIXPCSecurityManager value) {
    inner = value;
  }

  /**
    * These flags are used when calling nsIXPConnect::SetSecurityManager
    */
  enum { HOOK_CREATE_WRAPPER = 1U }

  enum { HOOK_CREATE_INSTANCE = 2U }

  enum { HOOK_GET_SERVICE = 4U }

  enum { HOOK_CALL_METHOD = 8U }

  enum { HOOK_GET_PROPERTY = 16U }

  enum { HOOK_SET_PROPERTY = 32U }

  enum { HOOK_ALL = 63U }

  /**
    * For each of these hooks returning NS_OK means 'let the action continue'.
    * Returning an error code means 'veto the action'. XPConnect will return
    * JS_FALSE to the js engine if the action is vetoed. The implementor of this
    * interface is responsible for setting a JS exception into the JSContext
    * if that is appropriate.
    */
  /* void CanCreateWrapper (in JSContextPtr aJSContext, in nsIIDRef aIID, in nsISupports aObj, in nsIClassInfo aClassInfo, inout voidPtr aPolicy); */
  void CanCreateWrapper(JSContext * aJSContext, nsIID * aIID, nsISupportsD aObj, nsIClassInfoD aClassInfo, out void * aPolicy){
    nsresult __result = inner.CanCreateWrapper(aJSContext, aIID, aObj ? cast(nsISupports)aObj : null, aClassInfo ? cast(nsIClassInfo)aClassInfo : null, &aPolicy);
    CheckException(__result);
  }

  /* void CanCreateInstance (in JSContextPtr aJSContext, in nsCIDRef aCID); */
  void CanCreateInstance(JSContext * aJSContext, nsCID * aCID){
    nsresult __result = inner.CanCreateInstance(aJSContext, aCID);
    CheckException(__result);
  }

  /* void CanGetService (in JSContextPtr aJSContext, in nsCIDRef aCID); */
  void CanGetService(JSContext * aJSContext, nsCID * aCID){
    nsresult __result = inner.CanGetService(aJSContext, aCID);
    CheckException(__result);
  }

  enum { ACCESS_CALL_METHOD = 0U }

  enum { ACCESS_GET_PROPERTY = 1U }

  enum { ACCESS_SET_PROPERTY = 2U }

  /* void CanAccess (in PRUint32 aAction, in nsIXPCNativeCallContext aCallContext, in JSContextPtr aJSContext, in JSObjectPtr aJSObject, in nsISupports aObj, in nsIClassInfo aClassInfo, in JSVal aName, inout voidPtr aPolicy); */
  void CanAccess(PRUint32 aAction, nsIXPCNativeCallContextD aCallContext, JSContext * aJSContext, JSObject * aJSObject, nsISupportsD aObj, nsIClassInfoD aClassInfo, jsval aName, out void * aPolicy){
    nsresult __result = inner.CanAccess(aAction, aCallContext ? cast(nsIXPCNativeCallContext)aCallContext : null, aJSContext, aJSObject, aObj ? cast(nsISupports)aObj : null, aClassInfo ? cast(nsIClassInfo)aClassInfo : null, aName, &aPolicy);
    CheckException(__result);
  }

private:
  nsIXPCSecurityManager inner;

}

