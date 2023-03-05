/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIClipboardDragDropHookList.idl
 */

module mozilla.xpcom.nsIClipboardDragDropHookList;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIClipboardDragDropHooks; /* forward declaration */

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */


/* starting interface:    nsIClipboardDragDropHookList */
const char[] NS_ICLIPBOARDDRAGDROPHOOKLIST_IID_STR = "876a2015-6b66-11d7-8f18-0003938a9d96";

const nsIID NS_ICLIPBOARDDRAGDROPHOOKLIST_IID= 
  {0x876a2015, 0x6b66, 0x11d7, 
    [ 0x8f, 0x18, 0x00, 0x03, 0x93, 0x8a, 0x9d, 0x96 ]};

/**
 * Please note that the following api is not intended for embedders;
 * it is intended as an internal (to gecko).  Embedders can indirectly
 * call these by sending commands (see description in 
 * nsIClipboardDragDropHooks.idl).
 *
 * Internal gecko usage is accomplished by calling get_Interface on a
 * docshell.
 */
extern(Windows)
interface nsIClipboardDragDropHookList : nsISupports {
  static const char[] IID_STR = NS_ICLIPBOARDDRAGDROPHOOKLIST_IID_STR;
  static const nsIID IID = NS_ICLIPBOARDDRAGDROPHOOKLIST_IID;

  /**
   * Add a hook to list.
   * @param aHooks  implementation of hooks
   */
  /* void addClipboardDragDropHooks (in nsIClipboardDragDropHooks aHooks); */
  nsresult AddClipboardDragDropHooks(nsIClipboardDragDropHooks aHooks);

  /**
   * Remove a hook from list (note if this implementation is not present
   * in the list then removal will be ignored).
   * @param aHooks  implementation of hooks
   */
  /* void removeClipboardDragDropHooks (in nsIClipboardDragDropHooks aHooks); */
  nsresult RemoveClipboardDragDropHooks(nsIClipboardDragDropHooks aHooks);

  /**
   * Gets an enumerator for all hooks which have been added.
   * @return nsISimpleEnumerator for nsIClipboardDragDropHooks
   */
  /* nsISimpleEnumerator getHookEnumerator (); */
  nsresult GetHookEnumerator(nsISimpleEnumerator *_retval);

}

