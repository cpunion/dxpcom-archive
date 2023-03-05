/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIClipboardDragDropHooks.idl
 */

module mozilla.xpcom.nsIClipboardDragDropHooks;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsITransferable; /* forward declaration */

public import mozilla.xpcom.nsIDragSession; /* forward declaration */

public import mozilla.xpcom.nsIDOMEvent; /* forward declaration */


/* starting interface:    nsIClipboardDragDropHooks */
const char[] NS_ICLIPBOARDDRAGDROPHOOKS_IID_STR = "e03e6c5e-0d84-4c0b-8739-e6b8d51922de";

const nsIID NS_ICLIPBOARDDRAGDROPHOOKS_IID= 
  {0xe03e6c5e, 0x0d84, 0x4c0b, 
    [ 0x87, 0x39, 0xe6, 0xb8, 0xd5, 0x19, 0x22, 0xde ]};

/**
 * Interfaces for overriding the built-in drag, drop, copy, and paste
 * implementations in the content area and editors. Use this to do things
 * such as prevent a drag from starting, adding or removing
 * data and flavors, or preventing the drop.
 *
 * Embedders who want to have these hooks made available should implement
 * nsIClipboardDragDropHooks and use the command manager to send the
 * appropriate commands with these parameters/settings: 
 *      command:  cmd_clipboardDragDropHook
 *
 *      params        value type   possible values
 *      "addhook"     isupports    nsIClipboardDragDropHooks as nsISupports
 *      "removehook"  isupports    nsIClipboardDragDropHooks as nsISupports
 *
 * Notes:
 *  * Overrides/hooks need to be added to each window (as appropriate).
 *    Adding them to the first window does not enable them for every window.
 *  * If more than one implementation is set for a window, the hooks will be
 *    called in the order they are added.
 *  * Adding the same hook to the same window will not add a second call.
 *    Each hook can only be called once per user action/api.
 *  * Not all hooks are guaranteed to be called.  If there are multiple hooks
 *    set for a window, any of them has an opportunity to cancel the action
 *    so no further processing will occur.
 *  * If any errors occur (without setting the boolean result) the default
 *    action will occur.
 *  * AllowDrop will be called MANY times during drag so ensure that it is
 *    efficient. 
 */
extern(Windows)
interface nsIClipboardDragDropHooks : nsISupports {
  static const char[] IID_STR = NS_ICLIPBOARDDRAGDROPHOOKS_IID_STR;
  static const nsIID IID = NS_ICLIPBOARDDRAGDROPHOOKS_IID;

  /**
   * Prevents the drag from starting
   *
   * @param event DOM event (drag gesture)
   *
   * @return TRUE  drag can proceed
   * @return FALSE drag is cancelled, does not go to OS
   */
  /* boolean allowStartDrag (in nsIDOMEvent event); */
  nsresult AllowStartDrag(nsIDOMEvent event, PRBool *_retval);

  /**
   * Tells gecko whether a drop is allowed on this content area
   *
   * @param event   DOM event (drag over)
   * @param session the drag session from which client can get
   *                   the flavors present or the actual data
   *
   * @return TRUE  indicates to OS that if a drop does happen on this
   *                browser, it will be accepted.
   * @return FALSE indicates to OS drop is not allowed. On win32, this
   *                will change the cursor to "reject".
   */
  /* boolean allowDrop (in nsIDOMEvent event, in nsIDragSession session); */
  nsresult AllowDrop(nsIDOMEvent event, nsIDragSession session, PRBool *_retval);

  /**
   * Alter the flavors or data presented to the OS
   * Used for drag and copy actions
   * Because this can be called many times, it is highly recommended
   * that the implementation be very efficient so user feedback is
   * not negatively impacted.
   *
   * @param event  DOM event (drag drop); null if triggered by copy.
   * @param trans  the transferable holding the list of flavors
   *               and the data for each flavor
   *
   * @return TRUE  copy/drag can proceed
   * @return FALSE copy/drag is cancelled, does not go to OS
   */
  /* boolean onCopyOrDrag (in nsIDOMEvent aEvent, in nsITransferable trans); */
  nsresult OnCopyOrDrag(nsIDOMEvent aEvent, nsITransferable trans, PRBool *_retval);

  /**
   * Provide an alternative action to the built-in behavior when
   * something is dropped on the browser or in an editor
   *
   * @param event  DOM event (drag drop); null if triggered by paste.
   * @param trans  the transferable holding the list of flavors
   *               and the data for each flavor
   *
   * @return TRUE  action was handled, do not perform built-in
   *                behavior
   * @return FALSE action was not overridden, do built-in behavior
   */
  /* boolean onPasteOrDrop (in nsIDOMEvent event, in nsITransferable trans); */
  nsresult OnPasteOrDrop(nsIDOMEvent event, nsITransferable trans, PRBool *_retval);

}

