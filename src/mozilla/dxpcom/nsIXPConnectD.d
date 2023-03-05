/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPConnect.idl
 */

module mozilla.dxpcom.nsIXPConnectD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXPConnect;


public import mozilla.dxpcom.nsIXPConnectD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIClassInfo;
public import mozilla.dxpcom.nsIClassInfoD;
public import mozilla.xpcom.xpccomponents;
public import mozilla.dxpcom.xpccomponentsD;
public import mozilla.xpcom.xpcjsid;
public import mozilla.dxpcom.xpcjsidD;
public import mozilla.xpcom.xpcexception;
public import mozilla.dxpcom.xpcexceptionD;
public import mozilla.xpcom.nsIInterfaceInfo;
public import mozilla.dxpcom.nsIInterfaceInfoD;
public import mozilla.xpcom.nsIInterfaceInfoManager;
public import mozilla.dxpcom.nsIInterfaceInfoManagerD;
public import mozilla.xpcom.nsIExceptionService;
public import mozilla.dxpcom.nsIExceptionServiceD;
public import mozilla.xpcom.nsIVariant;
public import mozilla.dxpcom.nsIVariantD;
public import mozilla.xpcom.nsIWeakReference;
public import mozilla.dxpcom.nsIWeakReferenceD;

public import mozilla.xpcom.nsIXPCScriptable;

public import mozilla.dxpcom.nsIXPCScriptableD;

public import mozilla.xpcom.nsIXPConnect;

public import mozilla.dxpcom.nsIXPConnectD;

public import mozilla.xpcom.nsIXPConnect;

import mozilla.dxpcom.nsIXPConnectD;

public import mozilla.xpcom.nsIInterfaceInfo;

public import mozilla.dxpcom.nsIInterfaceInfoD;

public import mozilla.xpcom.nsIXPCSecurityManager;

public import mozilla.dxpcom.nsIXPCSecurityManagerD;

public import mozilla.xpcom.nsIPrincipal;

public import mozilla.dxpcom.nsIPrincipalD;


/* starting wrapper class:    nsIXPConnectJSObjectHolder */
/***************************************************************************/
class nsIXPConnectJSObjectHolderD : public nsISupportsD {

  static const nsIID IID = NS_IXPCONNECTJSOBJECTHOLDER_IID;


  alias nsIXPConnectJSObjectHolder InnerType;

