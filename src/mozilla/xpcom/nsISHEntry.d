/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISHEntry.idl
 */

module mozilla.xpcom.nsISHEntry;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIHistoryEntry;

public import mozilla.xpcom.nsIContentViewer; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

public import mozilla.xpcom.nsIDocShellTreeItem; /* forward declaration */

public import mozilla.xpcom.nsISupportsArray; /* forward declaration */


/* starting interface:    nsISHEntry */
const char[] NS_ISHENTRY_IID_STR = "542a98b9-2889-4922-aaf4-02b6056f4136";

const nsIID NS_ISHENTRY_IID= 
  {0x542a98b9, 0x2889, 0x4922, 
    [ 0xaa, 0xf4, 0x02, 0xb6, 0x05, 0x6f, 0x41, 0x36 ]};

extern(Windows)
interface nsISHEntry : nsIHistoryEntry {
  static const char[] IID_STR = NS_ISHENTRY_IID_STR;
  static const nsIID IID = NS_ISHENTRY_IID;

  /** URI for the document */
  /* void setURI (in nsIURI aURI); */
  nsresult SetURI(nsIURI aURI);

  /** Referrer URI */
  /* attribute nsIURI referrerURI; */
  nsresult GetReferrerURI(nsIURI  *aReferrerURI);
  nsresult SetReferrerURI(nsIURI  aReferrerURI);

  /** Content viewer, for fast restoration of presentation */
  /* attribute nsIContentViewer contentViewer; */
  nsresult GetContentViewer(nsIContentViewer  *aContentViewer);
  nsresult SetContentViewer(nsIContentViewer  aContentViewer);

  /** Whether the content viewer is marked "sticky" */
  /* attribute boolean sticky; */
  nsresult GetSticky(PRBool *aSticky);
  nsresult SetSticky(PRBool aSticky);

  /** Saved state of the global window object */
  /* attribute nsISupports windowState; */
  nsresult GetWindowState(nsISupports  *aWindowState);
  nsresult SetWindowState(nsISupports  aWindowState);

  /**
     * Saved position and dimensions of the content viewer; we must adjust the
     * root view's widget accordingly if this has changed when the presentation
     * is restored.
     */
  /* [noscript] void getViewerBounds (in nsRect bounds); */
  nsresult GetViewerBounds(nsRect * bounds);

  /* [noscript] void setViewerBounds ([const] in nsRect bounds); */
  nsresult SetViewerBounds(nsRect * bounds);

  /**
     * Saved child docshells corresponding to contentViewer.  The child shells
     * are restored as children of the parent docshell, in this order, when the
     * parent docshell restores a saved presentation.
     */
/** Append a child shell to the end of our list. */
  /* void addChildShell (in nsIDocShellTreeItem shell); */
  nsresult AddChildShell(nsIDocShellTreeItem shell);

  /**
     * Get the child shell at |index|; returns null if |index| is out of bounds.
     */
  /* nsIDocShellTreeItem childShellAt (in long index); */
  nsresult ChildShellAt(PRInt32 index, nsIDocShellTreeItem *_retval);

  /**
     * Clear the child shell list.
     */
  /* void clearChildShells (); */
  nsresult ClearChildShells();

  /** Saved refresh URI list for the content viewer */
  /* attribute nsISupportsArray refreshURIList; */
  nsresult GetRefreshURIList(nsISupportsArray  *aRefreshURIList);
  nsresult SetRefreshURIList(nsISupportsArray  aRefreshURIList);

  /**
     * Ensure that the cached presentation members are self-consistent.
     * If either |contentViewer| or |windowState| are null, then all of the
     * following members are cleared/reset:
     *  contentViewer, sticky, windowState, viewerBounds, childShells,
     *  refreshURIList.
     */
  /* void syncPresentationState (); */
  nsresult SyncPresentationState();

  /** Title for the document */
  /* void setTitle (in AString aTitle); */
  nsresult SetTitle(nsAString * aTitle);

  /** Post Data for the document */
  /* attribute nsIInputStream postData; */
  nsresult GetPostData(nsIInputStream  *aPostData);
  nsresult SetPostData(nsIInputStream  aPostData);

