/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISelectionListener.idl
 */

module mozilla.dxpcom.nsISelectionListenerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISelectionListener;


public import mozilla.dxpcom.nsISelectionListenerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.xpcom.nsISelection;

public import mozilla.dxpcom.nsISelectionD;


/* starting wrapper class:    nsISelectionListener */
class nsISelectionListenerD : public nsISupportsD {

  static const nsIID IID = NS_ISELECTIONLISTENER_IID;


  alias nsISelectionListener InnerType;

  this(nsISelectionListener intr){
    super(intr);
    this.inner = intr;
  }

  nsISelectionListener opCast() {
    return inner;
  }

  void opAssign(nsISelectionListener value) {
    inner = value;
  }

  enum { NO_REASON = 0 }

  enum { DRAG_REASON = 1 }

  enum { MOUSEDOWN_REASON = 2 }

  enum { MOUSEUP_REASON = 4 }

  enum { KEYPRESS_REASON = 8 }

  enum { SELECTALL_REASON = 16 }

  /* void notifySelectionChanged (in nsIDOMDocument doc, in nsISelection sel, in short reason); */
  void NotifySelectionChanged(nsIDOMDocumentD doc, nsISelectionD sel, PRInt16 reason){
    nsresult __result = inner.NotifySelectionChanged(doc ? cast(nsIDOMDocument)doc : null, sel ? cast(nsISelection)sel : null, reason);
    CheckException(__result);
  }

private:
  nsISelectionListener inner;

}

