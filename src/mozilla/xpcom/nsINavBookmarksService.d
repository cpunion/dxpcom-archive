/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINavBookmarksService.idl
 */

module mozilla.xpcom.nsINavBookmarksService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFile; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsITransaction; /* forward declaration */


/* starting interface:    nsINavBookmarkObserver */
const char[] NS_INAVBOOKMARKOBSERVER_IID_STR = "224f8162-4da8-45eb-8187-a8ba3a3db8e5";

const nsIID NS_INAVBOOKMARKOBSERVER_IID= 
  {0x224f8162, 0x4da8, 0x45eb, 
    [ 0x81, 0x87, 0xa8, 0xba, 0x3a, 0x3d, 0xb8, 0xe5 ]};

/**
 * Observer for bookmark changes.
 */
extern(Windows)
interface nsINavBookmarkObserver : nsISupports {
  static const char[] IID_STR = NS_INAVBOOKMARKOBSERVER_IID_STR;
  static const nsIID IID = NS_INAVBOOKMARKOBSERVER_IID;

  /**
   * Notify this observer that a batch transaction has started.
   * Other notifications will be sent during the batch change,
   * but the observer is guaranteed that onEndUpdateBatch() will be called
   * at the completion of changes.
   */
  /* void onBeginUpdateBatch (); */
  nsresult OnBeginUpdateBatch();

  /**
   * Notify this observer that a batch transaction has ended.
   */
  /* void onEndUpdateBatch (); */
  nsresult OnEndUpdateBatch();

  /**
   * Notify this observer that the bookmark was added.  Called after the actual
   * add took place. The rest of the bookmarks will be shifted down, but no
   * additional notifications will be sent.
   *
   * @param bookmark   The bookmark item that was added.
   * @param folder     The folder that the item was added to.
   * @param index      The item's index in the folder.
   */
  /* void onItemAdded (in nsIURI bookmark, in PRInt64 folder, in PRInt32 index); */
  nsresult OnItemAdded(nsIURI bookmark, PRInt64 folder, PRInt32 index);

  /**
   * Notify this observer that the bookmark was removed.  Called after the
   * actual remove took place. The bookmarks following the index will be
   * shifted up, but no additional notifications will be sent.
   *
   * @param bookmark   The bookmark item will be removed.
   * @param folder     The folder that the item was removed from.
   * @param index      The bookmark's index in the folder.
   */
  /* void onItemRemoved (in nsIURI bookmark, in PRInt64 folder, in PRInt32 index); */
  nsresult OnItemRemoved(nsIURI bookmark, PRInt64 folder, PRInt32 index);

  /**
   * Notify this observer that a bookmark's information has changed.  This
   * will be called whenever any attributes like "title" are changed.
   *
   * @param bookmark The bookmark which changed.
   * @param property The property which changed.
   *
   * property = "cleartime" (history was deleted, there is no last visit date):
   *                        value = none
   * property = "title": value = new title
   * property = "favicon": value = new "moz-anno" URL of favicon image
   */
  /* void onItemChanged (in nsIURI bookmark, in ACString property, in AString value); */
  nsresult OnItemChanged(nsIURI bookmark, nsACString * property, nsAString * value);

  /**
   * Notify that the item was visited. Normally in bookmarks we use the last
   * visit date, and normally the time will be a new visit that will be more
   * recent, but this is not guaranteed. You should check to see if it's
   * actually more recent before using this new time.
   *
   * @see onItemChanged properth = "cleartime" for when all visit dates are
   * deleted for the URI.
   */
  /* void onItemVisited (in nsIURI bookmark, in PRInt64 aVisitID, in PRTime time); */
  nsresult OnItemVisited(nsIURI bookmark, PRInt64 aVisitID, PRTime time);

  /**
   * Notify this observer that a bookmark has been replaced.
   *
   * @param folder   The folder in which the bookmark was replaced
   * @param item     The item which was replaced
   * @param newItem  The new item which replaced item
   */
  /* void onItemReplaced (in PRInt64 folder, in nsIURI item, in nsIURI newItem); */
  nsresult OnItemReplaced(PRInt64 folder, nsIURI item, nsIURI newItem);

  /**
   * Notify this observer that a bookmark folder has been added.
   *  @param folder     The id of the folder that was added.
   *  @param parent     The id of the folder's parent.
   *  @param index      The folder's index inside its parent.
   */
  /* void onFolderAdded (in PRInt64 folder, in PRInt64 parent, in PRInt32 index); */
  nsresult OnFolderAdded(PRInt64 folder, PRInt64 parent, PRInt32 index);

