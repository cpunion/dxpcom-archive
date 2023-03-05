/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIInterfaceInfo.idl
 */

module mozilla.xpcom.nsIInterfaceInfo;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIInterfaceInfo */
const char[] NS_IINTERFACEINFO_IID_STR = "215dbe04-94a7-11d2-ba58-00805f8a5dd7";

const nsIID NS_IINTERFACEINFO_IID= 
  {0x215dbe04, 0x94a7, 0x11d2, 
    [ 0xba, 0x58, 0x00, 0x80, 0x5f, 0x8a, 0x5d, 0xd7 ]};

extern(Windows)
interface nsIInterfaceInfo : nsISupports {
  static const char[] IID_STR = NS_IINTERFACEINFO_IID_STR;
  static const nsIID IID = NS_IINTERFACEINFO_IID;

  /* readonly attribute string name; */
  nsresult GetName(char * *aName);

  /* readonly attribute nsIIDPtr InterfaceIID; */
  nsresult GetInterfaceIID(nsIID * *aInterfaceIID);

  /* PRBool isScriptable (); */
  nsresult IsScriptable(PRBool *_retval);

  /* readonly attribute nsIInterfaceInfo parent; */
  nsresult GetParent(nsIInterfaceInfo  *aParent);

  /**
    * These include counts for parent (and all ancestors).
    */
  /* readonly attribute PRUint16 methodCount; */
  nsresult GetMethodCount(PRUint16 *aMethodCount);

  /* readonly attribute PRUint16 constantCount; */
  nsresult GetConstantCount(PRUint16 *aConstantCount);

  /**
    * These include methods and constants for parent (and all ancestors).
    * 
    * These do *not* make copies ***explicit bending of XPCOM rules***.
    */
  /* void getMethodInfo (in PRUint16 index, [shared, retval] out nsXPTMethodInfoPtr info); */
  nsresult GetMethodInfo(PRUint16 index, nsXPTMethodInfo * *info);

  /* void getMethodInfoForName (in string methodName, out PRUint16 index, [shared, retval] out nsXPTMethodInfoPtr info); */
  nsresult GetMethodInfoForName(char *methodName, PRUint16 *index, nsXPTMethodInfo * *info);

  /* void getConstant (in PRUint16 index, [shared, retval] out nsXPTConstantPtr constant); */
  nsresult GetConstant(PRUint16 index, nsXPTConstant * *constant);

  /**
    * Get the interface information or iid associated with a param of some
    * method in this interface.
    */
  /* nsIInterfaceInfo getInfoForParam (in PRUint16 methodIndex, [const] in nsXPTParamInfoPtr param); */
  nsresult GetInfoForParam(PRUint16 methodIndex, nsXPTParamInfo * param, nsIInterfaceInfo *_retval);

  /* nsIIDPtr getIIDForParam (in PRUint16 methodIndex, [const] in nsXPTParamInfoPtr param); */
  nsresult GetIIDForParam(PRUint16 methodIndex, nsXPTParamInfo * param, nsIID * *_retval);

  /**
    * These do *not* make copies ***explicit bending of XPCOM rules***.
    */
  /* nsXPTType getTypeForParam (in PRUint16 methodIndex, [const] in nsXPTParamInfoPtr param, in PRUint16 dimension); */
  nsresult GetTypeForParam(PRUint16 methodIndex, nsXPTParamInfo * param, PRUint16 dimension, nsXPTType *_retval);

  /* PRUint8 getSizeIsArgNumberForParam (in PRUint16 methodIndex, [const] in nsXPTParamInfoPtr param, in PRUint16 dimension); */
  nsresult GetSizeIsArgNumberForParam(PRUint16 methodIndex, nsXPTParamInfo * param, PRUint16 dimension, PRUint8 *_retval);

  /* PRUint8 getLengthIsArgNumberForParam (in PRUint16 methodIndex, [const] in nsXPTParamInfoPtr param, in PRUint16 dimension); */
  nsresult GetLengthIsArgNumberForParam(PRUint16 methodIndex, nsXPTParamInfo * param, PRUint16 dimension, PRUint8 *_retval);

  /* PRUint8 getInterfaceIsArgNumberForParam (in PRUint16 methodIndex, [const] in nsXPTParamInfoPtr param); */
  nsresult GetInterfaceIsArgNumberForParam(PRUint16 methodIndex, nsXPTParamInfo * param, PRUint8 *_retval);

  /* PRBool isIID (in nsIIDPtr IID); */
  nsresult IsIID(nsIID * IID, PRBool *_retval);

  /* void getNameShared ([shared, retval] out string name); */
  nsresult GetNameShared(char **name);

  /* void getIIDShared ([shared, retval] out nsIIDPtrShared iid); */
  nsresult GetIIDShared(nsIID * *iid);

  /* PRBool isFunction (); */
  nsresult IsFunction(PRBool *_retval);

  /* PRBool hasAncestor (in nsIIDPtr iid); */
  nsresult HasAncestor(nsIID * iid, PRBool *_retval);

  /* [notxpcom] nsresult getIIDForParamNoAlloc (in PRUint16 methodIndex, [const] in nsXPTParamInfoPtr param, out nsIID iid); */
  nsresult GetIIDForParamNoAlloc(PRUint16 methodIndex, nsXPTParamInfo * param, nsIID *iid);

}

