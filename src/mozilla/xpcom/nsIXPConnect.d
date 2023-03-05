/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPConnect.idl
 */

module mozilla.xpcom.nsIXPConnect;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIClassInfo;
public import mozilla.xpcom.xpccomponents;
public import mozilla.xpcom.xpcjsid;
public import mozilla.xpcom.xpcexception;
public import mozilla.xpcom.nsIInterfaceInfo;
public import mozilla.xpcom.nsIInterfaceInfoManager;
public import mozilla.xpcom.nsIExceptionService;
public import mozilla.xpcom.nsIVariant;
public import mozilla.xpcom.nsIWeakReference;

public import mozilla.xpcom.nsIXPCScriptable; /* forward declaration */

public import mozilla.xpcom.nsIXPConnect; /* forward declaration */

public import mozilla.xpcom.nsIXPConnect;

public import mozilla.xpcom.nsIInterfaceInfo; /* forward declaration */

public import mozilla.xpcom.nsIXPCSecurityManager; /* forward declaration */

public import mozilla.xpcom.nsIPrincipal; /* forward declaration */


/* starting interface:    nsIXPConnectJSObjectHolder */
const char[] NS_IXPCONNECTJSOBJECTHOLDER_IID_STR = "8916a320-d118-11d3-8f3a-0010a4e73d9a";

const nsIID NS_IXPCONNECTJSOBJECTHOLDER_IID= 
  {0x8916a320, 0xd118, 0x11d3, 
    [ 0x8f, 0x3a, 0x00, 0x10, 0xa4, 0xe7, 0x3d, 0x9a ]};

/***************************************************************************/
extern(Windows)
interface nsIXPConnectJSObjectHolder : nsISupports {
  static const char[] IID_STR = NS_IXPCONNECTJSOBJECTHOLDER_IID_STR;
  static const nsIID IID = NS_IXPCONNECTJSOBJECTHOLDER_IID;

  /* readonly attribute JSObjectPtr JSObject; */
  nsresult GetJSObject(JSObject * *aJSObject);

}


/* starting interface:    nsIXPConnectWrappedNative */
const char[] NS_IXPCONNECTWRAPPEDNATIVE_IID_STR = "215dbe02-94a7-11d2-ba58-00805f8a5dd7";

const nsIID NS_IXPCONNECTWRAPPEDNATIVE_IID= 
  {0x215dbe02, 0x94a7, 0x11d2, 
    [ 0xba, 0x58, 0x00, 0x80, 0x5f, 0x8a, 0x5d, 0xd7 ]};

extern(Windows)
interface nsIXPConnectWrappedNative : nsIXPConnectJSObjectHolder {
  static const char[] IID_STR = NS_IXPCONNECTWRAPPEDNATIVE_IID_STR;
  static const nsIID IID = NS_IXPCONNECTWRAPPEDNATIVE_IID;

  /* readonly attribute nsISupports Native; */
  nsresult GetNative(nsISupports  *aNative);

  /* readonly attribute JSObjectPtr JSObjectPrototype; */
  nsresult GetJSObjectPrototype(JSObject * *aJSObjectPrototype);

  /**
     * These are here as an aid to nsIXPCScriptable implementors
     */
  /* readonly attribute nsIXPConnect XPConnect; */
  nsresult GetXPConnect(nsIXPConnect  *aXPConnect);

  /* nsIInterfaceInfo FindInterfaceWithMember (in JSVal nameID); */
  nsresult FindInterfaceWithMember(jsval nameID, nsIInterfaceInfo *_retval);

  /* nsIInterfaceInfo FindInterfaceWithName (in JSVal nameID); */
  nsresult FindInterfaceWithName(jsval nameID, nsIInterfaceInfo *_retval);

  /* void debugDump (in short depth); */
  nsresult DebugDump(PRInt16 depth);

  /* void refreshPrototype (); */
  nsresult RefreshPrototype();

  /* voidPtrPtr GetSecurityInfoAddress (); */
  nsresult GetSecurityInfoAddress(void* * *_retval);

}


/* starting interface:    nsIXPConnectWrappedJS */
const char[] NS_IXPCONNECTWRAPPEDJS_IID_STR = "bed52030-bca6-11d2-ba79-00805f8a5dd7";