  /**
   * Notify this observer that a bookmark folder has been removed.
   *  @param folder     The id of the folder that was removed.
   *  @param parent     The id of the folder's old parent.
   *  @param index      The folder's old index in its parent.
   */
  /* void onFolderRemoved (in PRInt64 folder, in PRInt64 parent, in PRInt32 index); */
  nsresult OnFolderRemoved(PRInt64 folder, PRInt64 parent, PRInt32 index);

  /**
   * Notify this observer that a bookmark folder has been moved.
   *  @param folder     The id of the folder that was moved.
   *  @param oldParent  The id of the folder's old parent.
   *  @param oldIndex   The folder's old index inside oldParent.
   *  @param newParent  The id of the folder's new parent.
   *  @param newIndex   The folder's index inside newParent.
   */
  /* void onFolderMoved (in PRInt64 folder, in PRInt64 oldParent, in PRInt32 oldIndex, in PRInt64 newParent, in PRInt32 newIndex); */
  nsresult OnFolderMoved(PRInt64 folder, PRInt64 oldParent, PRInt32 oldIndex, PRInt64 newParent, PRInt32 newIndex);

  /**
   * Notify this observer that a bookmark folder's information has changed.
   * This will be called whenever any attributes like "title" are changed.
   *  @param folder     The id of the folder that was changed.
   *  @param property   The property that was changed.
   */
  /* void onFolderChanged (in PRInt64 folder, in ACString property); */
  nsresult OnFolderChanged(PRInt64 folder, nsACString * property);

  /**
   * Notify this observer that a separator has been added.
   *  @param parent     The id of the separator's parent.
   *  @param index      The separator's index inside its parent.
   */
  /* void onSeparatorAdded (in PRInt64 parent, in PRInt32 index); */
  nsresult OnSeparatorAdded(PRInt64 parent, PRInt32 index);

  /**
   * Notify this observer that a separator has been removed.
   *  @param parent     The id of the separator's parent.
   *  @param index      The separator's old index in its parent.
   */
  /* void onSeparatorRemoved (in PRInt64 parent, in PRInt32 index); */
  nsresult OnSeparatorRemoved(PRInt64 parent, PRInt32 index);

}


/* starting interface:    nsINavBookmarksService */
const char[] NS_INAVBOOKMARKSSERVICE_IID_STR = "860d786d-9bba-4011-a396-486a87af8f07";

const nsIID NS_INAVBOOKMARKSSERVICE_IID= 
  {0x860d786d, 0x9bba, 0x4011, 
    [ 0xa3, 0x96, 0x48, 0x6a, 0x87, 0xaf, 0x8f, 0x07 ]};

/**
 * The BookmarksService interface provides methods for managing bookmarked
 * history items.  Bookmarks consist of a set of user-customizable
 * folders.  A URI in history can be contained in one or more such folders.
 */
extern(Windows)
interface nsINavBookmarksService : nsISupports {
  static const char[] IID_STR = NS_INAVBOOKMARKSSERVICE_IID_STR;
  static const nsIID IID = NS_INAVBOOKMARKSSERVICE_IID;

  /**
   * The folder ID of the Places root.
   */
  /* readonly attribute PRInt64 placesRoot; */
  nsresult GetPlacesRoot(PRInt64 *aPlacesRoot);

  /**
   * The folder ID of the bookmarks root.
   */
  /* readonly attribute PRInt64 bookmarksRoot; */
  nsresult GetBookmarksRoot(PRInt64 *aBookmarksRoot);

  /**
   * The folder ID of the personal toolbar root.
   */
  /* readonly attribute PRInt64 toolbarRoot; */
  nsresult GetToolbarRoot(PRInt64 *aToolbarRoot);

  /**
   * The folder ID of the top-level folders that contain the tag "folders".
   *
   * NOTE: This isn't wired up yet, so don't try to use it for anything until
   *       bug 329961 is marked resolved.
   */
  /* readonly attribute PRInt64 tagRoot; */
  nsresult GetTagRoot(PRInt64 *aTagRoot);

  /**
   * Inserts a child item into the given folder. If this item already exists in
   * the given folder, it will be moved to the new position.
   *  @param folder     The id of the parent folder
   *  @param item       The URI to insert
   *  @param index      The index to insert at, or -1 to append
   */
  /* void insertItem (in PRInt64 folder, in nsIURI item, in PRInt32 index); */
  nsresult InsertItem(PRInt64 folder, nsIURI item, PRInt32 index);

