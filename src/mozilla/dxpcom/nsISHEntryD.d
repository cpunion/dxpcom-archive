/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISHEntry.idl
 */

module mozilla.dxpcom.nsISHEntryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISHEntry;


public import mozilla.dxpcom.nsISHEntryD;

public import mozilla.xpcom.nsIHistoryEntry;
public import mozilla.dxpcom.nsIHistoryEntryD;

public import mozilla.xpcom.nsIContentViewer;

public import mozilla.dxpcom.nsIContentViewerD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsIDocShellTreeItem;

public import mozilla.dxpcom.nsIDocShellTreeItemD;

public import mozilla.xpcom.nsISupportsArray;

public import mozilla.dxpcom.nsISupportsArrayD;


/* starting wrapper class:    nsISHEntry */
class nsISHEntryD : public nsIHistoryEntryD {

  static const nsIID IID = NS_ISHENTRY_IID;


  alias nsISHEntry InnerType;

  this(nsISHEntry intr){
    super(intr);
    this.inner = intr;
  }

  nsISHEntry opCast() {
    return inner;
  }

  void opAssign(nsISHEntry value) {
    inner = value;
  }

  /** URI for the document */
  /* void setURI (in nsIURI aURI); */
  void SetURI(nsIURID aURI){
    nsresult __result = inner.SetURI(aURI ? cast(nsIURI)aURI : null);
    CheckException(__result);
  }

  /** Referrer URI */
  /* attribute nsIURI referrerURI; */
  nsIURID  ReferrerURI(){
    nsIURI value;
    nsresult __result = inner.GetReferrerURI(&value);
    CheckException(__result);
    return new nsIURID(value);
  }
  void ReferrerURI(nsIURID  aReferrerURI){
    nsIURI value;
    nsresult __result = inner.SetReferrerURI(value);
    CheckException(__result);
  }

  /** Content viewer, for fast restoration of presentation */
  /* attribute nsIContentViewer contentViewer; */
  nsIContentViewerD  ContentViewer(){
    nsIContentViewer value;
    nsresult __result = inner.GetContentViewer(&value);
    CheckException(__result);
    return new nsIContentViewerD(value);
  }
  void ContentViewer(nsIContentViewerD  aContentViewer){
    nsIContentViewer value;
    nsresult __result = inner.SetContentViewer(value);
    CheckException(__result);
  }

  /** Whether the content viewer is marked "sticky" */
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

