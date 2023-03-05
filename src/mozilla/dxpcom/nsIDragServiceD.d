/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDragService.idl
 */

module mozilla.dxpcom.nsIDragServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDragService;


public import mozilla.dxpcom.nsIDragServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;
public import mozilla.xpcom.nsIDragSession;
public import mozilla.dxpcom.nsIDragSessionD;
public import mozilla.xpcom.nsIScriptableRegion;
public import mozilla.dxpcom.nsIScriptableRegionD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsIDragService */
class nsIDragServiceD : public nsISupportsD {

  static const nsIID IID = NS_IDRAGSERVICE_IID;


  alias nsIDragService InnerType;

  this(nsIDragService intr){
    super(intr);
    this.inner = intr;
  }

  nsIDragService opCast() {
    return inner;
  }

  void opAssign(nsIDragService value) {
    inner = value;
  }

  enum { DRAGDROP_ACTION_NONE = 0 }

  enum { DRAGDROP_ACTION_COPY = 1 }

  enum { DRAGDROP_ACTION_MOVE = 2 }

  enum { DRAGDROP_ACTION_LINK = 4 }

  /**
    * Starts a modal drag session with an array of transaferables 
    *
    * @param  aTransferables - an array of transferables to be dragged
    * @param  aRegion - a region containing rectangles for cursor feedback, 
    *            in window coordinates.
    * @param  aActionType - specified which of copy/move/link are allowed
    */
  /* void invokeDragSession (in nsIDOMNode aDOMNode, in nsISupportsArray aTransferables, in nsIScriptableRegion aRegion, in unsigned long aActionType); */
  void InvokeDragSession(nsIDOMNodeD aDOMNode, nsISupportsArrayD aTransferables, nsIScriptableRegionD aRegion, PRUint32 aActionType){
    nsresult __result = inner.InvokeDragSession(aDOMNode ? cast(nsIDOMNode)aDOMNode : null, aTransferables ? cast(nsISupportsArray)aTransferables : null, aRegion ? cast(nsIScriptableRegion)aRegion : null, aActionType);
    CheckException(__result);
  }

  /**
    * Returns the current Drag Session  
    */
  /* nsIDragSession getCurrentSession (); */
  nsIDragSessionD  GetCurrentSession(){
    nsIDragSession _retval;
    nsresult __result = inner.GetCurrentSession(&_retval);
    CheckException(__result);
    return new nsIDragSessionD(_retval);
  }

  /**
    * Tells the Drag Service to start a drag session. This is called when
    * an external drag occurs
    */
  /* void startDragSession (); */
  void StartDragSession(){
    nsresult __result = inner.StartDragSession();
    CheckException(__result);
  }

  /**
    * Tells the Drag Service to end a drag session. This is called when
    * an external drag occurs
    */
  /* void endDragSession (); */
  void EndDragSession(){
    nsresult __result = inner.EndDragSession();
    CheckException(__result);
  }

private:
  nsIDragService inner;

}