const nsIID NS_IXPCONNECTWRAPPEDJS_IID= 
  {0xbed52030, 0xbca6, 0x11d2, 
    [ 0xba, 0x79, 0x00, 0x80, 0x5f, 0x8a, 0x5d, 0xd7 ]};

extern(Windows)
interface nsIXPConnectWrappedJS : nsIXPConnectJSObjectHolder {
  static const char[] IID_STR = NS_IXPCONNECTWRAPPEDJS_IID_STR;
  static const nsIID IID = NS_IXPCONNECTWRAPPEDJS_IID;

  /* readonly attribute nsIInterfaceInfo InterfaceInfo; */
  nsresult GetInterfaceInfo(nsIInterfaceInfo  *aInterfaceInfo);

  /* readonly attribute nsIIDPtr InterfaceIID; */
  nsresult GetInterfaceIID(nsIID * *aInterfaceIID);

  /* void debugDump (in short depth); */
  nsresult DebugDump(PRInt16 depth);

  /* void aggregatedQueryInterface (in nsIIDRef uuid, [iid_is (uuid), retval] out nsQIResult result); */
  nsresult AggregatedQueryInterface(nsIID * uuid, void * *result);

}


/* starting interface:    nsIXPConnectWrappedJS_MOZILLA_1_8_BRANCH */
const char[] NS_IXPCONNECTWRAPPEDJS_MOZILLA_1_8_BRANCH_IID_STR = "0f1799d3-13d3-45f7-8361-0a6f211183f4";

const nsIID NS_IXPCONNECTWRAPPEDJS_MOZILLA_1_8_BRANCH_IID= 
  {0x0f1799d3, 0x13d3, 0x45f7, 
    [ 0x83, 0x61, 0x0a, 0x6f, 0x21, 0x11, 0x83, 0xf4 ]};

extern(Windows)
interface nsIXPConnectWrappedJS_MOZILLA_1_8_BRANCH : nsIXPConnectWrappedJS {
  static const char[] IID_STR = NS_IXPCONNECTWRAPPEDJS_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = NS_IXPCONNECTWRAPPEDJS_MOZILLA_1_8_BRANCH_IID;

  /* nsIWeakReference GetWeakReference (); */
  nsresult GetWeakReference(nsIWeakReference *_retval);

}


/* starting interface:    nsWeakRefToIXPConnectWrappedJS */
const char[] NS_WEAKREFTOIXPCONNECTWRAPPEDJS_IID_STR = "3f32871c-d014-4f91-b358-3ece74cbebaa";

const nsIID NS_WEAKREFTOIXPCONNECTWRAPPEDJS_IID= 
  {0x3f32871c, 0xd014, 0x4f91, 
    [ 0xb3, 0x58, 0x3e, 0xce, 0x74, 0xcb, 0xeb, 0xaa ]};

/**
 * This interface is a complete hack.  It is used by the DOM code to
 * call QueryReferent on a weak reference to a wrapped JS object without
 * causing reference counting, which would add and remove GC roots
 * (which can't be done in the middle of GC).
 */
extern(Windows)
interface nsWeakRefToIXPConnectWrappedJS : nsIXPConnectWrappedJS_MOZILLA_1_8_BRANCH {
  static const char[] IID_STR = NS_WEAKREFTOIXPCONNECTWRAPPEDJS_IID_STR;
  static const nsIID IID = NS_WEAKREFTOIXPCONNECTWRAPPEDJS_IID;

}


/* starting interface:    nsIXPCNativeCallContext */
const char[] NS_IXPCNATIVECALLCONTEXT_IID_STR = "0fa68a60-8289-11d3-bb1a-00805f8a5dd7";

const nsIID NS_IXPCNATIVECALLCONTEXT_IID= 
  {0x0fa68a60, 0x8289, 0x11d3, 
    [ 0xbb, 0x1a, 0x00, 0x80, 0x5f, 0x8a, 0x5d, 0xd7 ]};

