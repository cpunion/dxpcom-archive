/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIClipboardDragDropHookList.idl
 */

module mozilla.dxpcom.nsIClipboardDragDropHookListD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIClipboardDragDropHookList;


public import mozilla.dxpcom.nsIClipboardDragDropHookListD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIClipboardDragDropHooks;

public import mozilla.dxpcom.nsIClipboardDragDropHooksD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsIClipboardDragDropHookList */
/**
 * Please note that the following api is not intended for embedders;
 * it is intended as an internal (to gecko).  Embedders can indirectly
 * call these by sending commands (see description in 
 * nsIClipboardDragDropHooks.idl).
 *
 * Internal gecko usage is accomplished by calling get_Interface on a
 * docshell.
 */
class nsIClipboardDragDropHookListD : public nsISupportsD {

  static const nsIID IID = NS_ICLIPBOARDDRAGDROPHOOKLIST_IID;


  alias nsIClipboardDragDropHookList InnerType;

  this(nsIClipboardDragDropHookList intr){
    super(intr);
    this.inner = intr;
  }

  nsIClipboardDragDropHookList opCast() {
    return inner;
  }

  void opAssign(nsIClipboardDragDropHookList value) {
    inner = value;
  }

  /**
   * Add a hook to list.
   * @param aHooks  implementation of hooks
   */
  /* void addClipboardDragDropHooks (in nsIClipboardDragDropHooks aHooks); */
  void AddClipboardDragDropHooks(nsIClipboardDragDropHooksD aHooks){
    nsresult __result = inner.AddClipboardDragDropHooks(aHooks ? cast(nsIClipboardDragDropHooks)aHooks : null);
    CheckException(__result);
  }

  /**
   * Remove a hook from list (note if this implementation is not present
   * in the list then removal will be ignored).
   * @param aHooks  implementation of hooks
   */
  /* void removeClipboardDragDropHooks (in nsIClipboardDragDropHooks aHooks); */
  void RemoveClipboardDragDropHooks(nsIClipboardDragDropHooksD aHooks){
    nsresult __result = inner.RemoveClipboardDragDropHooks(aHooks ? cast(nsIClipboardDragDropHooks)aHooks : null);
    CheckException(__result);
  }

  /**
   * Gets an enumerator for all hooks which have been added.
   * @return nsISimpleEnumerator for nsIClipboardDragDropHooks
   */
  /* nsISimpleEnumerator getHookEnumerator (); */
  nsISimpleEnumeratorD  GetHookEnumerator(){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.GetHookEnumerator(&_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

private:
  nsIClipboardDragDropHookList inner;

}