  /** LayoutHistoryState for scroll position and form values */
  /* attribute nsILayoutHistoryState layoutHistoryState; */
  nsresult GetLayoutHistoryState(nsILayoutHistoryState  *aLayoutHistoryState);
  nsresult SetLayoutHistoryState(nsILayoutHistoryState  aLayoutHistoryState);

  /** parent of this entry */
  /* attribute nsISHEntry parent; */
  nsresult GetParent(nsISHEntry  *aParent);
  nsresult SetParent(nsISHEntry  aParent);

  /**
     * The loadType for this entry. This is typically loadHistory except
     * when reload is pressed, it has the appropriate reload flag
     */
  /* attribute unsigned long loadType; */
  nsresult GetLoadType(PRUint32 *aLoadType);
  nsresult SetLoadType(PRUint32 aLoadType);

  /**
     * An ID to help identify this entry from others during
     * subframe navigation
     */
  /* attribute unsigned long ID; */
  nsresult GetID(PRUint32 *aID);
  nsresult SetID(PRUint32 aID);

  /**
     * pageIdentifier is an integer that should be the same for two entries
     * attached to the same docshell only if the two entries are entries for
     * the same page in the sense that one could go from the state represented
     * by one to the state represented by the other simply by scrolling (so the
     * entries are separated by an anchor traversal or a subframe navigation in
     * some other frame).
     */
  /* attribute unsigned long pageIdentifier; */
  nsresult GetPageIdentifier(PRUint32 *aPageIdentifier);
  nsresult SetPageIdentifier(PRUint32 aPageIdentifier);

  /** attribute to set and get the cache key for the entry */
  /* attribute nsISupports cacheKey; */
  nsresult GetCacheKey(nsISupports  *aCacheKey);
  nsresult SetCacheKey(nsISupports  aCacheKey);

  /** attribute to indicate whether layoutHistoryState should be saved */
  /* attribute boolean saveLayoutStateFlag; */
  nsresult GetSaveLayoutStateFlag(PRBool *aSaveLayoutStateFlag);
  nsresult SetSaveLayoutStateFlag(PRBool aSaveLayoutStateFlag);

  /** attribute to indicate whether the page is already expired in cache */
  /* attribute boolean expirationStatus; */
  nsresult GetExpirationStatus(PRBool *aExpirationStatus);
  nsresult SetExpirationStatus(PRBool aExpirationStatus);

  /**
     * attribute to indicate the content-type of the document that this
     * is a session history entry for
     */
  /* attribute ACString contentType; */
  nsresult GetContentType(nsACString * aContentType);
  nsresult SetContentType(nsACString * aContentType);

  /** Set/Get scrollers' positon in anchored pages */
  /* void setScrollPosition (in long x, in long y); */
  nsresult SetScrollPosition(PRInt32 x, PRInt32 y);

  /* void getScrollPosition (out long x, out long y); */
  nsresult GetScrollPosition(PRInt32 *x, PRInt32 *y);

  /** Additional ways to create an entry */
  /* void create (in nsIURI URI, in AString title, in nsIInputStream inputStream, in nsILayoutHistoryState layoutHistoryState, in nsISupports cacheKey, in ACString contentType); */
  nsresult Create(nsIURI URI, nsAString * title, nsIInputStream inputStream, nsILayoutHistoryState layoutHistoryState, nsISupports cacheKey, nsACString * contentType);

  /* nsISHEntry clone (); */
  nsresult Clone(nsISHEntry *_retval);

  /** Attribute that indicates if this entry is for a subframe navigation */
  /* void setIsSubFrame (in boolean aFlag); */
  nsresult SetIsSubFrame(PRBool aFlag);

  /** Return any content viewer present in or below this node in the
        nsSHEntry tree.  This will differ from contentViewer in the case
        where a child nsSHEntry has the content viewer for this tree. */
  /* nsIContentViewer getAnyContentViewer (out nsISHEntry ownerEntry); */
  nsresult GetAnyContentViewer(nsISHEntry *ownerEntry, nsIContentViewer *_retval);

}