/***************************************************************************/
/**
* This is a somewhat special interface. It is available from the global
* nsIXPConnect object when native methods have been called. It is only relevant
* to the currently called native method on the given JSContext/thread. Holding
* a reference past that time (or while other native methods are being called)
* will not assure access to this data.
*/
extern(Windows)
interface nsIXPCNativeCallContext : nsISupports {
  static const char[] IID_STR = NS_IXPCNATIVECALLCONTEXT_IID_STR;
  static const nsIID IID = NS_IXPCNATIVECALLCONTEXT_IID;

  /* readonly attribute nsISupports Callee; */
  nsresult GetCallee(nsISupports  *aCallee);

  /* readonly attribute PRUint16 CalleeMethodIndex; */
  nsresult GetCalleeMethodIndex(PRUint16 *aCalleeMethodIndex);

  /* readonly attribute nsIXPConnectWrappedNative CalleeWrapper; */
  nsresult GetCalleeWrapper(nsIXPConnectWrappedNative  *aCalleeWrapper);

  /* readonly attribute JSContextPtr JSContext; */
  nsresult GetJSContext(JSContext * *aJSContext);

  /* readonly attribute PRUint32 Argc; */
  nsresult GetArgc(PRUint32 *aArgc);

  /* readonly attribute JSValPtr ArgvPtr; */
  nsresult GetArgvPtr(jsval * *aArgvPtr);

  /**
    * This may be NULL if the JS caller is ignoring the result of the call.
    */
  /* readonly attribute JSValPtr RetValPtr; */
  nsresult GetRetValPtr(jsval * *aRetValPtr);

  /**
    * Set this if JS_SetPendingException has been called. Return NS_OK or
    * else this will be ignored and the native method's nsresult will be
    * converted into an exception and thrown into JS as is the normal case.
    */
  /* attribute PRBool ExceptionWasThrown; */
  nsresult GetExceptionWasThrown(PRBool *aExceptionWasThrown);
  nsresult SetExceptionWasThrown(PRBool aExceptionWasThrown);

  /**
    * Set this to indicate that the callee has directly set the return value
    * (using RetValPtr and the JSAPI). If set then xpconnect will not attempt
    * to overwrite it with the converted retval from the C++ callee.
    */
  /* attribute PRBool ReturnValueWasSet; */
  nsresult GetReturnValueWasSet(PRBool *aReturnValueWasSet);
  nsresult SetReturnValueWasSet(PRBool aReturnValueWasSet);

  /* readonly attribute nsIInterfaceInfo CalleeInterface; */
  nsresult GetCalleeInterface(nsIInterfaceInfo  *aCalleeInterface);

  /* readonly attribute nsIClassInfo CalleeClassInfo; */
  nsresult GetCalleeClassInfo(nsIClassInfo  *aCalleeClassInfo);

}


/* starting interface:    nsIXPCWrappedJSObjectGetter */
const char[] NS_IXPCWRAPPEDJSOBJECTGETTER_IID_STR = "254bb2e0-6439-11d4-8fe0-0010a4e73d9a";

const nsIID NS_IXPCWRAPPEDJSOBJECTGETTER_IID= 
  {0x254bb2e0, 0x6439, 0x11d4, 
    [ 0x8f, 0xe0, 0x00, 0x10, 0xa4, 0xe7, 0x3d, 0x9a ]};

