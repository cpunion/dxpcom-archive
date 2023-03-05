/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDragDropHandler.idl
 */

module mozilla.dxpcom.nsIDragDropHandlerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDragDropHandler;


public import mozilla.dxpcom.nsIDragDropHandlerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMEventTarget;

public import mozilla.dxpcom.nsIDOMEventTargetD;

public import mozilla.xpcom.nsIWebNavigation;

public import mozilla.dxpcom.nsIWebNavigationD;


/* starting wrapper class:    nsIDragDropHandler */
/**
 * @status UNDER_REVIEW
 */
/**
 * Interface for communicating with the built-in drag and drop
 * implementation in the content area. Use this to register where
 * the listeners should attach (something that implements
 * |nsIDOMEventReceiver| which is what we end up using under the hood).
 */
class nsIDragDropHandlerD : public nsISupportsD {

  static const nsIID IID = NS_IDRAGDROPHANDLER_IID;


  alias nsIDragDropHandler InnerType;

  this(nsIDragDropHandler intr){
    super(intr);
    this.inner = intr;
  }

  nsIDragDropHandler opCast() {
    return inner;
  }

  void opAssign(nsIDragDropHandler value) {
    inner = value;
  }

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
  void HookupTo(nsIDOMEventTargetD attachPoint, nsIWebNavigationD navigator){
    nsresult __result = inner.HookupTo(attachPoint ? cast(nsIDOMEventTarget)attachPoint : null, navigator ? cast(nsIWebNavigation)navigator : null);
    CheckException(__result);
  }

  /**
   * Unregister all handlers related to drag&drop
   */
  /* void detach (); */
  void Detach(){
    nsresult __result = inner.Detach();
    CheckException(__result);
  }

private:
  nsIDragDropHandler inner;

}

