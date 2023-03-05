/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEditorObserver.idl
 */

module mozilla.dxpcom.nsIEditorObserverD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIEditorObserver;


public import mozilla.dxpcom.nsIEditorObserverD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIEditorObserver */
/**
 * A generic editor observer interface. 
 * <P>
 * nsIEditorObserver is the interface used by applications wishing to be notified
 * when the editor has completed a user action. 
 *
 */
class nsIEditorObserverD : public nsISupportsD {

  static const nsIID IID = NS_IEDITOROBSERVER_IID;


  alias nsIEditorObserver InnerType;

  this(nsIEditorObserver intr){
    super(intr);
    this.inner = intr;
  }

  nsIEditorObserver opCast() {
    return inner;
  }

  void opAssign(nsIEditorObserver value) {
    inner = value;
  }

  /** 
   * Called after the editor completes a user action.
   */
  /* void EditAction (); */
  void EditAction(){
    nsresult __result = inner.EditAction();
    CheckException(__result);
  }

private:
  nsIEditorObserver inner;

}