/***************************************************************************/
/**
 * This is a sort of a placeholder interface. It is not intended to be
 * implemented. It exists to give the nsIXPCSecurityManager an iid on
 * which to gate a specific activity in XPConnect.
 *
 * That activity is...
 *
 * When JavaScript code uses a component that is itself implemeted in
 * JavaScript then XPConnect will build a wrapper rather than directly
 * expose the JSObject of the component. This allows components implemented
 * in JavaScript to 'look' just like any other xpcom component (from the
 * perspective of the JavaScript caller). This insulates the component from
 * the caller and hides any properties or methods that are not part of the
 * interface as declared in xpidl. Usually this is a good thing.
 *
 * However, in some cases it is useful to allow the JS caller access to the
 * JS component's underlying implementation. In order to facilitate this
 * XPConnect supports the 'wrappedJSObject' property. The caller code can do:
 *
 * // 'foo' is some xpcom component (that might be implemented in JS).
 * try {
 *   var bar = foo.wrappedJSObject;
 *   if(bar) {
 *      // bar is the underlying JSObject. Do stuff with it here.
 *   }
 * } catch(e) {
 *   // security exception?
 * }
 *
 * Recall that 'foo' above is an XPConnect wrapper, not the underlying JS
 * object. The property get "foo.wrappedJSObject" will only succeed if three
 * conditions are met:
 *
 * 1) 'foo' really is an XPConnect wrapper around a JSObject.
 * 2) The underlying JSObject actually implements a "wrappedJSObject"
 *    property that returns a JSObject. This is called by XPConnect. This
 *    restriction allows wrapped objects to only allow access to the underlying
 *    JSObject if they choose to do so. Ususally this just means that 'foo'
 *    would have a property tht looks like:
 *       this.wrappedJSObject = this.
 * 3) The implemementation of nsIXPCSecurityManager (if installed) allows
 *    a property get on the interface below. Although the JSObject need not
 *    implement 'nsIXPCWrappedJSObjectGetter', XPConnect will ask the
 *    security manager if it is OK for the caller to access the only method
 *    in nsIXPCWrappedJSObjectGetter before allowing the activity. This fits
 *    in with the security manager paradigm and makes control over accessing
 *    the property on this interface the control factor for getting the
 *    underlying wrapped JSObject of a JS component from JS code.
 *
 * Notes:
 *
 * a) If 'foo' above were the underlying JSObject and not a wrapper at all,
 *    then this all just works and XPConnect is not part of the picture at all.
 * b) One might ask why 'foo' should not just implement an interface through
 *    which callers might get at the underlying object. There are three reasons:
 *   i)   XPConnect would still have to do magic since JSObject is not a
 *        scriptable type.
 *   ii)  JS Components might use aggregation (like C++ objects) and have
 *        different JSObjects for different interfaces 'within' an aggregate
 *        object. But, using an additional interface only allows returning one
 *        underlying JSObject. However, this allows for the possibility that
 *        each of the aggregte JSObjects could return something different.
 *        Note that one might do: this.wrappedJSObject = someOtherObject;
 *   iii) Avoiding the explicit interface makes it easier for both the caller
 *        and the component.
 *
 *  Anyway, some future implementation of nsIXPCSecurityManager might want
 *  do special processing on 'nsIXPCSecurityManager::CanGetProperty' when
 *  the interface id is that of nsIXPCWrappedJSObjectGetter.
 */
extern(Windows)
interface nsIXPCWrappedJSObjectGetter : nsISupports {
  static const char[] IID_STR = NS_IXPCWRAPPEDJSOBJECTGETTER_IID_STR;
  static const nsIID IID = NS_IXPCWRAPPEDJSOBJECTGETTER_IID;

  /* readonly attribute nsISupports neverCalled; */
  nsresult GetNeverCalled(nsISupports  *aNeverCalled);

}


/* starting interface:    nsIXPCFunctionThisTranslator */
const char[] NS_IXPCFUNCTIONTHISTRANSLATOR_IID_STR = "039ef260-2a0d-11d5-90a7-0010a4e73d9a";

const nsIID NS_IXPCFUNCTIONTHISTRANSLATOR_IID= 
  {0x039ef260, 0x2a0d, 0x11d5, 
    [ 0x90, 0xa7, 0x00, 0x10, 0xa4, 0xe7, 0x3d, 0x9a ]};

/***************************************************************************/
extern(Windows)
interface nsIXPCFunctionThisTranslator : nsISupports {
  static const char[] IID_STR = NS_IXPCFUNCTIONTHISTRANSLATOR_IID_STR;
  static const nsIID IID = NS_IXPCFUNCTIONTHISTRANSLATOR_IID;

  /* nsISupports TranslateThis (in nsISupports aInitialThis, in nsIInterfaceInfo aInterfaceInfo, in PRUint16 aMethodIndex, out PRBool aHideFirstParamFromJS, out nsIIDPtr aIIDOfResult); */
  nsresult TranslateThis(nsISupports aInitialThis, nsIInterfaceInfo aInterfaceInfo, PRUint16 aMethodIndex, PRBool *aHideFirstParamFromJS, nsIID * *aIIDOfResult, nsISupports *_retval);

}


