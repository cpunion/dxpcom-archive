/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIFolderListener.idl
 */

module mozilla.dxpcom.nsIFolderListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIFolderListener;


public import mozilla.dxpcom.nsIFolderListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIAtom;
public import mozilla.dxpcom.nsIAtomD;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIRDFResource;

public import mozilla.dxpcom.nsIRDFResourceD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;


/* starting wrapper class:    nsIFolderListener */
class nsIFolderListenerD : public nsISupportsD {

  static const nsIID IID = NS_IFOLDERLISTENER_IID;


  alias nsIFolderListener InnerType;

  this(nsIFolderListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIFolderListener opCast() {
    return inner;
  }

  void opAssign(nsIFolderListener value) {
    inner = value;
  }

  enum { added = 1U }

  /* void OnItemAdded (in nsIRDFResource parentItem, in nsISupports item); */
  void OnItemAdded(nsIRDFResourceD parentItem, nsISupportsD item){
    nsresult __result = inner.OnItemAdded(parentItem ? cast(nsIRDFResource)parentItem : null, item ? cast(nsISupports)item : null);
    CheckException(__result);
  }

  enum { removed = 2U }

  /* void OnItemRemoved (in nsIRDFResource parentItem, in nsISupports item); */
  void OnItemRemoved(nsIRDFResourceD parentItem, nsISupportsD item){
    nsresult __result = inner.OnItemRemoved(parentItem ? cast(nsIRDFResource)parentItem : null, item ? cast(nsISupports)item : null);
    CheckException(__result);
  }

  enum { propertyChanged = 4U }

  /* void OnItemPropertyChanged (in nsIRDFResource item, in nsIAtom property, in string oldValue, in string newValue); */
  void OnItemPropertyChanged(nsIRDFResourceD item, nsIAtomD property, char*oldValue, char*newValue){
    nsresult __result = inner.OnItemPropertyChanged(item ? cast(nsIRDFResource)item : null, property ? cast(nsIAtom)property : null, oldValue, newValue);
    CheckException(__result);
  }

  enum { intPropertyChanged = 8U }

  /* void OnItemIntPropertyChanged (in nsIRDFResource item, in nsIAtom property, in long oldValue, in long newValue); */
  void OnItemIntPropertyChanged(nsIRDFResourceD item, nsIAtomD property, PRInt32 oldValue, PRInt32 newValue){
    nsresult __result = inner.OnItemIntPropertyChanged(item ? cast(nsIRDFResource)item : null, property ? cast(nsIAtom)property : null, oldValue, newValue);
    CheckException(__result);
  }

  enum { boolPropertyChanged = 16U }

  /* void OnItemBoolPropertyChanged (in nsIRDFResource item, in nsIAtom property, in boolean oldValue, in boolean newValue); */
  void OnItemBoolPropertyChanged(nsIRDFResourceD item, nsIAtomD property, PRBool oldValue, PRBool newValue){
    nsresult __result = inner.OnItemBoolPropertyChanged(item ? cast(nsIRDFResource)item : null, property ? cast(nsIAtom)property : null, oldValue, newValue);
    CheckException(__result);
  }

  enum { unicharPropertyChanged = 32U }

  /* void OnItemUnicharPropertyChanged (in nsIRDFResource item, in nsIAtom property, in wstring oldValue, in wstring newValue); */
  void OnItemUnicharPropertyChanged(nsIRDFResourceD item, nsIAtomD property, PRUnichar*oldValue, PRUnichar*newValue){
    nsresult __result = inner.OnItemUnicharPropertyChanged(item ? cast(nsIRDFResource)item : null, property ? cast(nsIAtom)property : null, oldValue, newValue);
    CheckException(__result);
  }

  enum { propertyFlagChanged = 64U }

  /* void OnItemPropertyFlagChanged (in nsIMsgDBHdr item, in nsIAtom property, in unsigned long oldFlag, in unsigned long newFlag); */
  void OnItemPropertyFlagChanged(nsIMsgDBHdrD item, nsIAtomD property, PRUint32 oldFlag, PRUint32 newFlag){
    nsresult __result = inner.OnItemPropertyFlagChanged(item ? cast(nsIMsgDBHdr)item : null, property ? cast(nsIAtom)property : null, oldFlag, newFlag);
    CheckException(__result);
  }

  enum { event = 128U }

  /* void OnItemEvent (in nsIMsgFolder item, in nsIAtom event); */
  void OnItemEvent(nsIMsgFolderD item, nsIAtomD event){
    nsresult __result = inner.OnItemEvent(item ? cast(nsIMsgFolder)item : null, event ? cast(nsIAtom)event : null);
    CheckException(__result);
  }

  enum { all = 4294967295U }

private:
  nsIFolderListener inner;

}

