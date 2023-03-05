/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPCScriptable.idl
 */

module mozilla.dxpcom.nsIXPCScriptableD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIXPCScriptable;


public import mozilla.dxpcom.nsIXPCScriptableD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIXPConnect;
public import mozilla.dxpcom.nsIXPConnectD;


/* starting wrapper class:    nsIXPCScriptable */
/***************************************************************************/
/***************************************************************************/
class nsIXPCScriptableD : public nsISupportsD {

  static const nsIID IID = NS_IXPCSCRIPTABLE_IID;


  alias nsIXPCScriptable InnerType;

  this(nsIXPCScriptable intr){
    super(intr);
    this.inner = intr;
  }

  nsIXPCScriptable opCast() {
    return inner;
  }

  void opAssign(nsIXPCScriptable value) {
    inner = value;
  }

  /**
 * Note: This is not really an XPCOM interface.  For example, callers must
 * guarantee that they set the *_retval of the various methods that return a
 * boolean to PR_TRUE before making the call.  Implementations may skip writing
 * to *_retval unless they want to return PR_FALSE.
 */
  enum { WANT_PRECREATE = 1U }

  enum { WANT_CREATE = 2U }

  enum { WANT_POSTCREATE = 4U }

  enum { WANT_ADDPROPERTY = 8U }

  enum { WANT_DELPROPERTY = 16U }

  enum { WANT_GETPROPERTY = 32U }

  enum { WANT_SETPROPERTY = 64U }

  enum { WANT_ENUMERATE = 128U }

  enum { WANT_NEWENUMERATE = 256U }

  enum { WANT_NEWRESOLVE = 512U }

  enum { WANT_CONVERT = 1024U }

  enum { WANT_FINALIZE = 2048U }

  enum { WANT_CHECKACCESS = 4096U }

  enum { WANT_CALL = 8192U }

  enum { WANT_CONSTRUCT = 16384U }

  enum { WANT_HASINSTANCE = 32768U }

  enum { WANT_MARK = 65536U }

  enum { USE_JSSTUB_FOR_ADDPROPERTY = 131072U }

  enum { USE_JSSTUB_FOR_DELPROPERTY = 262144U }

  enum { USE_JSSTUB_FOR_SETPROPERTY = 524288U }

  enum { DONT_ENUM_STATIC_PROPS = 1048576U }

  enum { DONT_ENUM_QUERY_INTERFACE = 2097152U }

  enum { DONT_ASK_INSTANCE_FOR_SCRIPTABLE = 4194304U }

  enum { CLASSINFO_INTERFACES_ONLY = 8388608U }

  enum { ALLOW_PROP_MODS_DURING_RESOLVE = 16777216U }

  enum { ALLOW_PROP_MODS_TO_PROTOTYPE = 33554432U }

  enum { DONT_SHARE_PROTOTYPE = 67108864U }

  enum { DONT_REFLECT_INTERFACE_NAMES = 134217728U }

  enum { WANT_EQUALITY = 268435456U }

  enum { WANT_OUTER_OBJECT = 536870912U }

  enum { WANT_INNER_OBJECT = 1073741824U }

  enum { RESERVED = 2147483648U }