  /**
   * Removes a child item from the given folder.
   *  @param folder     The folder to remove the child from
   *  @param item       The child item to remove
   */
  /* void removeItem (in PRInt64 folder, in nsIURI child); */
  nsresult RemoveItem(PRInt64 folder, nsIURI child);

  /**
   * Replace an item with a different item.
   *  @param folder     The folder which contains the item to replace
   *  @param item       The item which should be replaced
   *  @param newItem    The new item
   */
  /* void replaceItem (in PRInt64 folder, in nsIURI item, in nsIURI newItem); */
  nsresult ReplaceItem(PRInt64 folder, nsIURI item, nsIURI newItem);

  /**
   * Creates a new child folder and inserts it under the given parent.
   *  @param parent     The id of the parent folder
   *  @param name       The name of the new folder
   *  @param index      The index to insert at, or -1 to append
   *  @returns the ID of the newly-inserted folder
   */
  /* PRInt64 createFolder (in PRInt64 parent, in AString name, in PRInt32 index); */
  nsresult CreateFolder(PRInt64 parent, nsAString * name, PRInt32 index, PRInt64 *_retval);

  /**
   * Wrapper for container services.  Creates a folder under the given
   * parent and sets the container type.
   *  @param parent     The id of the parent folder
   *  @param name       The name of the new folder
   *  @param type       The type of container to insert
   *  @param index      The index to insert at, or -1 to append
   *  @returns the ID of the newly-inserted folder
   */
  /* PRInt64 createContainer (in PRInt64 parent, in AString name, in AString type, in PRInt32 index); */
  nsresult CreateContainer(PRInt64 parent, nsAString * name, nsAString * type, PRInt32 index, PRInt64 *_retval);

  /**
   * Removes a folder from the bookmarks tree.
   *  @param folder     The id of the folder to remove.
   */
  /* void removeFolder (in PRInt64 folder); */
  nsresult RemoveFolder(PRInt64 folder);

  /**
   * Gets an undo-able transaction for removing a folder from the bookmarks
   * tree. 
   *  @param folder     The id of the folder to remove.
   *  @returns An object implementing nsITransaction that can be used to undo 
   *           or redo the action. 
   *
   * This method exists because complex delete->undo operations rely on 
   * recreated folders to have the same ID they had before they were deleted, 
   * so that any other items deleted in different transactions can be 
   * re-inserted correctly. This provides a safe encapsulation of this 
   * functionality without exposing the ability to recreate folders with 
   * specific IDs (potentially dangerous if abused by other code!) in the
   * public API.
   */
  /* nsITransaction getRemoveFolderTransaction (in PRInt64 folder); */
  nsresult GetRemoveFolderTransaction(PRInt64 folder, nsITransaction *_retval);

  /**
   * Convenience function for container services.  Removes
   * all children of the given folder.
   *  @param folder     The id of the folder to remove children from.
   */
  /* void removeFolderChildren (in PRInt64 folder); */
  nsresult RemoveFolderChildren(PRInt64 folder);

  /**
   * Moves a folder to a different container, preserving its contents.
   *  @param folder      The folder to move
   *  @param newParent   The id of the folder's new parent
   *  @param index       The folder's index under newParent, or -1 to append
   */
  /* void moveFolder (in PRInt64 folder, in PRInt64 newParent, in PRInt32 index); */
  nsresult MoveFolder(PRInt64 folder, PRInt64 newParent, PRInt32 index);

  /**
   * Returns the ID of a child folder with the given name. This does not
   * recurse, you have to give it an immediate sibling of the given folder.
   * If the given subfolder doesn't exist, it will return 0.
   *  @param folder    Parent folder whose children we will search
   *  @param subFolder Name of the folder to search for in folder
   */
  /* PRInt64 getChildFolder (in PRInt64 folder, in AString subFolder); */
  nsresult GetChildFolder(PRInt64 folder, nsAString * subFolder, PRInt64 *_retval);

  /**
   * Inserts a bookmark separator into the given folder at the given index.
   * The separator can be removed using removeChildAt().
   *  @param folder    Parent folder of the separator
   *  @param index     The separator's index under folder, or -1 to append
   */
  /* void insertSeparator (in PRInt64 folder, in PRInt32 index); */
  nsresult InsertSeparator(PRInt64 folder, PRInt32 index);

