/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDragService.idl
 */

module mozilla.xpcom.nsIDragService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.xpcom.nsIDragSession;
public import mozilla.xpcom.nsIScriptableRegion;

public import mozilla.xpcom.nsIDOMNode; /* forward declaration */


/* starting interface:    nsIDragService */
const char[] NS_IDRAGSERVICE_IID_STR = "8b5314bb-db01-11d2-96ce-0060b0fb9956";

const nsIID NS_IDRAGSERVICE_IID= 
  {0x8b5314bb, 0xdb01, 0x11d2, 
    [ 0x96, 0xce, 0x00, 0x60, 0xb0, 0xfb, 0x99, 0x56 ]};

extern(Windows)
interface nsIDragService : nsISupports {
  static const char[] IID_STR = NS_IDRAGSERVICE_IID_STR;
  static const nsIID IID = NS_IDRAGSERVICE_IID;

  enum { DRAGDROP_ACTION_NONE = 0 };

  enum { DRAGDROP_ACTION_COPY = 1 };

  enum { DRAGDROP_ACTION_MOVE = 2 };

  enum { DRAGDROP_ACTION_LINK = 4 };

  /**
    * Starts a modal drag session with an array of transaferables 
    *
    * @param  aTransferables - an array of transferables to be dragged
    * @param  aRegion - a region containing rectangles for cursor feedback, 
    *            in window coordinates.
    * @param  aActionType - specified which of copy/move/link are allowed
    */
  /* void invokeDragSession (in nsIDOMNode aDOMNode, in nsISupportsArray aTransferables, in nsIScriptableRegion aRegion, in unsigned long aActionType); */
  nsresult InvokeDragSession(nsIDOMNode aDOMNode, nsISupportsArray aTransferables, nsIScriptableRegion aRegion, PRUint32 aActionType);

  /**
    * Returns the current Drag Session  
    */
  /* nsIDragSession getCurrentSession (); */
  nsresult GetCurrentSession(nsIDragSession *_retval);

  /**
    * Tells the Drag Service to start a drag session. This is called when
    * an external drag occurs
    */
  /* void startDragSession (); */
  nsresult StartDragSession();

  /**
    * Tells the Drag Service to end a drag session. This is called when
    * an external drag occurs
    */
  /* void endDragSession (); */
  nsresult EndDragSession();

}