/* starting interface:    nsIXPConnect */
const char[] NS_IXPCONNECT_IID_STR = "deb1d48e-7469-4b01-b186-d9854c7d3f2d";

const nsIID NS_IXPCONNECT_IID= 
  {0xdeb1d48e, 0x7469, 0x4b01, 
    [ 0xb1, 0x86, 0xd9, 0x85, 0x4c, 0x7d, 0x3f, 0x2d ]};

extern(Windows)
interface nsIXPConnect : nsISupports {
  static const char[] IID_STR = NS_IXPCONNECT_IID_STR;
  static const nsIID IID = NS_IXPCONNECT_IID;

  /***************************************************************************/
  /* void initClasses (in JSContextPtr aJSContext, in JSObjectPtr aGlobalJSObj); */
  nsresult InitClasses(JSContext * aJSContext, JSObject * aGlobalJSObj);

  /* nsIXPConnectJSObjectHolder initClassesWithNewWrappedGlobal (in JSContextPtr aJSContext, in nsISupports aCOMObj, in nsIIDRef aIID, in PRUint32 aFlags); */
  nsresult InitClassesWithNewWrappedGlobal(JSContext * aJSContext, nsISupports aCOMObj, nsIID * aIID, PRUint32 aFlags, nsIXPConnectJSObjectHolder *_retval);

  enum { INIT_JS_STANDARD_CLASSES = 1U };

  enum { FLAG_SYSTEM_GLOBAL_OBJECT = 2U };

  /**
    * wrapNative will create a new JSObject or return an existing one.
    *
    * The JSObject is returned inside a refcounted nsIXPConnectJSObjectHolder.
    * As long as this holder is held the JSObject will be protected from
    * collection by JavaScript's garbage collector. It is a good idea to
    * transfer the JSObject to some equally protected place before releasing
    * the holder (i.e. use JS_SetProperty to make this object a property of
    * some other JSObject).
    *
    * This method now correctly deals with cases where the passed in xpcom
    * object already has an associated JSObject for the cases:
    *  1) The xpcom object has already been wrapped for use in the same scope
    *     as an nsIXPConnectWrappedNative.
    *  2) The xpcom object is in fact a nsIXPConnectWrappedJS and thus already
    *     has an underlying JSObject.
    *  3) The xpcom object implements nsIScriptObjectOwner; i.e. is an idlc
    *     style DOM object for which we can call GetScriptObject to get the
    *     JSObject it uses to represent itself into JavaScript.
    *
    * It *might* be possible to QueryInterface the nsIXPConnectJSObjectHolder
    * returned by the method into a nsIXPConnectWrappedNative or a
    * nsIXPConnectWrappedJS.
    *
    * This method will never wrap the JSObject involved in an
    * XPCNativeWrapper before returning.
    *
    * Returns:
    *    success:
    *       NS_OK
    *    failure:
    *       NS_ERROR_XPC_BAD_CONVERT_NATIVE
    *       NS_ERROR_XPC_CANT_GET_JSOBJECT_OF_DOM_OBJECT
    *       NS_ERROR_FAILURE
    */
  /* nsIXPConnectJSObjectHolder wrapNative (in JSContextPtr aJSContext, in JSObjectPtr aScope, in nsISupports aCOMObj, in nsIIDRef aIID); */
  nsresult WrapNative(JSContext * aJSContext, JSObject * aScope, nsISupports aCOMObj, nsIID * aIID, nsIXPConnectJSObjectHolder *_retval);

  /**
    * wrapJS will yield a new or previously existing xpcom interface pointer
    * to represent the JSObject passed in.
    *
    * This method now correctly deals with cases where the passed in JSObject
    * already has an associated xpcom interface for the cases:
    *  1) The JSObject has already been wrapped as a nsIXPConnectWrappedJS.
    *  2) The JSObject is in fact a nsIXPConnectWrappedNative and thus already
    *     has an underlying xpcom object.
    *  3) The JSObject is of a jsclass which supports getting the nsISupports
    *     from the JSObject directly. This is used for idlc style objects
    *     (e.g. DOM objects).
    *
    * It *might* be possible to QueryInterface the resulting interface pointer
    * to nsIXPConnectWrappedJS.
    *
    * Returns:
    *   success:
    *     NS_OK
    *    failure:
    *       NS_ERROR_XPC_BAD_CONVERT_JS
    *       NS_ERROR_FAILURE
    */
  /* void wrapJS (in JSContextPtr aJSContext, in JSObjectPtr aJSObj, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult result); */
  nsresult WrapJS(JSContext * aJSContext, JSObject * aJSObj, nsIID * aIID, void * *result);