  /**
   * Removes any type of child (item, folder, or separator) at the given index.
   *  @param folder    The folder to remove a child from
   *  @param index     The index of the child to remove
   */
  /* void removeChildAt (in PRInt64 folder, in PRInt32 index); */
  nsresult RemoveChildAt(PRInt64 folder, PRInt32 index);

  /**
   * Set the history/bookmark title for a URI.  The new title will be used
   * anywhere the URI is shown in bookmarks or history.
   *  @param uri   The URI whose name should be set
   *  @param title The new title for the URI
   */
  /* void setItemTitle (in nsIURI uri, in AString title); */
  nsresult SetItemTitle(nsIURI uri, nsAString * title);

  /**
   * Get the history/bookmark title for the URI.
   *
   * If no item title is available (for instance, if the URI doesn't appear 
   * in the bookmarks or history), it will return a void string (null in JS).
   *
   *  @param uri   The URI whose title should be retrieved
   *  @returns     The title for the URI.
   */
  /* AString getItemTitle (in nsIURI uri); */
  nsresult GetItemTitle(nsIURI uri, nsAString * _retval);

  /**
   * Set the title for a bookmark folder.
   *  @param folder     The folder whose title should be set
   *  @param title      The new title for the folder
   */
  /* void setFolderTitle (in PRInt64 folder, in AString title); */
  nsresult SetFolderTitle(PRInt64 folder, nsAString * title);

  /**
   * Get the title for a bookmark folder.  Throws an invalid argument
   * exception if it can't find a folder with the given ID.
   *
   *  @param folder     The folder whose title should be retrieved
   *  @returns          The title for the folder
   */
  /* AString getFolderTitle (in PRInt64 folder); */
  nsresult GetFolderTitle(PRInt64 folder, nsAString * _retval);

  /**
   * Get the place: url for a bookmark folder. You can use this value to
   * get/set the icon for a folder or to associate other data with it using
   * the annotation service. Its important that you use this function instead
   * of just serializing the query/options for a given folder because you
   * may have different options or query parameters. This function will give
   * the canonical value.
   * @param folder      The folder whose URI should be retrieved
   * @returns           The URI for the folder
   */
  /* nsIURI getFolderURI (in PRInt64 folder); */
  nsresult GetFolderURI(PRInt64 folder, nsIURI *_retval);

  /**
   * Checks whether a folder has read-only children.  This property is
   * defined by the nsIBookmarsContainer for the folder, if one exists.
   * If this is set to true, UI should not allow the user to add, remove,
   * or reorder children in this folder.  The default for all folders is false.
   */
  /* boolean getFolderReadonly (in PRInt64 folder); */
  nsresult GetFolderReadonly(PRInt64 folder, PRBool *_retval);

  /**
   * Returns true if the given URI is in any bookmark folder. If you want the
   * results to be redirect-aware, use getBookmarkedURIFor()
   */
  /* boolean isBookmarked (in nsIURI uri); */
  nsresult IsBookmarked(nsIURI uri, PRBool *_retval);

  /**
   * Used to see if the given URI is bookmarked, or any page that redirected to
   * it is bookmarked. For example, if I bookmark "mozilla.org" by manually
   * typing it in, and follow the bookmark, I will get redirected to
   * "www.mozilla.org". Logically, this new page is also bookmarked. This
   * function, if given "www.mozilla.org", will return the URI of the bookmark,
   * in this case "mozilla.org".
   *
   * If there is no bookmarked page found, it will return NULL.
   */
  /* nsIURI getBookmarkedURIFor (in nsIURI uri); */
  nsresult GetBookmarkedURIFor(nsIURI uri, nsIURI *_retval);

  /**
   * "Changes" the URI of a bookmark.  Since URIs are the unique
   * identifiers of bookmarks in this system, what this really means is
   * that all the metadata attached to oldURI will be copied onto newURI,
   * and oldURI will be deleted from the bookmark system.  If newURI
   * is already bookmarked, the metadata from oldURI will overwrite
   * the corresponding metadata on newURI.  Any annotations on oldURI
   * will be copied to newURI (a copy will remain on oldURI).
   */
  /* void changeBookmarkURI (in nsIURI oldURI, in nsIURI newURI); */
  nsresult ChangeBookmarkURI(nsIURI oldURI, nsIURI newURI);

  /**
   * Returns the list of folder ids that contain the given URI.
   */
  /* void getBookmarkFolders (in nsIURI uri, out PRUint32 count, [array, size_is (count), retval] out PRInt64 folders); */
  nsresult GetBookmarkFolders(nsIURI uri, PRUint32 *count, PRInt64 **folders);

