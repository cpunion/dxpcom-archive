/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDragSession.idl
 */

module mozilla.xpcom.nsIDragSession;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.xpcom.nsITransferable;

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */


/* starting interface:    nsIDragSession */
const char[] NS_IDRAGSESSION_IID_STR = "cba22c53-fcce-11d2-96d4-0060b0fb9956";

const nsIID NS_IDRAGSESSION_IID= 
  {0xcba22c53, 0xfcce, 0x11d2, 
    [ 0x96, 0xd4, 0x00, 0x60, 0xb0, 0xfb, 0x99, 0x56 ]};

extern(Windows)
interface nsIDragSession : nsISupports {
  static const char[] IID_STR = NS_IDRAGSESSION_IID_STR;
  static const nsIID IID = NS_IDRAGSESSION_IID;

  /**
    * Set the current state of the drag whether it can be dropped or not.
    * usually the target "frame" sets this so the native system can render the correct feedback
    */
  /* attribute boolean canDrop; */
  nsresult GetCanDrop(PRBool *aCanDrop);
  nsresult SetCanDrop(PRBool aCanDrop);

  /**
    * Sets the action (copy, move, link, et.c) for the current drag 
    */
  /* attribute unsigned long dragAction; */
  nsresult GetDragAction(PRUint32 *aDragAction);
  nsresult SetDragAction(PRUint32 aDragAction);

  /**
    * Sets the current width and height if the drag target area. 
    * It will contain the current size of the Frame that the drag is currently in
    */
  /* [noscript] attribute nsSize targetSize; */
  nsresult GetTargetSize(nsSize *aTargetSize);
  nsresult SetTargetSize(nsSize aTargetSize);

  /**
    * Get the number items that were dropped
    */
  /* readonly attribute unsigned long numDropItems; */
  nsresult GetNumDropItems(PRUint32 *aNumDropItems);

  /**
    * The document where the drag was started, which will be null if the
    * drag originated outside the application. Useful for determining if a drop
    * originated in the same document.
    */
  /* readonly attribute nsIDOMDocument sourceDocument; */
  nsresult GetSourceDocument(nsIDOMDocument  *aSourceDocument);

  /**
    * The dom node that was originally dragged to start the session, which will be null if the
    * drag originated outside the application.
    */
  /* readonly attribute nsIDOMNode sourceNode; */
  nsresult GetSourceNode(nsIDOMNode  *aSourceNode);

  /**
    * Get data from a Drag&Drop. Can be called while the drag is in process
    * or after the drop has completed.  
    *
    * @param  aTransferable the transferable for the data to be put into
    * @param  aItemIndex which of multiple drag items, zero-based
    */
  /* void getData (in nsITransferable aTransferable, in unsigned long aItemIndex); */
  nsresult GetData(nsITransferable aTransferable, PRUint32 aItemIndex);

  /**
    * Check to set if ant of the native data on the clipboard matches this data flavor
    *
    * @result NS_OK if if the data flavor is supported and, NS_ERROR_FAILURE is it is not
    */
  /* boolean isDataFlavorSupported (in string aDataFlavor); */
  nsresult IsDataFlavorSupported(char *aDataFlavor, PRBool *_retval);

}