  /**
    * This only succeeds if the JSObject is a nsIXPConnectWrappedNative.
    * A new wrapper is *never* constructed.
    */
  /* nsIXPConnectWrappedNative getWrappedNativeOfJSObject (in JSContextPtr aJSContext, in JSObjectPtr aJSObj); */
  nsresult GetWrappedNativeOfJSObject(JSContext * aJSContext, JSObject * aJSObj, nsIXPConnectWrappedNative *_retval);

  /* void setSecurityManagerForJSContext (in JSContextPtr aJSContext, in nsIXPCSecurityManager aManager, in PRUint16 flags); */
  nsresult SetSecurityManagerForJSContext(JSContext * aJSContext, nsIXPCSecurityManager aManager, PRUint16 flags);

  /* void getSecurityManagerForJSContext (in JSContextPtr aJSContext, out nsIXPCSecurityManager aManager, out PRUint16 flags); */
  nsresult GetSecurityManagerForJSContext(JSContext * aJSContext, nsIXPCSecurityManager *aManager, PRUint16 *flags);

  /**
    * The security manager to use when the current JSContext has no security
    * manager.
    */
  /* void setDefaultSecurityManager (in nsIXPCSecurityManager aManager, in PRUint16 flags); */
  nsresult SetDefaultSecurityManager(nsIXPCSecurityManager aManager, PRUint16 flags);

  /* void getDefaultSecurityManager (out nsIXPCSecurityManager aManager, out PRUint16 flags); */
  nsresult GetDefaultSecurityManager(nsIXPCSecurityManager *aManager, PRUint16 *flags);

  /* nsIStackFrame createStackFrameLocation (in PRUint32 aLanguage, in string aFilename, in string aFunctionName, in PRInt32 aLineNumber, in nsIStackFrame aCaller); */
  nsresult CreateStackFrameLocation(PRUint32 aLanguage, char *aFilename, char *aFunctionName, PRInt32 aLineNumber, nsIStackFrame aCaller, nsIStackFrame *_retval);

  /**
    * XPConnect builds internal objects that parallel, and are one-to-one with,
    * the JSContexts in the JSRuntime. It builds these objects as needed.
    * This method tells XPConnect to resynchronize its representations with the
    * list of JSContexts currently 'alive' in the JSRuntime. This allows it
    * to cleanup any representations of JSContexts that are no longer valid.
    */
  /* void syncJSContexts (); */
  nsresult SyncJSContexts();

  /* readonly attribute nsIStackFrame CurrentJSStack; */
  nsresult GetCurrentJSStack(nsIStackFrame  *aCurrentJSStack);

  /* readonly attribute nsIXPCNativeCallContext CurrentNativeCallContext; */
  nsresult GetCurrentNativeCallContext(nsIXPCNativeCallContext  *aCurrentNativeCallContext);

  /* attribute nsIException PendingException; */
  nsresult GetPendingException(nsIException  *aPendingException);
  nsresult SetPendingException(nsIException  aPendingException);

  /* void debugDump (in short depth); */
  nsresult DebugDump(PRInt16 depth);

  /* void debugDumpObject (in nsISupports aCOMObj, in short depth); */
  nsresult DebugDumpObject(nsISupports aCOMObj, PRInt16 depth);

  /* void debugDumpJSStack (in PRBool showArgs, in PRBool showLocals, in PRBool showThisProps); */
  nsresult DebugDumpJSStack(PRBool showArgs, PRBool showLocals, PRBool showThisProps);

  /* void debugDumpEvalInJSStackFrame (in PRUint32 aFrameNumber, in string aSourceText); */
  nsresult DebugDumpEvalInJSStackFrame(PRUint32 aFrameNumber, char *aSourceText);

