/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptableInterfaceInfo.idl
 */

module mozilla.xpcom.nsIScriptableInterfaceInfo;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIInterfaceInfo;
public import mozilla.xpcom.nsIVariant;


/* starting interface:    nsIScriptableDataType */
const char[] NS_ISCRIPTABLEDATATYPE_IID_STR = "312e3b94-dc98-4ccc-b2fb-e3406f905cc6";

const nsIID NS_ISCRIPTABLEDATATYPE_IID= 
  {0x312e3b94, 0xdc98, 0x4ccc, 
    [ 0xb2, 0xfb, 0xe3, 0x40, 0x6f, 0x90, 0x5c, 0xc6 ]};

extern(Windows)
interface nsIScriptableDataType : nsISupports {
  static const char[] IID_STR = NS_ISCRIPTABLEDATATYPE_IID_STR;
  static const nsIID IID = NS_ISCRIPTABLEDATATYPE_IID;

  /* readonly attribute PRBool isPointer; */
  nsresult GetIsPointer(PRBool *aIsPointer);

  /* readonly attribute PRBool isUniquePointer; */
  nsresult GetIsUniquePointer(PRBool *aIsUniquePointer);

  /* readonly attribute PRBool isReference; */
  nsresult GetIsReference(PRBool *aIsReference);

  /* readonly attribute PRBool isArithmetic; */
  nsresult GetIsArithmetic(PRBool *aIsArithmetic);

  /* readonly attribute PRBool isInterfacePointer; */
  nsresult GetIsInterfacePointer(PRBool *aIsInterfacePointer);

  /* readonly attribute PRBool isArray; */
  nsresult GetIsArray(PRBool *aIsArray);

  /* readonly attribute PRBool isDependent; */
  nsresult GetIsDependent(PRBool *aIsDependent);

  /**
    * This is one of the constants declared in nsIDataType
    */
  /* readonly attribute PRUint16 dataType; */
  nsresult GetDataType(PRUint16 *aDataType);

}


/* starting interface:    nsIScriptableParamInfo */
const char[] NS_ISCRIPTABLEPARAMINFO_IID_STR = "2309482b-4631-455f-833f-5e4e9ce38589";

const nsIID NS_ISCRIPTABLEPARAMINFO_IID= 
  {0x2309482b, 0x4631, 0x455f, 
    [ 0x83, 0x3f, 0x5e, 0x4e, 0x9c, 0xe3, 0x85, 0x89 ]};

extern(Windows)
interface nsIScriptableParamInfo : nsISupports {
  static const char[] IID_STR = NS_ISCRIPTABLEPARAMINFO_IID_STR;
  static const nsIID IID = NS_ISCRIPTABLEPARAMINFO_IID;

  /* readonly attribute PRBool isIn; */
  nsresult GetIsIn(PRBool *aIsIn);

  /* readonly attribute PRBool isOut; */
  nsresult GetIsOut(PRBool *aIsOut);

  /* readonly attribute PRBool isRetval; */
  nsresult GetIsRetval(PRBool *aIsRetval);

  /* readonly attribute PRBool isShared; */
  nsresult GetIsShared(PRBool *aIsShared);

  /* readonly attribute PRBool isDipper; */
  nsresult GetIsDipper(PRBool *aIsDipper);

  /* readonly attribute nsIScriptableDataType type; */
  nsresult GetType(nsIScriptableDataType  *aType);

  /* [noscript] void getParamInfo ([shared, const, retval] out nsXPTParamInfoPtr aInfo); */
  nsresult GetParamInfo(nsXPTParamInfo * *aInfo);

}


/* starting interface:    nsIScriptableConstant */
const char[] NS_ISCRIPTABLECONSTANT_IID_STR = "0f6c5b09-88b0-43ca-b55c-578f24f3d810";

