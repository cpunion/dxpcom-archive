/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPCSecurityManager.idl
 */

module mozilla.xpcom.nsIXPCSecurityManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIClassInfo; /* forward declaration */

public import mozilla.xpcom.nsIXPConnect;


/* starting interface:    nsIXPCSecurityManager */
const char[] NS_IXPCSECURITYMANAGER_IID_STR = "31431440-f1ce-11d2-985a-006008962422";

const nsIID NS_IXPCSECURITYMANAGER_IID= 
  {0x31431440, 0xf1ce, 0x11d2, 
    [ 0x98, 0x5a, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

extern(Windows)
interface nsIXPCSecurityManager : nsISupports {
  static const char[] IID_STR = NS_IXPCSECURITYMANAGER_IID_STR;
  static const nsIID IID = NS_IXPCSECURITYMANAGER_IID;

  /**
    * These flags are used when calling nsIXPConnect::SetSecurityManager
    */
  enum { HOOK_CREATE_WRAPPER = 1U };

  enum { HOOK_CREATE_INSTANCE = 2U };

  enum { HOOK_GET_SERVICE = 4U };

  enum { HOOK_CALL_METHOD = 8U };

  enum { HOOK_GET_PROPERTY = 16U };

  enum { HOOK_SET_PROPERTY = 32U };

  enum { HOOK_ALL = 63U };

  /**
    * For each of these hooks returning NS_OK means 'let the action continue'.
    * Returning an error code means 'veto the action'. XPConnect will return
    * JS_FALSE to the js engine if the action is vetoed. The implementor of this
    * interface is responsible for setting a JS exception into the JSContext
    * if that is appropriate.
    */
  /* void CanCreateWrapper (in JSContextPtr aJSContext, in nsIIDRef aIID, in nsISupports aObj, in nsIClassInfo aClassInfo, inout voidPtr aPolicy); */
  nsresult CanCreateWrapper(JSContext * aJSContext, nsIID * aIID, nsISupports aObj, nsIClassInfo aClassInfo, void * *aPolicy);

  /* void CanCreateInstance (in JSContextPtr aJSContext, in nsCIDRef aCID); */
  nsresult CanCreateInstance(JSContext * aJSContext, nsCID * aCID);

  /* void CanGetService (in JSContextPtr aJSContext, in nsCIDRef aCID); */
  nsresult CanGetService(JSContext * aJSContext, nsCID * aCID);

  enum { ACCESS_CALL_METHOD = 0U };

  enum { ACCESS_GET_PROPERTY = 1U };

  enum { ACCESS_SET_PROPERTY = 2U };

  /* void CanAccess (in PRUint32 aAction, in nsIXPCNativeCallContext aCallContext, in JSContextPtr aJSContext, in JSObjectPtr aJSObject, in nsISupports aObj, in nsIClassInfo aClassInfo, in JSVal aName, inout voidPtr aPolicy); */
  nsresult CanAccess(PRUint32 aAction, nsIXPCNativeCallContext aCallContext, JSContext * aJSContext, JSObject * aJSObject, nsISupports aObj, nsIClassInfo aClassInfo, jsval aName, void * *aPolicy);

}