  /**
    * Set fallback JSContext to use when xpconnect can't find an appropriate
    * context to use to execute JavaScript.
    *
    * NOTE: This method is DEPRECATED. 
    *       Use nsIThreadJSContextStack::safeJSContext instead.
    */
  /* void setSafeJSContextForCurrentThread (in JSContextPtr cx); */
  nsresult SetSafeJSContextForCurrentThread(JSContext * cx);

  /**
    * wrapJSAggregatedToNative is just like wrapJS except it is used in cases
    * where the JSObject is also aggregated to some native xpcom Object.
    * At present XBL is the only system that might want to do this.
    *
    * XXX write more!
    *
    * Returns:
    *   success:
    *     NS_OK
    *    failure:
    *       NS_ERROR_XPC_BAD_CONVERT_JS
    *       NS_ERROR_FAILURE
    */
  /* void wrapJSAggregatedToNative (in nsISupports aOuter, in JSContextPtr aJSContext, in JSObjectPtr aJSObj, in nsIIDRef aIID, [iid_is (aIID), retval] out nsQIResult result); */
  nsresult WrapJSAggregatedToNative(nsISupports aOuter, JSContext * aJSContext, JSObject * aJSObj, nsIID * aIID, void * *result);

  /**
    * This only succeeds if the native object is already wrapped by xpconnect.
    * A new wrapper is *never* constructed.
    */
  /* nsIXPConnectWrappedNative getWrappedNativeOfNativeObject (in JSContextPtr aJSContext, in JSObjectPtr aScope, in nsISupports aCOMObj, in nsIIDRef aIID); */
  nsresult GetWrappedNativeOfNativeObject(JSContext * aJSContext, JSObject * aScope, nsISupports aCOMObj, nsIID * aIID, nsIXPConnectWrappedNative *_retval);

  /* nsIXPCFunctionThisTranslator getFunctionThisTranslator (in nsIIDRef aIID); */
  nsresult GetFunctionThisTranslator(nsIID * aIID, nsIXPCFunctionThisTranslator *_retval);

  /* nsIXPCFunctionThisTranslator setFunctionThisTranslator (in nsIIDRef aIID, in nsIXPCFunctionThisTranslator aTranslator); */
  nsresult SetFunctionThisTranslator(nsIID * aIID, nsIXPCFunctionThisTranslator aTranslator, nsIXPCFunctionThisTranslator *_retval);

  /* nsIXPConnectJSObjectHolder reparentWrappedNativeIfFound (in JSContextPtr aJSContext, in JSObjectPtr aScope, in JSObjectPtr aNewParent, in nsISupports aCOMObj); */
  nsresult ReparentWrappedNativeIfFound(JSContext * aJSContext, JSObject * aScope, JSObject * aNewParent, nsISupports aCOMObj, nsIXPConnectJSObjectHolder *_retval);

  /* void clearAllWrappedNativeSecurityPolicies (); */
  nsresult ClearAllWrappedNativeSecurityPolicies();

  /* nsIXPConnectJSObjectHolder getWrappedNativePrototype (in JSContextPtr aJSContext, in JSObjectPtr aScope, in nsIClassInfo aClassInfo); */
  nsresult GetWrappedNativePrototype(JSContext * aJSContext, JSObject * aScope, nsIClassInfo aClassInfo, nsIXPConnectJSObjectHolder *_retval);

  /* attribute PRBool collectGarbageOnMainThreadOnly; */
  nsresult GetCollectGarbageOnMainThreadOnly(PRBool *aCollectGarbageOnMainThreadOnly);
  nsresult SetCollectGarbageOnMainThreadOnly(PRBool aCollectGarbageOnMainThreadOnly);

  /* attribute PRBool deferReleasesUntilAfterGarbageCollection; */
  nsresult GetDeferReleasesUntilAfterGarbageCollection(PRBool *aDeferReleasesUntilAfterGarbageCollection);
  nsresult SetDeferReleasesUntilAfterGarbageCollection(PRBool aDeferReleasesUntilAfterGarbageCollection);

