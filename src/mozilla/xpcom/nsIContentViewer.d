/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIContentViewer.idl
 */

module mozilla.xpcom.nsIContentViewer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIDOMDocument; /* forward declaration */

public import mozilla.xpcom.nsISHEntry; /* forward declaration */


/* starting interface:    nsIContentViewer */
const char[] NS_ICONTENTVIEWER_IID_STR = "6a7ddb40-8a9e-4576-8ad1-71c5641d8780";

const nsIID NS_ICONTENTVIEWER_IID= 
  {0x6a7ddb40, 0x8a9e, 0x4576, 
    [ 0x8a, 0xd1, 0x71, 0xc5, 0x64, 0x1d, 0x87, 0x80 ]};

extern(Windows)
interface nsIContentViewer : nsISupports {
  static const char[] IID_STR = NS_ICONTENTVIEWER_IID_STR;
  static const nsIID IID = NS_ICONTENTVIEWER_IID;

  /* [noscript] void init (in nsIWidgetPtr aParentWidget, in nsIDeviceContextPtr aDeviceContext, [const] in nsRectRef aBounds); */
  nsresult Init(nsIWidget * aParentWidget, nsIDeviceContext * aDeviceContext, nsRect * aBounds);

  /* attribute nsISupports container; */
  nsresult GetContainer(nsISupports  *aContainer);
  nsresult SetContainer(nsISupports  aContainer);

  /* void loadStart (in nsISupports aDoc); */
  nsresult LoadStart(nsISupports aDoc);

  /* void loadComplete (in unsigned long aStatus); */
  nsresult LoadComplete(PRUint32 aStatus);

  /* boolean permitUnload (); */
  nsresult PermitUnload(PRBool *_retval);

  /* void pageHide (in boolean isUnload); */
  nsresult PageHide(PRBool isUnload);

  /**
   * All users of a content viewer are responsible for calling both
   * close() and destroy(), in that order. 
   *
   * close() should be called when the load of a new page for the next
   * content viewer begins, and destroy() should be called when the next
   * content viewer replaces this one.
   *
   * |historyEntry| sets the session history entry for the content viewer.  If
   * this is null, then Destroy() will be called on the document by close().
   * If it is non-null, the document will not be destroyed, and the following
   * actions will happen when destroy() is called (*):
   *  - Sanitize() will be called on the viewer's document
   *  - The content viewer will set the contentViewer property on the
   *    history entry, and release its reference (ownership reversal).
   *  - hide() will be called, and no further destruction will happen.
   *
   *  (*) unless the document is currently being printed, in which case
   *      it will never be saved in session history.
   *
   */
  /* void close (in nsISHEntry historyEntry); */
  nsresult Close(nsISHEntry historyEntry);

  /* void destroy (); */
  nsresult Destroy();

  /* void stop (); */
  nsresult Stop();

  /* attribute nsIDOMDocument DOMDocument; */
  nsresult GetDOMDocument(nsIDOMDocument  *aDOMDocument);
  nsresult SetDOMDocument(nsIDOMDocument  aDOMDocument);

  /* [noscript] void getBounds (in nsRectRef aBounds); */
  nsresult GetBounds(nsRect * aBounds);

  /* [noscript] void setBounds ([const] in nsRectRef aBounds); */
  nsresult SetBounds(nsRect * aBounds);

  /**
   * The previous content viewer, which has been |close|d but not
   * |destroy|ed.
   */
  /* [noscript] attribute nsIContentViewer previousViewer; */
  nsresult GetPreviousViewer(nsIContentViewer  *aPreviousViewer);
  nsresult SetPreviousViewer(nsIContentViewer  aPreviousViewer);

  /* void move (in long aX, in long aY); */
  nsresult Move(PRInt32 aX, PRInt32 aY);

  /* void show (); */
  nsresult Show();

  /* void hide (); */
  nsresult Hide();

  /* attribute boolean enableRendering; */
  nsresult GetEnableRendering(PRBool *aEnableRendering);
  nsresult SetEnableRendering(PRBool aEnableRendering);

  /* attribute boolean sticky; */
  nsresult GetSticky(PRBool *aSticky);
  nsresult SetSticky(PRBool aSticky);

  /* boolean requestWindowClose (); */
  nsresult RequestWindowClose(PRBool *_retval);

  /**
   * Attach the content viewer to its DOM window and docshell.
   * @param aState A state object that might be useful in attaching the DOM
   *               window.
   */
  /* void open (in nsISupports aState); */
  nsresult Open(nsISupports aState);

  /**
   * Clears the current history entry.  This is used if we need to clear out
   * the saved presentation state.
   */
  /* void clearHistoryEntry (); */
  nsresult ClearHistoryEntry();

}


/* starting interface:    nsIContentViewer_MOZILLA_1_8_BRANCH */
const char[] NS_ICONTENTVIEWER_MOZILLA_1_8_BRANCH_IID_STR = "51341ed4-a3bf-4fd5-ae17-5fd3ec59dcab";

const nsIID NS_ICONTENTVIEWER_MOZILLA_1_8_BRANCH_IID= 
  {0x51341ed4, 0xa3bf, 0x4fd5, 
    [ 0xae, 0x17, 0x5f, 0xd3, 0xec, 0x59, 0xdc, 0xab ]};

extern(Windows)
interface nsIContentViewer_MOZILLA_1_8_BRANCH : nsISupports {
  static const char[] IID_STR = NS_ICONTENTVIEWER_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = NS_ICONTENTVIEWER_MOZILLA_1_8_BRANCH_IID;

  /**
   * Attach the content viewer to its DOM window and docshell.
   * @param aState A state object that might be useful in attaching the DOM
   *               window.
   * @param aSHEntry The history entry that the content viewer was stored in.
   *                 The entry must have the docshells for all of the child
   *                 documents stored in its child shell list.
   */
  /* void openWithEntry (in nsISupports aState, in nsISHEntry aSHEntry); */
  nsresult OpenWithEntry(nsISupports aState, nsISHEntry aSHEntry);

}

