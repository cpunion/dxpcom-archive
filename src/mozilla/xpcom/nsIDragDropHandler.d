/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDragDropHandler.idl
 */

module mozilla.xpcom.nsIDragDropHandler;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMEventTarget; /* forward declaration */

public import mozilla.xpcom.nsIWebNavigation; /* forward declaration */


/* starting interface:    nsIDragDropHandler */
const char[] NS_IDRAGDROPHANDLER_IID_STR = "4f418f58-f834-4736-a755-e0395bedca9d";

const nsIID NS_IDRAGDROPHANDLER_IID= 
  {0x4f418f58, 0xf834, 0x4736, 
    [ 0xa7, 0x55, 0xe0, 0x39, 0x5b, 0xed, 0xca, 0x9d ]};

/**
 * @status UNDER_REVIEW
 */
/**
 * Interface for communicating with the built-in drag and drop
 * implementation in the content area. Use this to register where
 * the listeners should attach (something that implements
 * |nsIDOMEventReceiver| which is what we end up using under the hood).
 */
extern(Windows)
interface nsIDragDropHandler : nsISupports {
  static const char[] IID_STR = NS_IDRAGDROPHANDLER_IID_STR;
  static const nsIID IID = NS_IDRAGDROPHANDLER_IID;

  /**
   * Attach drag handlers to receiver specified by |attachPoint| and
   * specify callbacks to allow overriding of the built-in behaviors.
   *
   * @param attachPoint hookup listeners to this location
   * @param navigator loads dropped urls via this interface. If NULL, 
   *                   the client must handle the drop itself, either
   *                   through the method provided via |overrideDrop| or
   *                   by letting the event bubble up through the DOM.
   */
  /* void hookupTo (in nsIDOMEventTarget attachPoint, in nsIWebNavigation navigator); */
  nsresult HookupTo(nsIDOMEventTarget attachPoint, nsIWebNavigation navigator);

  /**
   * Unregister all handlers related to drag&drop
   */
  /* void detach (); */
  nsresult Detach();

}