  /**
   * TArray version of getBookmarkFolders for ease of use in C++ code.
   * Pass in a reference to a TArray; it will get cleared and filled with
   * the resulting list of folder IDs.
   */
  /* [noscript] void getBookmarkFoldersTArray (in nsIURI aURI, in PRInt64Array aResult); */
  nsresult GetBookmarkFoldersTArray(nsIURI aURI, nsTArray<PRInt64> * aResult);

  /**
   * Returns the index of the given item in the given folder.
   * Returns -1 if the item is not present in the folder.
   */
  /* PRInt32 indexOfItem (in PRInt64 folder, in nsIURI uri); */
  nsresult IndexOfItem(PRInt64 folder, nsIURI uri, PRInt32 *_retval);

  /**
   * Returns the index of the given subfolder in its parent.
   * Returns -1 if the subfolder is not present in the parent folder.
   */
  /* PRInt32 indexOfFolder (in PRInt64 parent, in PRInt64 folder); */
  nsresult IndexOfFolder(PRInt64 parent, PRInt64 folder, PRInt32 *_retval);

  /**
   * Associates the given keyword with the given URI.
   *
   * Use an empty keyword to clear the keyword associated with the URI. Use an
   * empty URI to clear the URI associated with that keyword. In both of these
   * cases, succeeds but does nothing if the URL/keyword is not found.
   *
   * When setting a keyword (both URI and keyword are specified), the URI must
   * be bookmarked for the keyword to be persistent.
   */
  /* void setKeywordForURI (in nsIURI uri, in AString keyword); */
  nsresult SetKeywordForURI(nsIURI uri, nsAString * keyword);

  /**
   * Retrieves the keyword for the given URI. Will be void string
   * (null in JS) if no such keyword is found.
   */
  /* AString getKeywordForURI (in nsIURI uri); */
  nsresult GetKeywordForURI(nsIURI uri, nsAString * _retval);

  /**
   * Returns the URI associated with the given keyword. Empty if no such
   * keyword is found.
   */
  /* nsIURI getURIForKeyword (in AString keyword); */
  nsresult GetURIForKeyword(nsAString * keyword, nsIURI *_retval);

  /**
   * Adds a bookmark observer. If ownsWeak is false, the bookmark service will
   * keep an owning reference to the observer.  If ownsWeak is true, then
   * aObserver must implement nsISupportsWeakReference, and the bookmark
   * service will keep a weak reference to the observer.
   */
  /* void addObserver (in nsINavBookmarkObserver observer, in boolean ownsWeak); */
  nsresult AddObserver(nsINavBookmarkObserver observer, PRBool ownsWeak);

  /**
   * Removes a bookmark observer.
   */
  /* void removeObserver (in nsINavBookmarkObserver observer); */
  nsresult RemoveObserver(nsINavBookmarkObserver observer);

  /**
   * Causes observers to be notified of a beginUpdateBatch when a lot of things
   * are about to change. Calls can be nested, observers will only be
   * notified when all batches begin/end.
   *
   * It is EXTREMELY IMPORTANT that you call EndUpdateBatch for each call to
   * beginUpdateBatch. If you don't do this, certain parts of the UI will not
   * get updated and any changes to bookmarks will not get written to disk.
   * From C++ code inside the places component, use nsBookmarksUpdateBatcher
   * defined in nsNavBookmarks.h to scope batches. For JS or from other
   * components, just please be very careful to close the batch, especially
   * when encountering an error and returning early.
   */
  /* void beginUpdateBatch (); */
  nsresult BeginUpdateBatch();

  /**
   * Causes observers to be notified of an endUpdateBatch when a batch is
   * done changing. Should match beginUpdateBatch or bad things will happen.
   */
  /* void endUpdateBatch (); */
  nsresult EndUpdateBatch();

  /**
   * Loads the given bookmarks.html file and merges it with the current
   * bookmarks hierarchy.
   */
  /* void importBookmarksHTML (in nsIURI url); */
  nsresult ImportBookmarksHTML(nsIURI url);

  /**
   * Loads the given bookmarks.html file and puts it in the given folder
   */
  /* void importBookmarksHTMLToFolder (in nsIURI url, in PRInt64 folder); */
  nsresult ImportBookmarksHTMLToFolder(nsIURI url, PRInt64 folder);

  /**
   * Saves the current bookmarks hierarchy to a bookmarks.html file.
   */
  /* void exportBookmarksHTML (in nsIFile file); */
  nsresult ExportBookmarksHTML(nsIFile file);

}

