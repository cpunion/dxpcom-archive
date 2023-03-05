/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIScriptableInterfaces.idl
 */

module mozilla.xpcom.nsIScriptableInterfaces;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIInterfaceInfoManager;


/* starting interface:    nsIScriptableInterfaces */
const char[] NS_ISCRIPTABLEINTERFACES_IID_STR = "01c78c65-31da-456b-90bf-da39d09fdcbf";

const nsIID NS_ISCRIPTABLEINTERFACES_IID= 
  {0x01c78c65, 0x31da, 0x456b, 
    [ 0x90, 0xbf, 0xda, 0x39, 0xd0, 0x9f, 0xdc, 0xbf ]};

/**
* Interface used as Components.interfaces (and elsewhere)
* (interesting stuff only reflected into JavaScript)
*/
extern(Windows)
interface nsIScriptableInterfaces : nsISupports {
  static const char[] IID_STR = NS_ISCRIPTABLEINTERFACES_IID_STR;
  static const nsIID IID = NS_ISCRIPTABLEINTERFACES_IID;

  /* [noscript] attribute nsIInterfaceInfoManager manager; */
  nsresult GetManager(nsIInterfaceInfoManager  *aManager);
  nsresult SetManager(nsIInterfaceInfoManager  aManager);

}


/* starting interface:    nsIScriptableInterfacesByID */
const char[] NS_ISCRIPTABLEINTERFACESBYID_IID_STR = "c99cffac-5aed-4267-ad2f-f4a4c9d4a081";

const nsIID NS_ISCRIPTABLEINTERFACESBYID_IID= 
  {0xc99cffac, 0x5aed, 0x4267, 
    [ 0xad, 0x2f, 0xf4, 0xa4, 0xc9, 0xd4, 0xa0, 0x81 ]};

/**
* interface of Components.interfacesByID
* (interesting stuff only reflected into JavaScript)
*/
extern(Windows)
interface nsIScriptableInterfacesByID : nsISupports {
  static const char[] IID_STR = NS_ISCRIPTABLEINTERFACESBYID_IID_STR;
  static const nsIID IID = NS_ISCRIPTABLEINTERFACESBYID_IID;

}