  /* readonly attribute string className; */
  char* ClassName(){
    char* value;
    nsresult __result = inner.GetClassName(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute PRUint32 scriptableFlags; */
  PRUint32 ScriptableFlags(){
    PRUint32 value;
    nsresult __result = inner.GetScriptableFlags(&value);
    CheckException(__result);
    return value;
  }

  /* void preCreate (in nsISupports nativeObj, in JSContextPtr cx, in JSObjectPtr globalObj, out JSObjectPtr parentObj); */
  void PreCreate(nsISupportsD nativeObj, JSContext * cx, JSObject * globalObj, out JSObject * parentObj){
    nsresult __result = inner.PreCreate(nativeObj ? cast(nsISupports)nativeObj : null, cx, globalObj, &parentObj);
    CheckException(__result);
  }

  /* void create (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj); */
  void Create(nsIXPConnectWrappedNativeD wrapper, JSContext * cx, JSObject * obj){
    nsresult __result = inner.Create(wrapper ? cast(nsIXPConnectWrappedNative)wrapper : null, cx, obj);
    CheckException(__result);
  }

  /* void postCreate (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj); */
  void PostCreate(nsIXPConnectWrappedNativeD wrapper, JSContext * cx, JSObject * obj){
    nsresult __result = inner.PostCreate(wrapper ? cast(nsIXPConnectWrappedNative)wrapper : null, cx, obj);
    CheckException(__result);
  }

  /* PRBool addProperty (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in JSVal id, in JSValPtr vp); */
  PRBool AddProperty(nsIXPConnectWrappedNativeD wrapper, JSContext * cx, JSObject * obj, jsval id, jsval * vp){
    PRBool _retval;
    nsresult __result = inner.AddProperty(wrapper ? cast(nsIXPConnectWrappedNative)wrapper : null, cx, obj, id, vp, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRBool delProperty (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in JSVal id, in JSValPtr vp); */
  PRBool DelProperty(nsIXPConnectWrappedNativeD wrapper, JSContext * cx, JSObject * obj, jsval id, jsval * vp){
    PRBool _retval;
    nsresult __result = inner.DelProperty(wrapper ? cast(nsIXPConnectWrappedNative)wrapper : null, cx, obj, id, vp, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRBool getProperty (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in JSVal id, in JSValPtr vp); */
  PRBool GetProperty(nsIXPConnectWrappedNativeD wrapper, JSContext * cx, JSObject * obj, jsval id, jsval * vp){
    PRBool _retval;
    nsresult __result = inner.GetProperty(wrapper ? cast(nsIXPConnectWrappedNative)wrapper : null, cx, obj, id, vp, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRBool setProperty (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in JSVal id, in JSValPtr vp); */
  PRBool SetProperty(nsIXPConnectWrappedNativeD wrapper, JSContext * cx, JSObject * obj, jsval id, jsval * vp){
    PRBool _retval;
    nsresult __result = inner.SetProperty(wrapper ? cast(nsIXPConnectWrappedNative)wrapper : null, cx, obj, id, vp, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRBool enumerate (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj); */
  PRBool Enumerate(nsIXPConnectWrappedNativeD wrapper, JSContext * cx, JSObject * obj){
    PRBool _retval;
    nsresult __result = inner.Enumerate(wrapper ? cast(nsIXPConnectWrappedNative)wrapper : null, cx, obj, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRBool newEnumerate (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in PRUint32 enum_op, in JSValPtr statep, out JSID idp); */
  PRBool NewEnumerate(nsIXPConnectWrappedNativeD wrapper, JSContext * cx, JSObject * obj, PRUint32 enum_op, jsval * statep, out jsid idp){
    PRBool _retval;
    nsresult __result = inner.NewEnumerate(wrapper ? cast(nsIXPConnectWrappedNative)wrapper : null, cx, obj, enum_op, statep, &idp, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRBool newResolve (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in JSVal id, in PRUint32 flags, out JSObjectPtr objp); */
  PRBool NewResolve(nsIXPConnectWrappedNativeD wrapper, JSContext * cx, JSObject * obj, jsval id, PRUint32 flags, out JSObject * objp){
    PRBool _retval;
    nsresult __result = inner.NewResolve(wrapper ? cast(nsIXPConnectWrappedNative)wrapper : null, cx, obj, id, flags, &objp, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRBool convert (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in PRUint32 type, in JSValPtr vp); */
  PRBool Convert(nsIXPConnectWrappedNativeD wrapper, JSContext * cx, JSObject * obj, PRUint32 type, jsval * vp){
    PRBool _retval;
    nsresult __result = inner.Convert(wrapper ? cast(nsIXPConnectWrappedNative)wrapper : null, cx, obj, type, vp, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void finalize (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj); */
  void Finalize(nsIXPConnectWrappedNativeD wrapper, JSContext * cx, JSObject * obj){
    nsresult __result = inner.Finalize(wrapper ? cast(nsIXPConnectWrappedNative)wrapper : null, cx, obj);
    CheckException(__result);
  }

  /* PRBool checkAccess (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in JSVal id, in PRUint32 mode, in JSValPtr vp); */
  PRBool CheckAccess(nsIXPConnectWrappedNativeD wrapper, JSContext * cx, JSObject * obj, jsval id, PRUint32 mode, jsval * vp){
    PRBool _retval;
    nsresult __result = inner.CheckAccess(wrapper ? cast(nsIXPConnectWrappedNative)wrapper : null, cx, obj, id, mode, vp, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRBool call (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in PRUint32 argc, in JSValPtr argv, in JSValPtr vp); */
  PRBool Call(nsIXPConnectWrappedNativeD wrapper, JSContext * cx, JSObject * obj, PRUint32 argc, jsval * argv, jsval * vp){
    PRBool _retval;
    nsresult __result = inner.Call(wrapper ? cast(nsIXPConnectWrappedNative)wrapper : null, cx, obj, argc, argv, vp, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRBool construct (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in PRUint32 argc, in JSValPtr argv, in JSValPtr vp); */
  PRBool Construct(nsIXPConnectWrappedNativeD wrapper, JSContext * cx, JSObject * obj, PRUint32 argc, jsval * argv, jsval * vp){
    PRBool _retval;
    nsresult __result = inner.Construct(wrapper ? cast(nsIXPConnectWrappedNative)wrapper : null, cx, obj, argc, argv, vp, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRBool hasInstance (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in JSVal val, out PRBool bp); */
  PRBool HasInstance(nsIXPConnectWrappedNativeD wrapper, JSContext * cx, JSObject * obj, jsval val, out PRBool bp){
    PRBool _retval;
    nsresult __result = inner.HasInstance(wrapper ? cast(nsIXPConnectWrappedNative)wrapper : null, cx, obj, val, &bp, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRUint32 mark (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in voidPtr arg); */
  PRUint32 Mark(nsIXPConnectWrappedNativeD wrapper, JSContext * cx, JSObject * obj, void * arg){
    PRUint32 _retval;
    nsresult __result = inner.Mark(wrapper ? cast(nsIXPConnectWrappedNative)wrapper : null, cx, obj, arg, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* PRBool equality (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in JSVal val); */
  PRBool Equality(nsIXPConnectWrappedNativeD wrapper, JSContext * cx, JSObject * obj, jsval val){
    PRBool _retval;
    nsresult __result = inner.Equality(wrapper ? cast(nsIXPConnectWrappedNative)wrapper : null, cx, obj, val, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* JSObjectPtr outerObject (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj); */
  JSObject * OuterObject(nsIXPConnectWrappedNativeD wrapper, JSContext * cx, JSObject * obj){
JSObject * _retval;
    nsresult __result = inner.OuterObject(wrapper ? cast(nsIXPConnectWrappedNative)wrapper : null, cx, obj, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* JSObjectPtr innerObject (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj); */
  JSObject * InnerObject(nsIXPConnectWrappedNativeD wrapper, JSContext * cx, JSObject * obj){
JSObject * _retval;
    nsresult __result = inner.InnerObject(wrapper ? cast(nsIXPConnectWrappedNative)wrapper : null, cx, obj, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIXPCScriptable inner;

}

