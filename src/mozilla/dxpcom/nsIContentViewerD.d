/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIContentViewer.idl
 */

module mozilla.dxpcom.nsIContentViewerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIContentViewer;


public import mozilla.dxpcom.nsIContentViewerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIDOMDocument;

public import mozilla.dxpcom.nsIDOMDocumentD;

public import mozilla.xpcom.nsISHEntry;

public import mozilla.dxpcom.nsISHEntryD;


/* starting wrapper class:    nsIContentViewer */
class nsIContentViewerD : public nsISupportsD {

  static const nsIID IID = NS_ICONTENTVIEWER_IID;


  alias nsIContentViewer InnerType;

  this(nsIContentViewer intr){
    super(intr);
    this.inner = intr;
  }

  nsIContentViewer opCast() {
    return inner;
  }

  void opAssign(nsIContentViewer value) {
    inner = value;
  }

  /* [noscript] void init (in nsIWidgetPtr aParentWidget, in nsIDeviceContextPtr aDeviceContext, [const] in nsRectRef aBounds); */
  void Init(nsIWidget * aParentWidget, nsIDeviceContext * aDeviceContext, nsRect * aBounds){
    nsresult __result = inner.Init(aParentWidget, aDeviceContext, aBounds);
    CheckException(__result);
  }

  /* attribute nsISupports container; */
  nsISupportsD  Container(){
    nsISupports value;
    nsresult __result = inner.GetContainer(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }
  void Container(nsISupportsD  aContainer){
    nsISupports value;
    nsresult __result = inner.SetContainer(value);
    CheckException(__result);
  }

  /* void loadStart (in nsISupports aDoc); */
  void LoadStart(nsISupportsD aDoc){
    nsresult __result = inner.LoadStart(aDoc ? cast(nsISupports)aDoc : null);
    CheckException(__result);
  }

  /* void loadComplete (in unsigned long aStatus); */
  void LoadComplete(PRUint32 aStatus){
    nsresult __result = inner.LoadComplete(aStatus);
    CheckException(__result);
  }

  /* boolean permitUnload (); */
  PRBool PermitUnload(){
    PRBool _retval;
    nsresult __result = inner.PermitUnload(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void pageHide (in boolean isUnload); */
  void PageHide(PRBool isUnload){
    nsresult __result = inner.PageHide(isUnload);
    CheckException(__result);
  }

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
  void Close(nsISHEntryD historyEntry){
    nsresult __result = inner.Close(historyEntry ? cast(nsISHEntry)historyEntry : null);
    CheckException(__result);
  }

  /* void destroy (); */
  void Destroy(){
    nsresult __result = inner.Destroy();
    CheckException(__result);
  }

  /* void stop (); */
  void Stop(){
    nsresult __result = inner.Stop();
    CheckException(__result);
  }

  /* attribute nsIDOMDocument DOMDocument; */
  nsIDOMDocumentD  DOMDocument(){
    nsIDOMDocument value;
    nsresult __result = inner.GetDOMDocument(&value);
    CheckException(__result);
    return new nsIDOMDocumentD(value);
  }
  void DOMDocument(nsIDOMDocumentD  aDOMDocument){
    nsIDOMDocument value;
    nsresult __result = inner.SetDOMDocument(value);
    CheckException(__result);
  }

  /* [noscript] void getBounds (in nsRectRef aBounds); */
  void GetBounds(nsRect * aBounds){
    nsresult __result = inner.GetBounds(aBounds);
    CheckException(__result);
  }

  /* [noscript] void setBounds ([const] in nsRectRef aBounds); */
  void SetBounds(nsRect * aBounds){
    nsresult __result = inner.SetBounds(aBounds);
    CheckException(__result);
  }

  /**
   * The previous content viewer, which has been |close|d but not
   * |destroy|ed.
   */
  /* [noscript] attribute nsIContentViewer previousViewer; */
  nsIContentViewerD  PreviousViewer(){
    nsIContentViewer value;
    nsresult __result = inner.GetPreviousViewer(&value);
    CheckException(__result);
    return new nsIContentViewerD(value);
  }
  void PreviousViewer(nsIContentViewerD  aPreviousViewer){
    nsIContentViewer value;
    nsresult __result = inner.SetPreviousViewer(value);
    CheckException(__result);
  }

  /* void move (in long aX, in long aY); */
  void Move(PRInt32 aX, PRInt32 aY){
    nsresult __result = inner.Move(aX, aY);
    CheckException(__result);
  }

  /* void show (); */
  void Show(){
    nsresult __result = inner.Show();
    CheckException(__result);
  }

  /* void hide (); */
  void Hide(){
    nsresult __result = inner.Hide();
    CheckException(__result);
  }

  /* attribute boolean enableRendering; */
  PRBool EnableRendering(){
    PRBool value;
    nsresult __result = inner.GetEnableRendering(&value);
    CheckException(__result);
    return value;
  }
  void EnableRendering(PRBool aEnableRendering){
    nsresult __result = inner.SetEnableRendering(aEnableRendering);
    CheckException(__result);
  }

  /* attribute boolean sticky; */
  PRBool Sticky(){
    PRBool value;
    nsresult __result = inner.GetSticky(&value);
    CheckException(__result);
    return value;
  }
  void Sticky(PRBool aSticky){
    nsresult __result = inner.SetSticky(aSticky);
    CheckException(__result);
  }

  /* boolean requestWindowClose (); */
  PRBool RequestWindowClose(){
    PRBool _retval;
    nsresult __result = inner.RequestWindowClose(&_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Attach the content viewer to its DOM window and docshell.
   * @param aState A state object that might be useful in attaching the DOM
   *               window.
   */
  /* void open (in nsISupports aState); */
  void Open(nsISupportsD aState){
    nsresult __result = inner.Open(aState ? cast(nsISupports)aState : null);
    CheckException(__result);
  }

  /**
   * Clears the current history entry.  This is used if we need to clear out
   * the saved presentation state.
   */
  /* void clearHistoryEntry (); */
  void ClearHistoryEntry(){
    nsresult __result = inner.ClearHistoryEntry();
    CheckException(__result);
  }

private:
  nsIContentViewer inner;

}


/* starting wrapper class:    nsIContentViewer_MOZILLA_1_8_BRANCH */
class nsIContentViewer_MOZILLA_1_8_BRANCHD : public nsISupportsD {

  static const nsIID IID = NS_ICONTENTVIEWER_MOZILLA_1_8_BRANCH_IID;


  alias nsIContentViewer_MOZILLA_1_8_BRANCH InnerType;

  this(nsIContentViewer_MOZILLA_1_8_BRANCH intr){
    super(intr);
    this.inner = intr;
  }

  nsIContentViewer_MOZILLA_1_8_BRANCH opCast() {
    return inner;
  }

  void opAssign(nsIContentViewer_MOZILLA_1_8_BRANCH value) {
    inner = value;
  }

  /**
   * Attach the content viewer to its DOM window and docshell.
   * @param aState A state object that might be useful in attaching the DOM
   *               window.
   * @param aSHEntry The history entry that the content viewer was stored in.
   *                 The entry must have the docshells for all of the child
   *                 documents stored in its child shell list.
   */
  /* void openWithEntry (in nsISupports aState, in nsISHEntry aSHEntry); */
  void OpenWithEntry(nsISupportsD aState, nsISHEntryD aSHEntry){
    nsresult __result = inner.OpenWithEntry(aState ? cast(nsISupports)aState : null, aSHEntry ? cast(nsISHEntry)aSHEntry : null);
    CheckException(__result);
  }

private:
  nsIContentViewer_MOZILLA_1_8_BRANCH inner;

}

