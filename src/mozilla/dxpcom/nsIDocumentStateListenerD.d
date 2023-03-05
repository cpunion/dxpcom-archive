/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocumentStateListener.idl
 */

module mozilla.dxpcom.nsIDocumentStateListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDocumentStateListener;


public import mozilla.dxpcom.nsIDocumentStateListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIDocumentStateListener */
class nsIDocumentStateListenerD : public nsISupportsD {

  static const nsIID IID = NS_IDOCUMENTSTATELISTENER_IID;


  alias nsIDocumentStateListener InnerType;

  this(nsIDocumentStateListener intr){
    super(intr);
    this.inner = intr;
  }

  nsIDocumentStateListener opCast() {
    return inner;
  }

  void opAssign(nsIDocumentStateListener value) {
    inner = value;
  }

  /* void NotifyDocumentCreated (); */
  void NotifyDocumentCreated(){
    nsresult __result = inner.NotifyDocumentCreated();
    CheckException(__result);
  }

  /* void NotifyDocumentWillBeDestroyed (); */
  void NotifyDocumentWillBeDestroyed(){
    nsresult __result = inner.NotifyDocumentWillBeDestroyed();
    CheckException(__result);
  }

  /* void NotifyDocumentStateChanged (in boolean nowDirty); */
  void NotifyDocumentStateChanged(PRBool nowDirty){
    nsresult __result = inner.NotifyDocumentStateChanged(nowDirty);
    CheckException(__result);
  }

private:
  nsIDocumentStateListener inner;

}