  /** Saved state of the global window object */
  /* attribute nsISupports windowState; */
  nsISupportsD  WindowState(){
    nsISupports value;
    nsresult __result = inner.GetWindowState(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }
  void WindowState(nsISupportsD  aWindowState){
    nsISupports value;
    nsresult __result = inner.SetWindowState(value);
    CheckException(__result);
  }

  /**
     * Saved position and dimensions of the content viewer; we must adjust the
     * root view's widget accordingly if this has changed when the presentation
     * is restored.
     */
  /* [noscript] void getViewerBounds (in nsRect bounds); */
  void GetViewerBounds(nsRect * bounds){
    nsresult __result = inner.GetViewerBounds(bounds);
    CheckException(__result);
  }

  /* [noscript] void setViewerBounds ([const] in nsRect bounds); */
  void SetViewerBounds(nsRect * bounds){
    nsresult __result = inner.SetViewerBounds(bounds);
    CheckException(__result);
  }

  /**
     * Saved child docshells corresponding to contentViewer.  The child shells
     * are restored as children of the parent docshell, in this order, when the
     * parent docshell restores a saved presentation.
     */
/** Append a child shell to the end of our list. */
  /* void addChildShell (in nsIDocShellTreeItem shell); */
  void AddChildShell(nsIDocShellTreeItemD shell){
    nsresult __result = inner.AddChildShell(shell ? cast(nsIDocShellTreeItem)shell : null);
    CheckException(__result);
  }

  /**
     * Get the child shell at |index|; returns null if |index| is out of bounds.
     */
  /* nsIDocShellTreeItem childShellAt (in long index); */
  nsIDocShellTreeItemD  ChildShellAt(PRInt32 index){
    nsIDocShellTreeItem _retval;
    nsresult __result = inner.ChildShellAt(index, &_retval);
    CheckException(__result);
    return new nsIDocShellTreeItemD(_retval);
  }

  /**
     * Clear the child shell list.
     */
  /* void clearChildShells (); */
  void ClearChildShells(){
    nsresult __result = inner.ClearChildShells();
    CheckException(__result);
  }

  /** Saved refresh URI list for the content viewer */
  /* attribute nsISupportsArray refreshURIList; */
  nsISupportsArrayD  RefreshURIList(){
    nsISupportsArray value;
    nsresult __result = inner.GetRefreshURIList(&value);
    CheckException(__result);
    return new nsISupportsArrayD(value);
  }
  void RefreshURIList(nsISupportsArrayD  aRefreshURIList){
    nsISupportsArray value;
    nsresult __result = inner.SetRefreshURIList(value);
    CheckException(__result);
  }

  /**
     * Ensure that the cached presentation members are self-consistent.
     * If either |contentViewer| or |windowState| are null, then all of the
     * following members are cleared/reset:
     *  contentViewer, sticky, windowState, viewerBounds, childShells,
     *  refreshURIList.
     */
  /* void syncPresentationState (); */
  void SyncPresentationState(){
    nsresult __result = inner.SyncPresentationState();
    CheckException(__result);
  }

  /** Title for the document */
  /* void setTitle (in AString aTitle); */
  void SetTitle(wchar[] aTitle){
    scope auto _aTitle = new AString(aTitle);
    nsresult __result = inner.SetTitle(cast(nsAString*)_aTitle);
    CheckException(__result);
  }

  /** Post Data for the document */
  /* attribute nsIInputStream postData; */
  nsIInputStreamD  PostData(){
    nsIInputStream value;
    nsresult __result = inner.GetPostData(&value);
    CheckException(__result);
    return new nsIInputStreamD(value);
  }
  void PostData(nsIInputStreamD  aPostData){
    nsIInputStream value;
    nsresult __result = inner.SetPostData(value);
    CheckException(__result);
  }

  /** LayoutHistoryState for scroll position and form values */
  /* attribute nsILayoutHistoryState layoutHistoryState; */
  nsILayoutHistoryStateD  LayoutHistoryState(){
    nsILayoutHistoryState value;
    nsresult __result = inner.GetLayoutHistoryState(&value);
    CheckException(__result);
    return new nsILayoutHistoryStateD(value);
  }
  void LayoutHistoryState(nsILayoutHistoryStateD  aLayoutHistoryState){
    nsILayoutHistoryState value;
    nsresult __result = inner.SetLayoutHistoryState(value);
    CheckException(__result);
  }

  /** parent of this entry */
  /* attribute nsISHEntry parent; */
  nsISHEntryD  Parent(){
    nsISHEntry value;
    nsresult __result = inner.GetParent(&value);
    CheckException(__result);
    return new nsISHEntryD(value);
  }
  void Parent(nsISHEntryD  aParent){
    nsISHEntry value;
    nsresult __result = inner.SetParent(value);
    CheckException(__result);
  }

  /**
     * The loadType for this entry. This is typically loadHistory except
     * when reload is pressed, it has the appropriate reload flag
     */
  /* attribute unsigned long loadType; */
  PRUint32 LoadType(){
    PRUint32 value;
    nsresult __result = inner.GetLoadType(&value);
    CheckException(__result);
    return value;
  }
  void LoadType(PRUint32 aLoadType){
    nsresult __result = inner.SetLoadType(aLoadType);
    CheckException(__result);
  }

  /**
     * An ID to help identify this entry from others during
     * subframe navigation
     */
  /* attribute unsigned long ID; */
  PRUint32 ID(){
    PRUint32 value;
    nsresult __result = inner.GetID(&value);
    CheckException(__result);
    return value;
  }
  void ID(PRUint32 aID){
    nsresult __result = inner.SetID(aID);
    CheckException(__result);
  }

  /**
     * pageIdentifier is an integer that should be the same for two entries
     * attached to the same docshell only if the two entries are entries for
     * the same page in the sense that one could go from the state represented
     * by one to the state represented by the other simply by scrolling (so the
     * entries are separated by an anchor traversal or a subframe navigation in
     * some other frame).
     */
  /* attribute unsigned long pageIdentifier; */
  PRUint32 PageIdentifier(){
    PRUint32 value;
    nsresult __result = inner.GetPageIdentifier(&value);
    CheckException(__result);
    return value;
  }
  void PageIdentifier(PRUint32 aPageIdentifier){
    nsresult __result = inner.SetPageIdentifier(aPageIdentifier);
    CheckException(__result);
  }

  /** attribute to set and get the cache key for the entry */
  /* attribute nsISupports cacheKey; */
  nsISupportsD  CacheKey(){
    nsISupports value;
    nsresult __result = inner.GetCacheKey(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }
  void CacheKey(nsISupportsD  aCacheKey){
    nsISupports value;
    nsresult __result = inner.SetCacheKey(value);
    CheckException(__result);
  }

  /** attribute to indicate whether layoutHistoryState should be saved */
  /* attribute boolean saveLayoutStateFlag; */
  PRBool SaveLayoutStateFlag(){
    PRBool value;
    nsresult __result = inner.GetSaveLayoutStateFlag(&value);
    CheckException(__result);
    return value;
  }
  void SaveLayoutStateFlag(PRBool aSaveLayoutStateFlag){
    nsresult __result = inner.SetSaveLayoutStateFlag(aSaveLayoutStateFlag);
    CheckException(__result);
  }

  /** attribute to indicate whether the page is already expired in cache */
  /* attribute boolean expirationStatus; */
  PRBool ExpirationStatus(){
    PRBool value;
    nsresult __result = inner.GetExpirationStatus(&value);
    CheckException(__result);
    return value;
  }
  void ExpirationStatus(PRBool aExpirationStatus){
    nsresult __result = inner.SetExpirationStatus(aExpirationStatus);
    CheckException(__result);
  }

  /**
     * attribute to indicate the content-type of the document that this
     * is a session history entry for
     */
  /* attribute ACString contentType; */
  char[] ContentType(){
    scope auto value = new ACString();
    nsresult __result = inner.GetContentType(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void ContentType(char[] aContentType){
    scope auto value = new ACString(aContentType);
    nsresult __result = inner.SetContentType(cast(nsACString*)value);
    CheckException(__result);
  }

  /** Set/Get scrollers' positon in anchored pages */
  /* void setScrollPosition (in long x, in long y); */
  void SetScrollPosition(PRInt32 x, PRInt32 y){
    nsresult __result = inner.SetScrollPosition(x, y);
    CheckException(__result);
  }

  /* void getScrollPosition (out long x, out long y); */
  void GetScrollPosition(out PRInt32 x, out PRInt32 y){
    nsresult __result = inner.GetScrollPosition(&x, &y);
    CheckException(__result);
  }

  /** Additional ways to create an entry */
  /* void create (in nsIURI URI, in AString title, in nsIInputStream inputStream, in nsILayoutHistoryState layoutHistoryState, in nsISupports cacheKey, in ACString contentType); */
  void Create(nsIURID URI, wchar[] title, nsIInputStreamD inputStream, nsILayoutHistoryStateD layoutHistoryState, nsISupportsD cacheKey, char[] contentType){
    scope auto _title = new AString(title);
    scope auto _contentType = new ACString(contentType);
    nsresult __result = inner.Create(URI ? cast(nsIURI)URI : null, cast(nsAString*)_title, inputStream ? cast(nsIInputStream)inputStream : null, layoutHistoryState ? cast(nsILayoutHistoryState)layoutHistoryState : null, cacheKey ? cast(nsISupports)cacheKey : null, cast(nsACString*)_contentType);
    CheckException(__result);
  }

  /* nsISHEntry clone (); */
  nsISHEntryD  Clone(){
    nsISHEntry _retval;
    nsresult __result = inner.Clone(&_retval);
    CheckException(__result);
    return new nsISHEntryD(_retval);
  }

  /** Attribute that indicates if this entry is for a subframe navigation */
  /* void setIsSubFrame (in boolean aFlag); */
  void SetIsSubFrame(PRBool aFlag){
    nsresult __result = inner.SetIsSubFrame(aFlag);
    CheckException(__result);
  }

  /** Return any content viewer present in or below this node in the
        nsSHEntry tree.  This will differ from contentViewer in the case
        where a child nsSHEntry has the content viewer for this tree. */
  /* nsIContentViewer getAnyContentViewer (out nsISHEntry ownerEntry); */
  nsIContentViewerD  GetAnyContentViewer(out nsISHEntryD ownerEntry){
    nsISHEntry _ownerEntry;
    nsIContentViewer _retval;
    nsresult __result = inner.GetAnyContentViewer(&_ownerEntry, &_retval);
    CheckException(__result);
    ownerEntry = _ownerEntry ? new nsISHEntryD(_ownerEntry) : null;
    return new nsIContentViewerD(_retval);
  }

private:
  nsISHEntry inner;

}