const nsIID NS_ISCRIPTABLECONSTANT_IID= 
  {0x0f6c5b09, 0x88b0, 0x43ca, 
    [ 0xb5, 0x5c, 0x57, 0x8f, 0x24, 0xf3, 0xd8, 0x10 ]};

extern(Windows)
interface nsIScriptableConstant : nsISupports {
  static const char[] IID_STR = NS_ISCRIPTABLECONSTANT_IID_STR;
  static const nsIID IID = NS_ISCRIPTABLECONSTANT_IID;

  /* readonly attribute string name; */
  nsresult GetName(char * *aName);

  /* readonly attribute nsIScriptableDataType type; */
  nsresult GetType(nsIScriptableDataType  *aType);

  /* readonly attribute nsIVariant value; */
  nsresult GetValue(nsIVariant  *aValue);

}


/* starting interface:    nsIScriptableMethodInfo */
const char[] NS_ISCRIPTABLEMETHODINFO_IID_STR = "9228afa2-187c-4feb-9228-5108e640ca33";

const nsIID NS_ISCRIPTABLEMETHODINFO_IID= 
  {0x9228afa2, 0x187c, 0x4feb, 
    [ 0x92, 0x28, 0x51, 0x08, 0xe6, 0x40, 0xca, 0x33 ]};

extern(Windows)
interface nsIScriptableMethodInfo : nsISupports {
  static const char[] IID_STR = NS_ISCRIPTABLEMETHODINFO_IID_STR;
  static const nsIID IID = NS_ISCRIPTABLEMETHODINFO_IID;

  /* readonly attribute PRBool isGetter; */
  nsresult GetIsGetter(PRBool *aIsGetter);

  /* readonly attribute PRBool isSetter; */
  nsresult GetIsSetter(PRBool *aIsSetter);

  /* readonly attribute PRBool isNotXPCOM; */
  nsresult GetIsNotXPCOM(PRBool *aIsNotXPCOM);

  /* readonly attribute PRBool isConstructor; */
  nsresult GetIsConstructor(PRBool *aIsConstructor);

  /* readonly attribute PRBool isHidden; */
  nsresult GetIsHidden(PRBool *aIsHidden);

  /* readonly attribute string name; */
  nsresult GetName(char * *aName);

  /* readonly attribute PRUint8 paramCount; */
  nsresult GetParamCount(PRUint8 *aParamCount);

  /* nsIScriptableParamInfo getParam (in PRUint8 idx); */
  nsresult GetParam(PRUint8 idx, nsIScriptableParamInfo *_retval);

  /* readonly attribute nsIScriptableParamInfo result; */
  nsresult GetResult(nsIScriptableParamInfo  *aResult);

}


/* starting interface:    nsIScriptableInterfaceInfo */
const char[] NS_ISCRIPTABLEINTERFACEINFO_IID_STR = "f902d5ba-2ef6-444e-8a17-52cb70715c10";

const nsIID NS_ISCRIPTABLEINTERFACEINFO_IID= 
  {0xf902d5ba, 0x2ef6, 0x444e, 
    [ 0x8a, 0x17, 0x52, 0xcb, 0x70, 0x71, 0x5c, 0x10 ]};

extern(Windows)
interface nsIScriptableInterfaceInfo : nsISupports {
  static const char[] IID_STR = NS_ISCRIPTABLEINTERFACEINFO_IID_STR;
  static const nsIID IID = NS_ISCRIPTABLEINTERFACEINFO_IID;

  /* [noscript] attribute nsIInterfaceInfo info; */
  nsresult GetInfo(nsIInterfaceInfo  *aInfo);
  nsresult SetInfo(nsIInterfaceInfo  aInfo);

  /* void init (in nsIIDPtr aIID); */
  nsresult Init(nsIID * aIID);

  /* void initWithName (in string name); */
  nsresult InitWithName(char *name);

  /* readonly attribute string name; */
  nsresult GetName(char * *aName);

