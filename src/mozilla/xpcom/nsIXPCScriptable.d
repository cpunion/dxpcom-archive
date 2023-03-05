/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXPCScriptable.idl
 */

module mozilla.xpcom.nsIXPCScriptable;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIXPConnect;


/* starting interface:    nsIXPCScriptable */
const char[] NS_IXPCSCRIPTABLE_IID_STR = "9cc0c2e0-f769-4f14-8cd6-2d2d40466f6c";

const nsIID NS_IXPCSCRIPTABLE_IID= 
  {0x9cc0c2e0, 0xf769, 0x4f14, 
    [ 0x8c, 0xd6, 0x2d, 0x2d, 0x40, 0x46, 0x6f, 0x6c ]};

/***************************************************************************/
/***************************************************************************/
extern(Windows)
interface nsIXPCScriptable : nsISupports {
  static const char[] IID_STR = NS_IXPCSCRIPTABLE_IID_STR;
  static const nsIID IID = NS_IXPCSCRIPTABLE_IID;

  /**
 * Note: This is not really an XPCOM interface.  For example, callers must
 * guarantee that they set the *_retval of the various methods that return a
 * boolean to PR_TRUE before making the call.  Implementations may skip writing
 * to *_retval unless they want to return PR_FALSE.
 */
  enum { WANT_PRECREATE = 1U };

  enum { WANT_CREATE = 2U };

  enum { WANT_POSTCREATE = 4U };

  enum { WANT_ADDPROPERTY = 8U };

  enum { WANT_DELPROPERTY = 16U };

  enum { WANT_GETPROPERTY = 32U };

  enum { WANT_SETPROPERTY = 64U };

  enum { WANT_ENUMERATE = 128U };

  enum { WANT_NEWENUMERATE = 256U };

  enum { WANT_NEWRESOLVE = 512U };

  enum { WANT_CONVERT = 1024U };

  enum { WANT_FINALIZE = 2048U };

  enum { WANT_CHECKACCESS = 4096U };

  enum { WANT_CALL = 8192U };

  enum { WANT_CONSTRUCT = 16384U };

  enum { WANT_HASINSTANCE = 32768U };

  enum { WANT_MARK = 65536U };

  enum { USE_JSSTUB_FOR_ADDPROPERTY = 131072U };

  enum { USE_JSSTUB_FOR_DELPROPERTY = 262144U };

  enum { USE_JSSTUB_FOR_SETPROPERTY = 524288U };

  enum { DONT_ENUM_STATIC_PROPS = 1048576U };

  enum { DONT_ENUM_QUERY_INTERFACE = 2097152U };

  enum { DONT_ASK_INSTANCE_FOR_SCRIPTABLE = 4194304U };

  enum { CLASSINFO_INTERFACES_ONLY = 8388608U };

  enum { ALLOW_PROP_MODS_DURING_RESOLVE = 16777216U };

  enum { ALLOW_PROP_MODS_TO_PROTOTYPE = 33554432U };

  enum { DONT_SHARE_PROTOTYPE = 67108864U };

  enum { DONT_REFLECT_INTERFACE_NAMES = 134217728U };

  enum { WANT_EQUALITY = 268435456U };

  enum { WANT_OUTER_OBJECT = 536870912U };

  enum { WANT_INNER_OBJECT = 1073741824U };

  enum { RESERVED = 2147483648U };

  /* readonly attribute string className; */
  nsresult GetClassName(char * *aClassName);

  /* readonly attribute PRUint32 scriptableFlags; */
  nsresult GetScriptableFlags(PRUint32 *aScriptableFlags);

  /* void preCreate (in nsISupports nativeObj, in JSContextPtr cx, in JSObjectPtr globalObj, out JSObjectPtr parentObj); */
  nsresult PreCreate(nsISupports nativeObj, JSContext * cx, JSObject * globalObj, JSObject * *parentObj);

  /* void create (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj); */
  nsresult Create(nsIXPConnectWrappedNative wrapper, JSContext * cx, JSObject * obj);

  /* void postCreate (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj); */
  nsresult PostCreate(nsIXPConnectWrappedNative wrapper, JSContext * cx, JSObject * obj);

