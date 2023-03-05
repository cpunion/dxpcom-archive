/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFolderListener.idl
 */

module mozilla.xpcom.nsIFolderListener;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIAtom;

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */

public import mozilla.xpcom.nsIRDFResource; /* forward declaration */

public import mozilla.xpcom.nsIMsgHdr;

alias PRUint32 folderListenerNotifyFlagValue;


/* starting interface:    nsIFolderListener */
const char[] NS_IFOLDERLISTENER_IID_STR = "1c8e6a86-ae35-4c95-8e43-b2e98d6d1574";

const nsIID NS_IFOLDERLISTENER_IID= 
  {0x1c8e6a86, 0xae35, 0x4c95, 
    [ 0x8e, 0x43, 0xb2, 0xe9, 0x8d, 0x6d, 0x15, 0x74 ]};

extern(Windows)
interface nsIFolderListener : nsISupports {
  static const char[] IID_STR = NS_IFOLDERLISTENER_IID_STR;
  static const nsIID IID = NS_IFOLDERLISTENER_IID;

  enum { added = 1U };

  /* void OnItemAdded (in nsIRDFResource parentItem, in nsISupports item); */
  nsresult OnItemAdded(nsIRDFResource parentItem, nsISupports item);

  enum { removed = 2U };

  /* void OnItemRemoved (in nsIRDFResource parentItem, in nsISupports item); */
  nsresult OnItemRemoved(nsIRDFResource parentItem, nsISupports item);

  enum { propertyChanged = 4U };

  /* void OnItemPropertyChanged (in nsIRDFResource item, in nsIAtom property, in string oldValue, in string newValue); */
  nsresult OnItemPropertyChanged(nsIRDFResource item, nsIAtom property, char *oldValue, char *newValue);

  enum { intPropertyChanged = 8U };

  /* void OnItemIntPropertyChanged (in nsIRDFResource item, in nsIAtom property, in long oldValue, in long newValue); */
  nsresult OnItemIntPropertyChanged(nsIRDFResource item, nsIAtom property, PRInt32 oldValue, PRInt32 newValue);

  enum { boolPropertyChanged = 16U };

  /* void OnItemBoolPropertyChanged (in nsIRDFResource item, in nsIAtom property, in boolean oldValue, in boolean newValue); */
  nsresult OnItemBoolPropertyChanged(nsIRDFResource item, nsIAtom property, PRBool oldValue, PRBool newValue);

  enum { unicharPropertyChanged = 32U };

  /* void OnItemUnicharPropertyChanged (in nsIRDFResource item, in nsIAtom property, in wstring oldValue, in wstring newValue); */
  nsresult OnItemUnicharPropertyChanged(nsIRDFResource item, nsIAtom property, PRUnichar *oldValue, PRUnichar *newValue);

  enum { propertyFlagChanged = 64U };

  /* void OnItemPropertyFlagChanged (in nsIMsgDBHdr item, in nsIAtom property, in unsigned long oldFlag, in unsigned long newFlag); */
  nsresult OnItemPropertyFlagChanged(nsIMsgDBHdr item, nsIAtom property, PRUint32 oldFlag, PRUint32 newFlag);

  enum { event = 128U };

  /* void OnItemEvent (in nsIMsgFolder item, in nsIAtom event); */
  nsresult OnItemEvent(nsIMsgFolder item, nsIAtom event);

  enum { all = 4294967295U };

}

