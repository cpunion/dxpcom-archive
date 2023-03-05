/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIInterfaceInfoManager.idl
 */

module mozilla.xpcom.nsIInterfaceInfoManager;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIInterfaceInfo;
public import mozilla.xpcom.nsIEnumerator;
public import mozilla.xpcom.nsISimpleEnumerator;


/* starting interface:    nsIInterfaceInfoManager */
const char[] NS_IINTERFACEINFOMANAGER_IID_STR = "8b161900-be2b-11d2-9831-006008962422";

const nsIID NS_IINTERFACEINFOMANAGER_IID= 
  {0x8b161900, 0xbe2b, 0x11d2, 
    [ 0x98, 0x31, 0x00, 0x60, 0x08, 0x96, 0x24, 0x22 ]};

extern(Windows)
interface nsIInterfaceInfoManager : nsISupports {
  static const char[] IID_STR = NS_IINTERFACEINFOMANAGER_IID_STR;
  static const nsIID IID = NS_IINTERFACEINFOMANAGER_IID;

  /* nsIInterfaceInfo getInfoForIID (in nsIIDPtr iid); */
  nsresult GetInfoForIID(nsIID * iid, nsIInterfaceInfo *_retval);

  /* nsIInterfaceInfo getInfoForName (in string name); */
  nsresult GetInfoForName(char *name, nsIInterfaceInfo *_retval);

  /* nsIIDPtr getIIDForName (in string name); */
  nsresult GetIIDForName(char *name, nsIID * *_retval);

  /* string getNameForIID (in nsIIDPtr iid); */
  nsresult GetNameForIID(nsIID * iid, char **_retval);

  /* nsIEnumerator enumerateInterfaces (); */
  nsresult EnumerateInterfaces(nsIEnumerator *_retval);

  /* void autoRegisterInterfaces (); */
  nsresult AutoRegisterInterfaces();

  /* nsIEnumerator enumerateInterfacesWhoseNamesStartWith (in string prefix); */
  nsresult EnumerateInterfacesWhoseNamesStartWith(char *prefix, nsIEnumerator *_retval);

}


/* starting interface:    nsIInterfaceInfoSuperManager */
const char[] NS_IINTERFACEINFOSUPERMANAGER_IID_STR = "0ee22850-bc6a-11d5-9134-0010a4e73d9a";

const nsIID NS_IINTERFACEINFOSUPERMANAGER_IID= 
  {0x0ee22850, 0xbc6a, 0x11d5, 
    [ 0x91, 0x34, 0x00, 0x10, 0xa4, 0xe7, 0x3d, 0x9a ]};

extern(Windows)
interface nsIInterfaceInfoSuperManager : nsIInterfaceInfoManager {
  static const char[] IID_STR = NS_IINTERFACEINFOSUPERMANAGER_IID_STR;
  static const nsIID IID = NS_IINTERFACEINFOSUPERMANAGER_IID;

  /* void addAdditionalManager (in nsIInterfaceInfoManager manager); */
  nsresult AddAdditionalManager(nsIInterfaceInfoManager manager);

  /* void removeAdditionalManager (in nsIInterfaceInfoManager manager); */
  nsresult RemoveAdditionalManager(nsIInterfaceInfoManager manager);

  /* PRBool hasAdditionalManagers (); */
  nsresult HasAdditionalManagers(PRBool *_retval);

  /* nsISimpleEnumerator enumerateAdditionalManagers (); */
  nsresult EnumerateAdditionalManagers(nsISimpleEnumerator *_retval);

}

