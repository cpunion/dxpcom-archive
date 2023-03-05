/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIGenericInterfaceInfoSet.idl
 */

module mozilla.xpcom.nsIGenericInterfaceInfoSet;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIInterfaceInfo;
public import mozilla.xpcom.nsIInterfaceInfoManager;


/* starting interface:    nsIGenericInterfaceInfo */
const char[] NS_IGENERICINTERFACEINFO_IID_STR = "8344a200-18ed-4538-8d44-e50b5156b564";

const nsIID NS_IGENERICINTERFACEINFO_IID= 
  {0x8344a200, 0x18ed, 0x4538, 
    [ 0x8d, 0x44, 0xe5, 0x0b, 0x51, 0x56, 0xb5, 0x64 ]};

extern(Windows)
interface nsIGenericInterfaceInfo : nsIInterfaceInfo {
  static const char[] IID_STR = NS_IGENERICINTERFACEINFO_IID_STR;
  static const nsIID IID = NS_IGENERICINTERFACEINFO_IID;

  /**
    * All members except params* and result* copied
    */
  /* PRUint16 appendMethod (in XPTMethodDescriptorPtr aMethod); */
  nsresult AppendMethod(XPTMethodDescriptor * aMethod, PRUint16 *_retval);

  /**
    * All members copied
    */
  /* PRUint16 appendConst (in XPTConstDescriptorPtr aConst); */
  nsresult AppendConst(XPTConstDescriptor * aConst, PRUint16 *_retval);

}


/* starting interface:    nsIGenericInterfaceInfoSet */
const char[] NS_IGENERICINTERFACEINFOSET_IID_STR = "8cc674ee-52ba-45fa-b897-bb88d35eaa91";

const nsIID NS_IGENERICINTERFACEINFOSET_IID= 
  {0x8cc674ee, 0x52ba, 0x45fa, 
    [ 0xb8, 0x97, 0xbb, 0x88, 0xd3, 0x5e, 0xaa, 0x91 ]};

extern(Windows)
interface nsIGenericInterfaceInfoSet : nsIInterfaceInfoManager {
  static const char[] IID_STR = NS_IGENERICINTERFACEINFOSET_IID_STR;
  static const nsIID IID = NS_IGENERICINTERFACEINFOSET_IID;

  /**
    * Methods include pointers to param arrays allocated here.
    */
  /* XPTParamDescriptorPtr allocateParamArray (in PRUint16 aCount); */
  nsresult AllocateParamArray(PRUint16 aCount, XPTParamDescriptor * *_retval);

  /**
    * Used for type that is in an array.
    */
  /* XPTTypeDescriptorPtr allocateAdditionalType (out PRUint16 aIndex); */
  nsresult AllocateAdditionalType(PRUint16 *aIndex, XPTTypeDescriptor * *_retval);

  /* PRUint16 createAndAppendInterface (in string aName, in nsIIDRef aIID, in PRUint16 aParent, in PRUint8 aFlags, out nsIGenericInterfaceInfo aInfo); */
  nsresult CreateAndAppendInterface(char *aName, nsIID * aIID, PRUint16 aParent, PRUint8 aFlags, nsIGenericInterfaceInfo *aInfo, PRUint16 *_retval);

  /* PRUint16 appendExternalInterface (in nsIInterfaceInfo aInfo); */
  nsresult AppendExternalInterface(nsIInterfaceInfo aInfo, PRUint16 *_retval);

  /* PRUint16 indexOf (in nsIIDRef aIID); */
  nsresult IndexOf(nsIID * aIID, PRUint16 *_retval);

  /* PRUint16 indexOfByName (in string aName); */
  nsresult IndexOfByName(char *aName, PRUint16 *_retval);

  /* nsIInterfaceInfo interfaceInfoAt (in PRUint16 aIndex); */
  nsresult InterfaceInfoAt(PRUint16 aIndex, nsIInterfaceInfo *_retval);

}

