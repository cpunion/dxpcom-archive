/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDragSession.idl
 */

module mozilla.dxpcom.nsIDragSessionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDragSession;


public import mozilla.dxpcom.nsIDragSessionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;
public import mozilla.xpcom.nsITransferable;
public import mozilla.dxpcom.nsITransferableD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.xpcom.nsIDOMNode;

public import mozilla.dxpcom.nsIDOMNodeD;


/* starting wrapper class:    nsIDragSession */
class nsIDragSessionD : public nsISupportsD {

  static const nsIID IID = NS_IDRAGSESSION_IID;


  alias nsIDragSession InnerType;

  this(nsIDragSession intr){
    super(intr);
    this.inner = intr;
  }

  nsIDragSession opCast() {
    return inner;
  }

  void opAssign(nsIDragSession value) {
    inner = value;
  }

  /**
    * Set the current state of the drag whether it can be dropped or not.
    * usually the target "frame" sets this so the native system can render the correct feedback
    */
  /* attribute boolean canDrop; */
  PRBool CanDrop(){
    PRBool value;
    nsresult __result = inner.GetCanDrop(&value);
    CheckException(__result);
    return value;
  }
  void CanDrop(PRBool aCanDrop){
    nsresult __result = inner.SetCanDrop(aCanDrop);
    CheckException(__result);
  }

  /**
    * Sets the action (copy, move, link, et.c) for the current drag 
    */
  /* attribute unsigned long dragAction; */
  PRUint32 DragAction(){
    PRUint32 value;
    nsresult __result = inner.GetDragAction(&value);
    CheckException(__result);
    return value;
  }
  void DragAction(PRUint32 aDragAction){
    nsresult __result = inner.SetDragAction(aDragAction);
    CheckException(__result);
  }

  /**
    * Sets the current width and height if the drag target area. 
    * It will contain the current size of the Frame that the drag is currently in
    */
  /* [noscript] attribute nsSize targetSize; */
  nsSize TargetSize(){
    nsSize value;
    nsresult __result = inner.GetTargetSize(&value);
    CheckException(__result);
    return value;
  }
  void TargetSize(nsSize aTargetSize){
    nsresult __result = inner.SetTargetSize(aTargetSize);
    CheckException(__result);
  }

  /**
    * Get the number items that were dropped
    */
  /* readonly attribute unsigned long numDropItems; */
  PRUint32 NumDropItems(){
    PRUint32 value;
    nsresult __result = inner.GetNumDropItems(&value);
    CheckException(__result);
    return value;
  }

  /**
    * The document where the drag was started, which will be null if the
    * drag originated outside the application. Useful for determining if a drop
    * originated in the same document.
    */
  /* readonly attribute nsIDOMDocument sourceDocument; */
  nsIDOMDocumentD  SourceDocument(){
    nsIDOMDocument value;
    nsresult __result = inner.GetSourceDocument(&value);
    CheckException(__result);
    return new nsIDOMDocumentD(value);
  }

  /**
    * The dom node that was originally dragged to start the session, which will be null if the
    * drag originated outside the application.
    */
  /* readonly attribute nsIDOMNode sourceNode; */
  nsIDOMNodeD  SourceNode(){
    nsIDOMNode value;
    nsresult __result = inner.GetSourceNode(&value);
    CheckException(__result);
    return new nsIDOMNodeD(value);
  }

  /**
    * Get data from a Drag&Drop. Can be called while the drag is in process
    * or after the drop has completed.  
    *
    * @param  aTransferable the transferable for the data to be put into
    * @param  aItemIndex which of multiple drag items, zero-based
    */
  /* void getData (in nsITransferable aTransferable, in unsigned long aItemIndex); */
  void GetData(nsITransferableD aTransferable, PRUint32 aItemIndex){
    nsresult __result = inner.GetData(aTransferable ? cast(nsITransferable)aTransferable : null, aItemIndex);
    CheckException(__result);
  }

  /**
    * Check to set if ant of the native data on the clipboard matches this data flavor
    *
    * @result NS_OK if if the data flavor is supported and, NS_ERROR_FAILURE is it is not
    */
  /* boolean isDataFlavorSupported (in string aDataFlavor); */
  PRBool IsDataFlavorSupported(char*aDataFlavor){
    PRBool _retval;
    nsresult __result = inner.IsDataFlavorSupported(aDataFlavor, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIDragSession inner;

}