  this(nsIXPConnectJSObjectHolder intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPConnectJSObjectHolder opCast() {
    return inner;
  }

  void opAssign(nsIXPConnectJSObjectHolder value) {
    inner = value;
  }

  /* readonly attribute JSObjectPtr JSObject; */
  JSObject * JSObject_(){
    JSObject * value;
    nsresult __result = inner.GetJSObject(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIXPConnectJSObjectHolder inner;

}


/* starting wrapper class:    nsIXPConnectWrappedNative */
class nsIXPConnectWrappedNativeD : public nsIXPConnectJSObjectHolderD {

  static const nsIID IID = NS_IXPCONNECTWRAPPEDNATIVE_IID;


  alias nsIXPConnectWrappedNative InnerType;

  this(nsIXPConnectWrappedNative intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPConnectWrappedNative opCast() {
    return inner;
  }

  void opAssign(nsIXPConnectWrappedNative value) {
    inner = value;
  }

  /* readonly attribute nsISupports Native; */
  nsISupportsD  Native(){
    nsISupports value;
    nsresult __result = inner.GetNative(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }

  /* readonly attribute JSObjectPtr JSObjectPrototype; */
  JSObject * JSObjectPrototype_(){
    JSObject * value;
    nsresult __result = inner.GetJSObjectPrototype(&value);
    CheckException(__result);
    return value;
  }

  /**
     * These are here as an aid to nsIXPCScriptable implementors
     */
  /* readonly attribute nsIXPConnect XPConnect; */
  nsIXPConnectD  XPConnect(){
    nsIXPConnect value;
    nsresult __result = inner.GetXPConnect(&value);
    CheckException(__result);
    return new nsIXPConnectD(value);
  }

  /* nsIInterfaceInfo FindInterfaceWithMember (in JSVal nameID); */
  nsIInterfaceInfoD  FindInterfaceWithMember(jsval nameID){
    nsIInterfaceInfo _retval;
    nsresult __result = inner.FindInterfaceWithMember(nameID, &_retval);
    CheckException(__result);
    return new nsIInterfaceInfoD(_retval);
  }

  /* nsIInterfaceInfo FindInterfaceWithName (in JSVal nameID); */
  nsIInterfaceInfoD  FindInterfaceWithName(jsval nameID){
    nsIInterfaceInfo _retval;
    nsresult __result = inner.FindInterfaceWithName(nameID, &_retval);
    CheckException(__result);
    return new nsIInterfaceInfoD(_retval);
  }

  /* void debugDump (in short depth); */
  void DebugDump(PRInt16 depth){
    nsresult __result = inner.DebugDump(depth);
    CheckException(__result);
  }

  /* void refreshPrototype (); */
  void RefreshPrototype(){
    nsresult __result = inner.RefreshPrototype();
    CheckException(__result);
  }

  /* voidPtrPtr GetSecurityInfoAddress (); */
  void* * GetSecurityInfoAddress(){
void* * _retval;
    nsresult __result = inner.GetSecurityInfoAddress(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIXPConnectWrappedNative inner;

}


/* starting wrapper class:    nsIXPConnectWrappedJS */
class nsIXPConnectWrappedJSD : public nsIXPConnectJSObjectHolderD {

  static const nsIID IID = NS_IXPCONNECTWRAPPEDJS_IID;


  alias nsIXPConnectWrappedJS InnerType;

  this(nsIXPConnectWrappedJS intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPConnectWrappedJS opCast() {
    return inner;
  }

  void opAssign(nsIXPConnectWrappedJS value) {
    inner = value;
  }

  /* readonly attribute nsIInterfaceInfo InterfaceInfo; */
  nsIInterfaceInfoD  InterfaceInfo(){
    nsIInterfaceInfo value;
    nsresult __result = inner.GetInterfaceInfo(&value);
    CheckException(__result);
    return new nsIInterfaceInfoD(value);
  }

  /* readonly attribute nsIIDPtr InterfaceIID; */
  nsIID * InterfaceIID(){
    nsIID * value;
    nsresult __result = inner.GetInterfaceIID(&value);
    CheckException(__result);
    return value;
  }

  /* void debugDump (in short depth); */
  void DebugDump(PRInt16 depth){
    nsresult __result = inner.DebugDump(depth);
    CheckException(__result);
  }

  /* void aggregatedQueryInterface (in nsIIDRef uuid, [iid_is (uuid), retval] out nsQIResult result); */
  void AggregatedQueryInterface(nsIID * uuid, out void * result){
    nsresult __result = inner.AggregatedQueryInterface(uuid, &result);
    CheckException(__result);
  }

private:
  nsIXPConnectWrappedJS inner;

}


/* starting wrapper class:    nsIXPConnectWrappedJS_MOZILLA_1_8_BRANCH */
class nsIXPConnectWrappedJS_MOZILLA_1_8_BRANCHD : public nsIXPConnectWrappedJSD {

  static const nsIID IID = NS_IXPCONNECTWRAPPEDJS_MOZILLA_1_8_BRANCH_IID;


  alias nsIXPConnectWrappedJS_MOZILLA_1_8_BRANCH InnerType;

  this(nsIXPConnectWrappedJS_MOZILLA_1_8_BRANCH intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPConnectWrappedJS_MOZILLA_1_8_BRANCH opCast() {
    return inner;
  }

  void opAssign(nsIXPConnectWrappedJS_MOZILLA_1_8_BRANCH value) {
    inner = value;
  }

  /* nsIWeakReference GetWeakReference (); */
  nsIWeakReferenceD  GetWeakReference(){
    nsIWeakReference _retval;
    nsresult __result = inner.GetWeakReference(&_retval);
    CheckException(__result);
    return new nsIWeakReferenceD(_retval);
  }

private:
  nsIXPConnectWrappedJS_MOZILLA_1_8_BRANCH inner;

}


/* starting wrapper class:    nsWeakRefToIXPConnectWrappedJS */
/**
 * This interface is a complete hack.  It is used by the DOM code to
 * call QueryReferent on a weak reference to a wrapped JS object without
 * causing reference counting, which would add and remove GC roots
 * (which can't be done in the middle of GC).
 */
class nsWeakRefToIXPConnectWrappedJSD : public nsIXPConnectWrappedJS_MOZILLA_1_8_BRANCHD {

  static const nsIID IID = NS_WEAKREFTOIXPCONNECTWRAPPEDJS_IID;


  alias nsWeakRefToIXPConnectWrappedJS InnerType;

  this(nsWeakRefToIXPConnectWrappedJS intr){
    super(intr);
    this.inner = intr;
  }

  nsWeakRefToIXPConnectWrappedJS opCast() {
    return inner;
  }

  void opAssign(nsWeakRefToIXPConnectWrappedJS value) {
    inner = value;
  }

private:
  nsWeakRefToIXPConnectWrappedJS inner;

}


/* starting wrapper class:    nsIXPCNativeCallContext */
/***************************************************************************/
/**
* This is a somewhat special interface. It is available from the global
* nsIXPConnect object when native methods have been called. It is only relevant
* to the currently called native method on the given JSContext/thread. Holding
* a reference past that time (or while other native methods are being called)
* will not assure access to this data.
*/
class nsIXPCNativeCallContextD : public nsISupportsD {

  static const nsIID IID = NS_IXPCNATIVECALLCONTEXT_IID;


  alias nsIXPCNativeCallContext InnerType;

  this(nsIXPCNativeCallContext intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPCNativeCallContext opCast() {
    return inner;
  }

  void opAssign(nsIXPCNativeCallContext value) {
    inner = value;
  }

  /* readonly attribute nsISupports Callee; */
  nsISupportsD  Callee(){
    nsISupports value;
    nsresult __result = inner.GetCallee(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }

  /* readonly attribute PRUint16 CalleeMethodIndex; */
  PRUint16 CalleeMethodIndex(){
    PRUint16 value;
    nsresult __result = inner.GetCalleeMethodIndex(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIXPConnectWrappedNative CalleeWrapper; */
  nsIXPConnectWrappedNativeD  CalleeWrapper(){
    nsIXPConnectWrappedNative value;
    nsresult __result = inner.GetCalleeWrapper(&value);
    CheckException(__result);
    return new nsIXPConnectWrappedNativeD(value);
  }

  /* readonly attribute JSContextPtr JSContext; */
  JSContext * JSContext_(){
    JSContext * value;
    nsresult __result = inner.GetJSContext(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRUint32 Argc; */
  PRUint32 Argc(){
    PRUint32 value;
    nsresult __result = inner.GetArgc(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute JSValPtr ArgvPtr; */
  jsval * ArgvPtr(){
    jsval * value;
    nsresult __result = inner.GetArgvPtr(&value);
    CheckException(__result);
    return value;
  }

  /**
    * This may be NULL if the JS caller is ignoring the result of the call.
    */
  /* readonly attribute JSValPtr RetValPtr; */
  jsval * RetValPtr(){
    jsval * value;
    nsresult __result = inner.GetRetValPtr(&value);
    CheckException(__result);
    return value;
  }

  /**
    * Set this if JS_SetPendingException has been called. Return NS_OK or
    * else this will be ignored and the native method's nsresult will be
    * converted into an exception and thrown into JS as is the normal case.
    */
  /* attribute PRBool ExceptionWasThrown; */
  PRBool ExceptionWasThrown(){
    PRBool value;
    nsresult __result = inner.GetExceptionWasThrown(&value);
    CheckException(__result);
    return value;
  }
  void ExceptionWasThrown(PRBool aExceptionWasThrown){
    PRBool value;
    nsresult __result = inner.SetExceptionWasThrown(value);
    CheckException(__result);
  }

  /**
    * Set this to indicate that the callee has directly set the return value
    * (using RetValPtr and the JSAPI). If set then xpconnect will not attempt
    * to overwrite it with the converted retval from the C++ callee.
    */
  /* attribute PRBool ReturnValueWasSet; */
  PRBool ReturnValueWasSet(){
    PRBool value;
    nsresult __result = inner.GetReturnValueWasSet(&value);
    CheckException(__result);
    return value;
  }
  void ReturnValueWasSet(PRBool aReturnValueWasSet){
    PRBool value;
    nsresult __result = inner.SetReturnValueWasSet(value);
    CheckException(__result);
  }

  /* readonly attribute nsIInterfaceInfo CalleeInterface; */
  nsIInterfaceInfoD  CalleeInterface(){
    nsIInterfaceInfo value;
    nsresult __result = inner.GetCalleeInterface(&value);
    CheckException(__result);
    return new nsIInterfaceInfoD(value);
  }

  /* readonly attribute nsIClassInfo CalleeClassInfo; */
  nsIClassInfoD  CalleeClassInfo(){
    nsIClassInfo value;
    nsresult __result = inner.GetCalleeClassInfo(&value);
    CheckException(__result);
    return new nsIClassInfoD(value);
  }

private:
  nsIXPCNativeCallContext inner;

}


/* starting wrapper class:    nsIXPCWrappedJSObjectGetter */
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
class nsIXPCWrappedJSObjectGetterD : public nsISupportsD {

  static const nsIID IID = NS_IXPCWRAPPEDJSOBJECTGETTER_IID;


  alias nsIXPCWrappedJSObjectGetter InnerType;

  this(nsIXPCWrappedJSObjectGetter intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPCWrappedJSObjectGetter opCast() {
    return inner;
  }

  void opAssign(nsIXPCWrappedJSObjectGetter value) {
    inner = value;
  }

  /* readonly attribute nsISupports neverCalled; */
  nsISupportsD  NeverCalled(){
    nsISupports value;
    nsresult __result = inner.GetNeverCalled(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }

private:
  nsIXPCWrappedJSObjectGetter inner;

}


/* starting wrapper class:    nsIXPCFunctionThisTranslator */
/***************************************************************************/
class nsIXPCFunctionThisTranslatorD : public nsISupportsD {

  static const nsIID IID = NS_IXPCFUNCTIONTHISTRANSLATOR_IID;


  alias nsIXPCFunctionThisTranslator InnerType;

  this(nsIXPCFunctionThisTranslator intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPCFunctionThisTranslator opCast() {
    return inner;
  }

  void opAssign(nsIXPCFunctionThisTranslator value) {
    inner = value;
  }

  /* nsISupports TranslateThis (in nsISupports aInitialThis, in nsIInterfaceInfo aInterfaceInfo, in PRUint16 aMethodIndex, out PRBool aHideFirstParamFromJS, out nsIIDPtr aIIDOfResult); */
  nsISupportsD  TranslateThis(nsISupportsD aInitialThis, nsIInterfaceInfoD aInterfaceInfo, PRUint16 aMethodIndex, out PRBool aHideFirstParamFromJS, out nsIID * aIIDOfResult){
    nsISupports _retval;
    nsresult __result = inner.TranslateThis(aInitialThis ? cast(nsISupports)aInitialThis : null, aInterfaceInfo ? cast(nsIInterfaceInfo)aInterfaceInfo : null, aMethodIndex, &aHideFirstParamFromJS, &aIIDOfResult, &_retval);
    CheckException(__result);
    return new nsISupportsD(_retval);
  }

private:
  nsIXPCFunctionThisTranslator inner;

}


/* starting wrapper class:    nsIXPConnect */
class nsIXPConnectD : public nsISupportsD {

  static const nsIID IID = NS_IXPCONNECT_IID;


  alias nsIXPConnect InnerType;

  this(nsIXPConnect intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPConnect opCast() {
    return inner;
  }

  void opAssign(nsIXPConnect value) {
    inner = value;
  }

  /***************************************************************************/
  /* void initClasses (in JSContextPtr aJSContext, in JSObjectPtr aGlobalJSObj); */
  void InitClasses(JSContext * aJSContext, JSObject * aGlobalJSObj){
    nsresult __result = inner.InitClasses(aJSContext, aGlobalJSObj);
    CheckException(__result);
  }

  /* nsIXPConnectJSObjectHolder initClassesWithNewWrappedGlobal (in JSContextPtr aJSContext, in nsISupports aCOMObj, in nsIIDRef aIID, in PRUint32 aFlags); */
  nsIXPConnectJSObjectHolderD  InitClassesWithNewWrappedGlobal(JSContext * aJSContext, nsISupportsD aCOMObj, nsIID * aIID, PRUint32 aFlags){
    nsIXPConnectJSObjectHolder _retval;
    nsresult __result = inner.InitClassesWithNewWrappedGlobal(aJSContext, aCOMObj ? cast(nsISupports)aCOMObj : null, aIID, aFlags, &_retval);
    CheckException(__result);
    return new nsIXPConnectJSObjectHolderD(_retval);
  }

  enum { INIT_JS_STANDARD_CLASSES = 1U }

  enum { FLAG_SYSTEM_GLOBAL_OBJECT = 2U }

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
  nsIXPConnectJSObjectHolderD  WrapNative(JSContext * aJSContext, JSObject * aScope, nsISupportsD aCOMObj, nsIID * aIID){
    nsIXPConnectJSObjectHolder _retval;
    nsresult __result = inner.WrapNative(aJSContext, aScope, aCOMObj ? cast(nsISupports)aCOMObj : null, aIID, &_retval);
    CheckException(__result);
    return new nsIXPConnectJSObjectHolderD(_retval);
  }

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
  void WrapJS(JSContext * aJSContext, JSObject * aJSObj, nsIID * aIID, out void * result){
    nsresult __result = inner.WrapJS(aJSContext, aJSObj, aIID, &result);
    CheckException(__result);
  }

  /**
    * This only succeeds if the JSObject is a nsIXPConnectWrappedNative.
    * A new wrapper is *never* constructed.
    */
  /* nsIXPConnectWrappedNative getWrappedNativeOfJSObject (in JSContextPtr aJSContext, in JSObjectPtr aJSObj); */
  nsIXPConnectWrappedNativeD  GetWrappedNativeOfJSObject(JSContext * aJSContext, JSObject * aJSObj){
    nsIXPConnectWrappedNative _retval;
    nsresult __result = inner.GetWrappedNativeOfJSObject(aJSContext, aJSObj, &_retval);
    CheckException(__result);
    return new nsIXPConnectWrappedNativeD(_retval);
  }

  /* void setSecurityManagerForJSContext (in JSContextPtr aJSContext, in nsIXPCSecurityManager aManager, in PRUint16 flags); */
  void SetSecurityManagerForJSContext(JSContext * aJSContext, nsIXPCSecurityManagerD aManager, PRUint16 flags){
    nsresult __result = inner.SetSecurityManagerForJSContext(aJSContext, aManager ? cast(nsIXPCSecurityManager)aManager : null, flags);
    CheckException(__result);
  }

  /* void getSecurityManagerForJSContext (in JSContextPtr aJSContext, out nsIXPCSecurityManager aManager, out PRUint16 flags); */
  void GetSecurityManagerForJSContext(JSContext * aJSContext, out nsIXPCSecurityManagerD aManager, out PRUint16 flags){
    nsIXPCSecurityManager _aManager;
    nsresult __result = inner.GetSecurityManagerForJSContext(aJSContext, &_aManager, &flags);
    CheckException(__result);
    aManager = _aManager ? new nsIXPCSecurityManagerD(_aManager) : null;
  }

  /**
    * The security manager to use when the current JSContext has no security
    * manager.
    */
  /* void setDefaultSecurityManager (in nsIXPCSecurityManager aManager, in PRUint16 flags); */
  void SetDefaultSecurityManager(nsIXPCSecurityManagerD aManager, PRUint16 flags){
    nsresult __result = inner.SetDefaultSecurityManager(aManager ? cast(nsIXPCSecurityManager)aManager : null, flags);
    CheckException(__result);
  }

  /* void getDefaultSecurityManager (out nsIXPCSecurityManager aManager, out PRUint16 flags); */
  void GetDefaultSecurityManager(out nsIXPCSecurityManagerD aManager, out PRUint16 flags){
    nsIXPCSecurityManager _aManager;
    nsresult __result = inner.GetDefaultSecurityManager(&_aManager, &flags);
    CheckException(__result);
    aManager = _aManager ? new nsIXPCSecurityManagerD(_aManager) : null;
  }

  /* nsIStackFrame createStackFrameLocation (in PRUint32 aLanguage, in string aFilename, in string aFunctionName, in PRInt32 aLineNumber, in nsIStackFrame aCaller); */
  nsIStackFrameD  CreateStackFrameLocation(PRUint32 aLanguage, char*aFilename, char*aFunctionName, PRInt32 aLineNumber, nsIStackFrameD aCaller){
    nsIStackFrame _retval;
    nsresult __result = inner.CreateStackFrameLocation(aLanguage, aFilename, aFunctionName, aLineNumber, aCaller ? cast(nsIStackFrame)aCaller : null, &_retval);
    CheckException(__result);
    return new nsIStackFrameD(_retval);
  }

  /**
    * XPConnect builds internal objects that parallel, and are one-to-one with,
    * the JSContexts in the JSRuntime. It builds these objects as needed.
    * This method tells XPConnect to resynchronize its representations with the
    * list of JSContexts currently 'alive' in the JSRuntime. This allows it
    * to cleanup any representations of JSContexts that are no longer valid.
    */
  /* void syncJSContexts (); */
  void SyncJSContexts(){
    nsresult __result = inner.SyncJSContexts();
    CheckException(__result);
  }

  /* readonly attribute nsIStackFrame CurrentJSStack; */
  nsIStackFrameD  CurrentJSStack(){
    nsIStackFrame value;
    nsresult __result = inner.GetCurrentJSStack(&value);
    CheckException(__result);
    return new nsIStackFrameD(value);
  }

  /* readonly attribute nsIXPCNativeCallContext CurrentNativeCallContext; */
  nsIXPCNativeCallContextD  CurrentNativeCallContext(){
    nsIXPCNativeCallContext value;
    nsresult __result = inner.GetCurrentNativeCallContext(&value);
    CheckException(__result);
    return new nsIXPCNativeCallContextD(value);
  }

  /* attribute nsIException PendingException; */
  nsIExceptionD  PendingException(){
    nsIException value;
    nsresult __result = inner.GetPendingException(&value);
    CheckException(__result);
    return new nsIExceptionD(value);
  }
  void PendingException(nsIExceptionD  aPendingException){
    nsIException value;
    nsresult __result = inner.SetPendingException(value);
    CheckException(__result);
  }

  /* void debugDump (in short depth); */
  void DebugDump(PRInt16 depth){
    nsresult __result = inner.DebugDump(depth);
    CheckException(__result);
  }

  /* void debugDumpObject (in nsISupports aCOMObj, in short depth); */
  void DebugDumpObject(nsISupportsD aCOMObj, PRInt16 depth){
    nsresult __result = inner.DebugDumpObject(aCOMObj ? cast(nsISupports)aCOMObj : null, depth);
    CheckException(__result);
  }

  /* void debugDumpJSStack (in PRBool showArgs, in PRBool showLocals, in PRBool showThisProps); */
  void DebugDumpJSStack(PRBool showArgs, PRBool showLocals, PRBool showThisProps){
    nsresult __result = inner.DebugDumpJSStack(showArgs, showLocals, showThisProps);
    CheckException(__result);
  }

  /* void debugDumpEvalInJSStackFrame (in PRUint32 aFrameNumber, in string aSourceText); */
  void DebugDumpEvalInJSStackFrame(PRUint32 aFrameNumber, char*aSourceText){
    nsresult __result = inner.DebugDumpEvalInJSStackFrame(aFrameNumber, aSourceText);
    CheckException(__result);
  }

  /**
    * Set fallback JSContext to use when xpconnect can't find an appropriate
    * context to use to execute JavaScript.
    *
    * NOTE: This method is DEPRECATED. 
    *       Use nsIThreadJSContextStack::safeJSContext instead.
    */
  /* void setSafeJSContextForCurrentThread (in JSContextPtr cx); */
  void SetSafeJSContextForCurrentThread(JSContext * cx){
    nsresult __result = inner.SetSafeJSContextForCurrentThread(cx);
    CheckException(__result);
  }

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
  void WrapJSAggregatedToNative(nsISupportsD aOuter, JSContext * aJSContext, JSObject * aJSObj, nsIID * aIID, out void * result){
    nsresult __result = inner.WrapJSAggregatedToNative(aOuter ? cast(nsISupports)aOuter : null, aJSContext, aJSObj, aIID, &result);
    CheckException(__result);
  }

  /**
    * This only succeeds if the native object is already wrapped by xpconnect.
    * A new wrapper is *never* constructed.
    */
  /* nsIXPConnectWrappedNative getWrappedNativeOfNativeObject (in JSContextPtr aJSContext, in JSObjectPtr aScope, in nsISupports aCOMObj, in nsIIDRef aIID); */
  nsIXPConnectWrappedNativeD  GetWrappedNativeOfNativeObject(JSContext * aJSContext, JSObject * aScope, nsISupportsD aCOMObj, nsIID * aIID){
    nsIXPConnectWrappedNative _retval;
    nsresult __result = inner.GetWrappedNativeOfNativeObject(aJSContext, aScope, aCOMObj ? cast(nsISupports)aCOMObj : null, aIID, &_retval);
    CheckException(__result);
    return new nsIXPConnectWrappedNativeD(_retval);
  }

  /* nsIXPCFunctionThisTranslator getFunctionThisTranslator (in nsIIDRef aIID); */
  nsIXPCFunctionThisTranslatorD  GetFunctionThisTranslator(nsIID * aIID){
    nsIXPCFunctionThisTranslator _retval;
    nsresult __result = inner.GetFunctionThisTranslator(aIID, &_retval);
    CheckException(__result);
    return new nsIXPCFunctionThisTranslatorD(_retval);
  }

  /* nsIXPCFunctionThisTranslator setFunctionThisTranslator (in nsIIDRef aIID, in nsIXPCFunctionThisTranslator aTranslator); */
  nsIXPCFunctionThisTranslatorD  SetFunctionThisTranslator(nsIID * aIID, nsIXPCFunctionThisTranslatorD aTranslator){
    nsIXPCFunctionThisTranslator _retval;
    nsresult __result = inner.SetFunctionThisTranslator(aIID, aTranslator ? cast(nsIXPCFunctionThisTranslator)aTranslator : null, &_retval);
    CheckException(__result);
    return new nsIXPCFunctionThisTranslatorD(_retval);
  }

  /* nsIXPConnectJSObjectHolder reparentWrappedNativeIfFound (in JSContextPtr aJSContext, in JSObjectPtr aScope, in JSObjectPtr aNewParent, in nsISupports aCOMObj); */
  nsIXPConnectJSObjectHolderD  ReparentWrappedNativeIfFound(JSContext * aJSContext, JSObject * aScope, JSObject * aNewParent, nsISupportsD aCOMObj){
    nsIXPConnectJSObjectHolder _retval;
    nsresult __result = inner.ReparentWrappedNativeIfFound(aJSContext, aScope, aNewParent, aCOMObj ? cast(nsISupports)aCOMObj : null, &_retval);
    CheckException(__result);
    return new nsIXPConnectJSObjectHolderD(_retval);
  }

  /* void clearAllWrappedNativeSecurityPolicies (); */
  void ClearAllWrappedNativeSecurityPolicies(){
    nsresult __result = inner.ClearAllWrappedNativeSecurityPolicies();
    CheckException(__result);
  }

  /* nsIXPConnectJSObjectHolder getWrappedNativePrototype (in JSContextPtr aJSContext, in JSObjectPtr aScope, in nsIClassInfo aClassInfo); */
  nsIXPConnectJSObjectHolderD  GetWrappedNativePrototype(JSContext * aJSContext, JSObject * aScope, nsIClassInfoD aClassInfo){
    nsIXPConnectJSObjectHolder _retval;
    nsresult __result = inner.GetWrappedNativePrototype(aJSContext, aScope, aClassInfo ? cast(nsIClassInfo)aClassInfo : null, &_retval);
    CheckException(__result);
    return new nsIXPConnectJSObjectHolderD(_retval);
  }

  /* attribute PRBool collectGarbageOnMainThreadOnly; */
  PRBool CollectGarbageOnMainThreadOnly(){
    PRBool value;
    nsresult __result = inner.GetCollectGarbageOnMainThreadOnly(&value);
    CheckException(__result);
    return value;
  }
  void CollectGarbageOnMainThreadOnly(PRBool aCollectGarbageOnMainThreadOnly){
    PRBool value;
    nsresult __result = inner.SetCollectGarbageOnMainThreadOnly(value);
    CheckException(__result);
  }

  /* attribute PRBool deferReleasesUntilAfterGarbageCollection; */
  PRBool DeferReleasesUntilAfterGarbageCollection(){
    PRBool value;
    nsresult __result = inner.GetDeferReleasesUntilAfterGarbageCollection(&value);
    CheckException(__result);
    return value;
  }
  void DeferReleasesUntilAfterGarbageCollection(PRBool aDeferReleasesUntilAfterGarbageCollection){
    PRBool value;
    nsresult __result = inner.SetDeferReleasesUntilAfterGarbageCollection(value);
    CheckException(__result);
  }

  /* void releaseJSContext (in JSContextPtr aJSContext, in PRBool noGC); */
  void ReleaseJSContext(JSContext * aJSContext, PRBool noGC){
    nsresult __result = inner.ReleaseJSContext(aJSContext, noGC);
    CheckException(__result);
  }

  /* JSVal variantToJS (in JSContextPtr ctx, in JSObjectPtr scope, in nsIVariant value); */
  jsval VariantToJS(JSContext * ctx, JSObject * scope_, nsIVariantD value){
jsval _retval;
    nsresult __result = inner.VariantToJS(ctx, scope_, value ? cast(nsIVariant)value : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIVariant JSToVariant (in JSContextPtr ctx, in JSVal value); */
  nsIVariantD  JSToVariant(JSContext * ctx, jsval value){
    nsIVariant _retval;
    nsresult __result = inner.JSToVariant(ctx, value, &_retval);
    CheckException(__result);
    return new nsIVariantD(_retval);
  }

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
  void FlagSystemFilenamePrefix(char*aFilenamePrefix){
    nsresult __result = inner.FlagSystemFilenamePrefix(aFilenamePrefix);
    CheckException(__result);
  }

  /**
     * Restore an old prototype for wrapped natives of type
     * aClassInfo. This should be used only when restoring an old
     * scope into a state close to where it was prior to
     * being reinitialized.
     */
  /* void restoreWrappedNativePrototype (in JSContextPtr aJSContext, in JSObjectPtr aScope, in nsIClassInfo aClassInfo, in nsIXPConnectJSObjectHolder aPrototype); */
  void RestoreWrappedNativePrototype(JSContext * aJSContext, JSObject * aScope, nsIClassInfoD aClassInfo, nsIXPConnectJSObjectHolderD aPrototype){
    nsresult __result = inner.RestoreWrappedNativePrototype(aJSContext, aScope, aClassInfo ? cast(nsIClassInfo)aClassInfo : null, aPrototype ? cast(nsIXPConnectJSObjectHolder)aPrototype : null);
    CheckException(__result);
  }

private:
  nsIXPConnect inner;

}


/* starting wrapper class:    nsIXPConnect_MOZILLA_1_8_BRANCH */
class nsIXPConnect_MOZILLA_1_8_BRANCHD : public nsIXPConnectD {

  static const nsIID IID = NS_IXPCONNECT_MOZILLA_1_8_BRANCH_IID;


  alias nsIXPConnect_MOZILLA_1_8_BRANCH InnerType;

  this(nsIXPConnect_MOZILLA_1_8_BRANCH intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPConnect_MOZILLA_1_8_BRANCH opCast() {
    return inner;
  }

  void opAssign(nsIXPConnect_MOZILLA_1_8_BRANCH value) {
    inner = value;
  }

  /* void reparentScopeAwareWrappers (in JSContextPtr aJSContext, in JSObjectPtr aOldScope, in JSObjectPtr aNewScope); */
  void ReparentScopeAwareWrappers(JSContext * aJSContext, JSObject * aOldScope, JSObject * aNewScope){
    nsresult __result = inner.ReparentScopeAwareWrappers(aJSContext, aOldScope, aNewScope);
    CheckException(__result);
  }

  /**
    * Create a sandbox for evaluating code in isolation using
    * evalInSandboxObject().
    *
    * @param cx A context to use when creating the sandbox object.
    * @param principal The principal (or NULL to use the null principal)
    *                  to use when evaluating code in this sandbox.
    */
  /* [noscript] nsIXPConnectJSObjectHolder createSandbox (in JSContextPtr cx, in nsIPrincipal principal); */
  nsIXPConnectJSObjectHolderD  CreateSandbox(JSContext * cx, nsIPrincipalD principal){
    nsIXPConnectJSObjectHolder _retval;
    nsresult __result = inner.CreateSandbox(cx, principal ? cast(nsIPrincipal)principal : null, &_retval);
    CheckException(__result);
    return new nsIXPConnectJSObjectHolderD(_retval);
  }

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
  jsval EvalInSandboxObject(wchar[] source, JSContext * cx, nsIXPConnectJSObjectHolderD sandbox){
    scope auto _source = new AString(source);
jsval _retval;
    nsresult __result = inner.EvalInSandboxObject(cast(nsAString*)_source, cx, sandbox ? cast(nsIXPConnectJSObjectHolder)sandbox : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIXPConnect_MOZILLA_1_8_BRANCH inner;

}