  /* PRBool addProperty (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in JSVal id, in JSValPtr vp); */
  nsresult AddProperty(nsIXPConnectWrappedNative wrapper, JSContext * cx, JSObject * obj, jsval id, jsval * vp, PRBool *_retval);

  /* PRBool delProperty (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in JSVal id, in JSValPtr vp); */
  nsresult DelProperty(nsIXPConnectWrappedNative wrapper, JSContext * cx, JSObject * obj, jsval id, jsval * vp, PRBool *_retval);

  /* PRBool getProperty (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in JSVal id, in JSValPtr vp); */
  nsresult GetProperty(nsIXPConnectWrappedNative wrapper, JSContext * cx, JSObject * obj, jsval id, jsval * vp, PRBool *_retval);

  /* PRBool setProperty (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in JSVal id, in JSValPtr vp); */
  nsresult SetProperty(nsIXPConnectWrappedNative wrapper, JSContext * cx, JSObject * obj, jsval id, jsval * vp, PRBool *_retval);

  /* PRBool enumerate (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj); */
  nsresult Enumerate(nsIXPConnectWrappedNative wrapper, JSContext * cx, JSObject * obj, PRBool *_retval);

  /* PRBool newEnumerate (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in PRUint32 enum_op, in JSValPtr statep, out JSID idp); */
  nsresult NewEnumerate(nsIXPConnectWrappedNative wrapper, JSContext * cx, JSObject * obj, PRUint32 enum_op, jsval * statep, jsid *idp, PRBool *_retval);

  /* PRBool newResolve (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in JSVal id, in PRUint32 flags, out JSObjectPtr objp); */
  nsresult NewResolve(nsIXPConnectWrappedNative wrapper, JSContext * cx, JSObject * obj, jsval id, PRUint32 flags, JSObject * *objp, PRBool *_retval);

  /* PRBool convert (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in PRUint32 type, in JSValPtr vp); */
  nsresult Convert(nsIXPConnectWrappedNative wrapper, JSContext * cx, JSObject * obj, PRUint32 type, jsval * vp, PRBool *_retval);

  /* void finalize (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj); */
  nsresult Finalize(nsIXPConnectWrappedNative wrapper, JSContext * cx, JSObject * obj);

  /* PRBool checkAccess (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in JSVal id, in PRUint32 mode, in JSValPtr vp); */
  nsresult CheckAccess(nsIXPConnectWrappedNative wrapper, JSContext * cx, JSObject * obj, jsval id, PRUint32 mode, jsval * vp, PRBool *_retval);

  /* PRBool call (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in PRUint32 argc, in JSValPtr argv, in JSValPtr vp); */
  nsresult Call(nsIXPConnectWrappedNative wrapper, JSContext * cx, JSObject * obj, PRUint32 argc, jsval * argv, jsval * vp, PRBool *_retval);

  /* PRBool construct (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in PRUint32 argc, in JSValPtr argv, in JSValPtr vp); */
  nsresult Construct(nsIXPConnectWrappedNative wrapper, JSContext * cx, JSObject * obj, PRUint32 argc, jsval * argv, jsval * vp, PRBool *_retval);

  /* PRBool hasInstance (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in JSVal val, out PRBool bp); */
  nsresult HasInstance(nsIXPConnectWrappedNative wrapper, JSContext * cx, JSObject * obj, jsval val, PRBool *bp, PRBool *_retval);

  /* PRUint32 mark (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in voidPtr arg); */
  nsresult Mark(nsIXPConnectWrappedNative wrapper, JSContext * cx, JSObject * obj, void * arg, PRUint32 *_retval);

  /* PRBool equality (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj, in JSVal val); */
  nsresult Equality(nsIXPConnectWrappedNative wrapper, JSContext * cx, JSObject * obj, jsval val, PRBool *_retval);

  /* JSObjectPtr outerObject (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj); */
  nsresult OuterObject(nsIXPConnectWrappedNative wrapper, JSContext * cx, JSObject * obj, JSObject * *_retval);

  /* JSObjectPtr innerObject (in nsIXPConnectWrappedNative wrapper, in JSContextPtr cx, in JSObjectPtr obj); */
  nsresult InnerObject(nsIXPConnectWrappedNative wrapper, JSContext * cx, JSObject * obj, JSObject * *_retval);

}