  /* void releaseJSContext (in JSContextPtr aJSContext, in PRBool noGC); */
  nsresult ReleaseJSContext(JSContext * aJSContext, PRBool noGC);

  /* JSVal variantToJS (in JSContextPtr ctx, in JSObjectPtr scope, in nsIVariant value); */
  nsresult VariantToJS(JSContext * ctx, JSObject * scope_, nsIVariant value, jsval *_retval);

  /* nsIVariant JSToVariant (in JSContextPtr ctx, in JSVal value); */
  nsresult JSToVariant(JSContext * ctx, jsval value, nsIVariant *_retval);

  /**
     * Preconfigure XPCNativeWrapper automation so that when a scripted
     * caller whose filename starts with filenamePrefix accesses a wrapped
     * native that is not flagged as "system", the wrapped native will be
     * automatically wrapped with an XPCNativeWrapper.
     *
     * @param aFilenamePrefix the UTF-8 filename prefix to match, which
     *                        should end with a slash (/) character
     */
  /* void flagSystemFilenamePrefix (in string aFilenamePrefix); */
  nsresult FlagSystemFilenamePrefix(char *aFilenamePrefix);

  /**
     * Restore an old prototype for wrapped natives of type
     * aClassInfo. This should be used only when restoring an old
     * scope into a state close to where it was prior to
     * being reinitialized.
     */
  /* void restoreWrappedNativePrototype (in JSContextPtr aJSContext, in JSObjectPtr aScope, in nsIClassInfo aClassInfo, in nsIXPConnectJSObjectHolder aPrototype); */
  nsresult RestoreWrappedNativePrototype(JSContext * aJSContext, JSObject * aScope, nsIClassInfo aClassInfo, nsIXPConnectJSObjectHolder aPrototype);

}


/* starting interface:    nsIXPConnect_MOZILLA_1_8_BRANCH */
const char[] NS_IXPCONNECT_MOZILLA_1_8_BRANCH_IID_STR = "4b61f818-d260-45ab-ac4e-d27790b5be5e";

const nsIID NS_IXPCONNECT_MOZILLA_1_8_BRANCH_IID= 
  {0x4b61f818, 0xd260, 0x45ab, 
    [ 0xac, 0x4e, 0xd2, 0x77, 0x90, 0xb5, 0xbe, 0x5e ]};

extern(Windows)
interface nsIXPConnect_MOZILLA_1_8_BRANCH : nsIXPConnect {
  static const char[] IID_STR = NS_IXPCONNECT_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = NS_IXPCONNECT_MOZILLA_1_8_BRANCH_IID;

  /* void reparentScopeAwareWrappers (in JSContextPtr aJSContext, in JSObjectPtr aOldScope, in JSObjectPtr aNewScope); */
  nsresult ReparentScopeAwareWrappers(JSContext * aJSContext, JSObject * aOldScope, JSObject * aNewScope);

  /**
    * Create a sandbox for evaluating code in isolation using
    * evalInSandboxObject().
    *
    * @param cx A context to use when creating the sandbox object.
    * @param principal The principal (or NULL to use the null principal)
    *                  to use when evaluating code in this sandbox.
    */
  /* [noscript] nsIXPConnectJSObjectHolder createSandbox (in JSContextPtr cx, in nsIPrincipal principal); */
  nsresult CreateSandbox(JSContext * cx, nsIPrincipal principal, nsIXPConnectJSObjectHolder *_retval);

  /**
    * Evaluate script in a sandbox, completely isolated from all
    * other running scripts.
    *
    * @param source The source of the script to evaluate.
    * @param cx The context to use when setting up the evaluation of
    *           the script. The actual evaluation will happen on a new
    *           temporary context.
    * @param sandbox The sandbox object to evaluate the script in.
    * @return The result of the evaluation as a jsval. If the caller
    *         intends to use the return value from this call the caller
    *         is responsible for rooting the jsval before making a call
    *         to this method.
    */
  /* [noscript] JSVal evalInSandboxObject (in AString source, in JSContextPtr cx, in nsIXPConnectJSObjectHolder sandbox); */
  nsresult EvalInSandboxObject(nsAString * source, JSContext * cx, nsIXPConnectJSObjectHolder sandbox, jsval *_retval);

}