  /* readonly attribute nsIIDPtr interfaceID; */
  nsresult GetInterfaceID(nsIID * *aInterfaceID);

  /** 
     * True if this object has been sucessfully set to wrap an interface info.
     */
  /* readonly attribute PRBool isValid; */
  nsresult GetIsValid(PRBool *aIsValid);

  /* readonly attribute PRBool isScriptable; */
  nsresult GetIsScriptable(PRBool *aIsScriptable);

  /* readonly attribute nsIScriptableInterfaceInfo parent; */
  nsresult GetParent(nsIScriptableInterfaceInfo  *aParent);

  /**
    * These include counts for parent (and all ancestors).
    */
  /* readonly attribute PRUint16 methodCount; */
  nsresult GetMethodCount(PRUint16 *aMethodCount);

  /* readonly attribute PRUint16 constantCount; */
  nsresult GetConstantCount(PRUint16 *aConstantCount);

  /**
    * These include methods and constants for parent (and all ancestors).
    */
  /* nsIScriptableMethodInfo getMethodInfo (in PRUint16 index); */
  nsresult GetMethodInfo(PRUint16 index, nsIScriptableMethodInfo *_retval);

  /* nsIScriptableMethodInfo getMethodInfoForName (in string methodName, out PRUint16 index); */
  nsresult GetMethodInfoForName(char *methodName, PRUint16 *index, nsIScriptableMethodInfo *_retval);

  /* nsIScriptableConstant getConstant (in PRUint16 index); */
  nsresult GetConstant(PRUint16 index, nsIScriptableConstant *_retval);

  /**
    * Get the interface information or iid associated with a param of some
    * method in this interface.
    */
  /* nsIScriptableInterfaceInfo getInfoForParam (in PRUint16 methodIndex, in nsIScriptableParamInfo param); */
  nsresult GetInfoForParam(PRUint16 methodIndex, nsIScriptableParamInfo param, nsIScriptableInterfaceInfo *_retval);

  /* nsIIDPtr getIIDForParam (in PRUint16 methodIndex, in nsIScriptableParamInfo param); */
  nsresult GetIIDForParam(PRUint16 methodIndex, nsIScriptableParamInfo param, nsIID * *_retval);

  /* nsIScriptableDataType getTypeForParam (in PRUint16 methodIndex, in nsIScriptableParamInfo param, in PRUint16 dimension); */
  nsresult GetTypeForParam(PRUint16 methodIndex, nsIScriptableParamInfo param, PRUint16 dimension, nsIScriptableDataType *_retval);

  /* PRUint8 getSizeIsArgNumberForParam (in PRUint16 methodIndex, in nsIScriptableParamInfo param, in PRUint16 dimension); */
  nsresult GetSizeIsArgNumberForParam(PRUint16 methodIndex, nsIScriptableParamInfo param, PRUint16 dimension, PRUint8 *_retval);

  /* PRUint8 getLengthIsArgNumberForParam (in PRUint16 methodIndex, in nsIScriptableParamInfo param, in PRUint16 dimension); */
  nsresult GetLengthIsArgNumberForParam(PRUint16 methodIndex, nsIScriptableParamInfo param, PRUint16 dimension, PRUint8 *_retval);

  /* PRUint8 getInterfaceIsArgNumberForParam (in PRUint16 methodIndex, in nsIScriptableParamInfo param); */
  nsresult GetInterfaceIsArgNumberForParam(PRUint16 methodIndex, nsIScriptableParamInfo param, PRUint8 *_retval);

  /* PRBool isIID (in nsIIDPtr IID); */
  nsresult IsIID(nsIID * IID, PRBool *_retval);

  /* readonly attribute PRBool isFunction; */
  nsresult GetIsFunction(PRBool *aIsFunction);

  /* PRBool hasAncestor (in nsIIDPtr iid); */
  nsresult HasAncestor(nsIID * iid, PRBool *_retval);

}

