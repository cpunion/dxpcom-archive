/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINavBookmarksService.idl
 */

module mozilla.dxpcom.nsINavBookmarksServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsINavBookmarksService;


public import mozilla.dxpcom.nsINavBookmarksServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsITransaction;

public import mozilla.dxpcom.nsITransactionD;


/* starting wrapper class:    nsINavBookmarkObserver */
/**
 * Observer for bookmark changes.
 */
class nsINavBookmarkObserverD : public nsISupportsD {

  static const nsIID IID = NS_INAVBOOKMARKOBSERVER_IID;


  alias nsINavBookmarkObserver InnerType;

  this(nsINavBookmarkObserver intr){
    super(intr);
    this.inner = intr;
  }

  nsINavBookmarkObserver opCast() {
    return inner;
  }

  void opAssign(nsINavBookmarkObserver value) {
    inner = value;
  }

  /**
   * Notify this observer that a batch transaction has started.
   * Other notifications will be sent during the batch change,
   * but the observer is guaranteed that onEndUpdateBatch() will be called
   * at the completion of changes.
   */
  /* void onBeginUpdateBatch (); */
  void OnBeginUpdateBatch(){
    nsresult __result = inner.OnBeginUpdateBatch();
    CheckException(__result);
  }

  /**
   * Notify this observer that a batch transaction has ended.
   */
  /* void onEndUpdateBatch (); */
  void OnEndUpdateBatch(){
    nsresult __result = inner.OnEndUpdateBatch();
    CheckException(__result);
  }

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
  void OnItemAdded(nsIURID bookmark, PRInt64 folder, PRInt32 index){
    nsresult __result = inner.OnItemAdded(bookmark ? cast(nsIURI)bookmark : null, folder, index);
    CheckException(__result);
  }

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
  void OnItemRemoved(nsIURID bookmark, PRInt64 folder, PRInt32 index){
    nsresult __result = inner.OnItemRemoved(bookmark ? cast(nsIURI)bookmark : null, folder, index);
    CheckException(__result);
  }

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
  void OnItemChanged(nsIURID bookmark, char[] property, wchar[] value){
    scope auto _property = new ACString(property);
    scope auto _value = new AString(value);
    nsresult __result = inner.OnItemChanged(bookmark ? cast(nsIURI)bookmark : null, cast(nsACString*)_property, cast(nsAString*)_value);
    CheckException(__result);
  }

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
  void OnItemVisited(nsIURID bookmark, PRInt64 aVisitID, PRTime time){
    nsresult __result = inner.OnItemVisited(bookmark ? cast(nsIURI)bookmark : null, aVisitID, time);
    CheckException(__result);
  }

  /**
   * Notify this observer that a bookmark has been replaced.
   *
   * @param folder   The folder in which the bookmark was replaced
   * @param item     The item which was replaced
   * @param newItem  The new item which replaced item
   */
  /* void onItemReplaced (in PRInt64 folder, in nsIURI item, in nsIURI newItem); */
  void OnItemReplaced(PRInt64 folder, nsIURID item, nsIURID newItem){
    nsresult __result = inner.OnItemReplaced(folder, item ? cast(nsIURI)item : null, newItem ? cast(nsIURI)newItem : null);
    CheckException(__result);
  }

  /**
   * Notify this observer that a bookmark folder has been added.
   *  @param folder     The id of the folder that was added.
   *  @param parent     The id of the folder's parent.
   *  @param index      The folder's index inside its parent.
   */
  /* void onFolderAdded (in PRInt64 folder, in PRInt64 parent, in PRInt32 index); */
  void OnFolderAdded(PRInt64 folder, PRInt64 parent, PRInt32 index){
    nsresult __result = inner.OnFolderAdded(folder, parent, index);
    CheckException(__result);
  }

  /**
   * Notify this observer that a bookmark folder has been removed.
   *  @param folder     The id of the folder that was removed.
   *  @param parent     The id of the folder's old parent.
   *  @param index      The folder's old index in its parent.
   */
  /* void onFolderRemoved (in PRInt64 folder, in PRInt64 parent, in PRInt32 index); */
  void OnFolderRemoved(PRInt64 folder, PRInt64 parent, PRInt32 index){
    nsresult __result = inner.OnFolderRemoved(folder, parent, index);
    CheckException(__result);
  }

  /**
   * Notify this observer that a bookmark folder has been moved.
   *  @param folder     The id of the folder that was moved.
   *  @param oldParent  The id of the folder's old parent.
   *  @param oldIndex   The folder's old index inside oldParent.
   *  @param newParent  The id of the folder's new parent.
   *  @param newIndex   The folder's index inside newParent.
   */
  /* void onFolderMoved (in PRInt64 folder, in PRInt64 oldParent, in PRInt32 oldIndex, in PRInt64 newParent, in PRInt32 newIndex); */
  void OnFolderMoved(PRInt64 folder, PRInt64 oldParent, PRInt32 oldIndex, PRInt64 newParent, PRInt32 newIndex){
    nsresult __result = inner.OnFolderMoved(folder, oldParent, oldIndex, newParent, newIndex);
    CheckException(__result);
  }

  /**
   * Notify this observer that a bookmark folder's information has changed.
   * This will be called whenever any attributes like "title" are changed.
   *  @param folder     The id of the folder that was changed.
   *  @param property   The property that was changed.
   */
  /* void onFolderChanged (in PRInt64 folder, in ACString property); */
  void OnFolderChanged(PRInt64 folder, char[] property){
    scope auto _property = new ACString(property);
    nsresult __result = inner.OnFolderChanged(folder, cast(nsACString*)_property);
    CheckException(__result);
  }

  /**
   * Notify this observer that a separator has been added.
   *  @param parent     The id of the separator's parent.
   *  @param index      The separator's index inside its parent.
   */
  /* void onSeparatorAdded (in PRInt64 parent, in PRInt32 index); */
  void OnSeparatorAdded(PRInt64 parent, PRInt32 index){
    nsresult __result = inner.OnSeparatorAdded(parent, index);
    CheckException(__result);
  }

  /**
   * Notify this observer that a separator has been removed.
   *  @param parent     The id of the separator's parent.
   *  @param index      The separator's old index in its parent.
   */
  /* void onSeparatorRemoved (in PRInt64 parent, in PRInt32 index); */
  void OnSeparatorRemoved(PRInt64 parent, PRInt32 index){
    nsresult __result = inner.OnSeparatorRemoved(parent, index);
    CheckException(__result);
  }

private:
  nsINavBookmarkObserver inner;

}


/* starting wrapper class:    nsINavBookmarksService */
/**
 * The BookmarksService interface provides methods for managing bookmarked
 * history items.  Bookmarks consist of a set of user-customizable
 * folders.  A URI in history can be contained in one or more such folders.
 */
class nsINavBookmarksServiceD : public nsISupportsD {

  static const nsIID IID = NS_INAVBOOKMARKSSERVICE_IID;


  alias nsINavBookmarksService InnerType;

  this(nsINavBookmarksService intr){
    super(intr);
    this.inner = intr;
  }

  nsINavBookmarksService opCast() {
    return inner;
  }

  void opAssign(nsINavBookmarksService value) {
    inner = value;
  }

  /**
   * The folder ID of the Places root.
   */
  /* readonly attribute PRInt64 placesRoot; */
  PRInt64 PlacesRoot(){
    PRInt64 value;
    nsresult __result = inner.GetPlacesRoot(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The folder ID of the bookmarks root.
   */
  /* readonly attribute PRInt64 bookmarksRoot; */
  PRInt64 BookmarksRoot(){
    PRInt64 value;
    nsresult __result = inner.GetBookmarksRoot(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The folder ID of the personal toolbar root.
   */
  /* readonly attribute PRInt64 toolbarRoot; */
  PRInt64 ToolbarRoot(){
    PRInt64 value;
    nsresult __result = inner.GetToolbarRoot(&value);
    CheckException(__result);
    return value;
  }

  /**
   * The folder ID of the top-level folders that contain the tag "folders".
   *
   * NOTE: This isn't wired up yet, so don't try to use it for anything until
   *       bug 329961 is marked resolved.
   */
  /* readonly attribute PRInt64 tagRoot; */
  PRInt64 TagRoot(){
    PRInt64 value;
    nsresult __result = inner.GetTagRoot(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Inserts a child item into the given folder. If this item already exists in
   * the given folder, it will be moved to the new position.
   *  @param folder     The id of the parent folder
   *  @param item       The URI to insert
   *  @param index      The index to insert at, or -1 to append
   */
  /* void insertItem (in PRInt64 folder, in nsIURI item, in PRInt32 index); */
  void InsertItem(PRInt64 folder, nsIURID item, PRInt32 index){
    nsresult __result = inner.InsertItem(folder, item ? cast(nsIURI)item : null, index);
    CheckException(__result);
  }

  /**
   * Removes a child item from the given folder.
   *  @param folder     The folder to remove the child from
   *  @param item       The child item to remove
   */
  /* void removeItem (in PRInt64 folder, in nsIURI child); */
  void RemoveItem(PRInt64 folder, nsIURID child){
    nsresult __result = inner.RemoveItem(folder, child ? cast(nsIURI)child : null);
    CheckException(__result);
  }

  /**
   * Replace an item with a different item.
   *  @param folder     The folder which contains the item to replace
   *  @param item       The item which should be replaced
   *  @param newItem    The new item
   */
  /* void replaceItem (in PRInt64 folder, in nsIURI item, in nsIURI newItem); */
  void ReplaceItem(PRInt64 folder, nsIURID item, nsIURID newItem){
    nsresult __result = inner.ReplaceItem(folder, item ? cast(nsIURI)item : null, newItem ? cast(nsIURI)newItem : null);
    CheckException(__result);
  }

  /**
   * Creates a new child folder and inserts it under the given parent.
   *  @param parent     The id of the parent folder
   *  @param name       The name of the new folder
   *  @param index      The index to insert at, or -1 to append
   *  @returns the ID of the newly-inserted folder
   */
  /* PRInt64 createFolder (in PRInt64 parent, in AString name, in PRInt32 index); */
  PRInt64 CreateFolder(PRInt64 parent, wchar[] name, PRInt32 index){
    scope auto _name = new AString(name);
    PRInt64 _retval;
    nsresult __result = inner.CreateFolder(parent, cast(nsAString*)_name, index, &_retval);
    CheckException(__result);
    return _retval;
  }

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
  PRInt64 CreateContainer(PRInt64 parent, wchar[] name, wchar[] type, PRInt32 index){
    scope auto _name = new AString(name);
    scope auto _type = new AString(type);
    PRInt64 _retval;
    nsresult __result = inner.CreateContainer(parent, cast(nsAString*)_name, cast(nsAString*)_type, index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Removes a folder from the bookmarks tree.
   *  @param folder     The id of the folder to remove.
   */
  /* void removeFolder (in PRInt64 folder); */
  void RemoveFolder(PRInt64 folder){
    nsresult __result = inner.RemoveFolder(folder);
    CheckException(__result);
  }

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
  nsITransactionD  GetRemoveFolderTransaction(PRInt64 folder){
    nsITransaction _retval;
    nsresult __result = inner.GetRemoveFolderTransaction(folder, &_retval);
    CheckException(__result);
    return new nsITransactionD(_retval);
  }

  /**
   * Convenience function for container services.  Removes
   * all children of the given folder.
   *  @param folder     The id of the folder to remove children from.
   */
  /* void removeFolderChildren (in PRInt64 folder); */
  void RemoveFolderChildren(PRInt64 folder){
    nsresult __result = inner.RemoveFolderChildren(folder);
    CheckException(__result);
  }

  /**
   * Moves a folder to a different container, preserving its contents.
   *  @param folder      The folder to move
   *  @param newParent   The id of the folder's new parent
   *  @param index       The folder's index under newParent, or -1 to append
   */
  /* void moveFolder (in PRInt64 folder, in PRInt64 newParent, in PRInt32 index); */
  void MoveFolder(PRInt64 folder, PRInt64 newParent, PRInt32 index){
    nsresult __result = inner.MoveFolder(folder, newParent, index);
    CheckException(__result);
  }

  /**
   * Returns the ID of a child folder with the given name. This does not
   * recurse, you have to give it an immediate sibling of the given folder.
   * If the given subfolder doesn't exist, it will return 0.
   *  @param folder    Parent folder whose children we will search
   *  @param subFolder Name of the folder to search for in folder
   */
  /* PRInt64 getChildFolder (in PRInt64 folder, in AString subFolder); */
  PRInt64 GetChildFolder(PRInt64 folder, wchar[] subFolder){
    scope auto _subFolder = new AString(subFolder);
    PRInt64 _retval;
    nsresult __result = inner.GetChildFolder(folder, cast(nsAString*)_subFolder, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Inserts a bookmark separator into the given folder at the given index.
   * The separator can be removed using removeChildAt().
   *  @param folder    Parent folder of the separator
   *  @param index     The separator's index under folder, or -1 to append
   */
  /* void insertSeparator (in PRInt64 folder, in PRInt32 index); */
  void InsertSeparator(PRInt64 folder, PRInt32 index){
    nsresult __result = inner.InsertSeparator(folder, index);
    CheckException(__result);
  }

  /**
   * Removes any type of child (item, folder, or separator) at the given index.
   *  @param folder    The folder to remove a child from
   *  @param index     The index of the child to remove
   */
  /* void removeChildAt (in PRInt64 folder, in PRInt32 index); */
  void RemoveChildAt(PRInt64 folder, PRInt32 index){
    nsresult __result = inner.RemoveChildAt(folder, index);
    CheckException(__result);
  }

  /**
   * Set the history/bookmark title for a URI.  The new title will be used
   * anywhere the URI is shown in bookmarks or history.
   *  @param uri   The URI whose name should be set
   *  @param title The new title for the URI
   */
  /* void setItemTitle (in nsIURI uri, in AString title); */
  void SetItemTitle(nsIURID uri, wchar[] title){
    scope auto _title = new AString(title);
    nsresult __result = inner.SetItemTitle(uri ? cast(nsIURI)uri : null, cast(nsAString*)_title);
    CheckException(__result);
  }

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
  wchar[] GetItemTitle(nsIURID uri){
    scope auto _retval = new AString;
    nsresult __result = inner.GetItemTitle(uri ? cast(nsIURI)uri : null, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Set the title for a bookmark folder.
   *  @param folder     The folder whose title should be set
   *  @param title      The new title for the folder
   */
  /* void setFolderTitle (in PRInt64 folder, in AString title); */
  void SetFolderTitle(PRInt64 folder, wchar[] title){
    scope auto _title = new AString(title);
    nsresult __result = inner.SetFolderTitle(folder, cast(nsAString*)_title);
    CheckException(__result);
  }

  /**
   * Get the title for a bookmark folder.  Throws an invalid argument
   * exception if it can't find a folder with the given ID.
   *
   *  @param folder     The folder whose title should be retrieved
   *  @returns          The title for the folder
   */
  /* AString getFolderTitle (in PRInt64 folder); */
  wchar[] GetFolderTitle(PRInt64 folder){
    scope auto _retval = new AString;
    nsresult __result = inner.GetFolderTitle(folder, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

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
  nsIURID  GetFolderURI(PRInt64 folder){
    nsIURI _retval;
    nsresult __result = inner.GetFolderURI(folder, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /**
   * Checks whether a folder has read-only children.  This property is
   * defined by the nsIBookmarsContainer for the folder, if one exists.
   * If this is set to true, UI should not allow the user to add, remove,
   * or reorder children in this folder.  The default for all folders is false.
   */
  /* boolean getFolderReadonly (in PRInt64 folder); */
  PRBool GetFolderReadonly(PRInt64 folder){
    PRBool _retval;
    nsresult __result = inner.GetFolderReadonly(folder, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Returns true if the given URI is in any bookmark folder. If you want the
   * results to be redirect-aware, use getBookmarkedURIFor()
   */
  /* boolean isBookmarked (in nsIURI uri); */
  PRBool IsBookmarked(nsIURID uri){
    PRBool _retval;
    nsresult __result = inner.IsBookmarked(uri ? cast(nsIURI)uri : null, &_retval);
    CheckException(__result);
    return _retval;
  }

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
  nsIURID  GetBookmarkedURIFor(nsIURID uri){
    nsIURI _retval;
    nsresult __result = inner.GetBookmarkedURIFor(uri ? cast(nsIURI)uri : null, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

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
  void ChangeBookmarkURI(nsIURID oldURI, nsIURID newURI){
    nsresult __result = inner.ChangeBookmarkURI(oldURI ? cast(nsIURI)oldURI : null, newURI ? cast(nsIURI)newURI : null);
    CheckException(__result);
  }

  /**
   * Returns the list of folder ids that contain the given URI.
   */
  /* void getBookmarkFolders (in nsIURI uri, out PRUint32 count, [array, size_is (count), retval] out PRInt64 folders); */
  void GetBookmarkFolders(nsIURID uri, out PRUint32 count, out PRInt64 *folders){
    nsresult __result = inner.GetBookmarkFolders(uri ? cast(nsIURI)uri : null, &count, &folders);
    CheckException(__result);
  }

  /**
   * TArray version of getBookmarkFolders for ease of use in C++ code.
   * Pass in a reference to a TArray; it will get cleared and filled with
   * the resulting list of folder IDs.
   */
  /* [noscript] void getBookmarkFoldersTArray (in nsIURI aURI, in PRInt64Array aResult); */
  void GetBookmarkFoldersTArray(nsIURID aURI, nsTArray<PRInt64> * aResult){
    nsresult __result = inner.GetBookmarkFoldersTArray(aURI ? cast(nsIURI)aURI : null, aResult);
    CheckException(__result);
  }

  /**
   * Returns the index of the given item in the given folder.
   * Returns -1 if the item is not present in the folder.
   */
  /* PRInt32 indexOfItem (in PRInt64 folder, in nsIURI uri); */
  PRInt32 IndexOfItem(PRInt64 folder, nsIURID uri){
    PRInt32 _retval;
    nsresult __result = inner.IndexOfItem(folder, uri ? cast(nsIURI)uri : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Returns the index of the given subfolder in its parent.
   * Returns -1 if the subfolder is not present in the parent folder.
   */
  /* PRInt32 indexOfFolder (in PRInt64 parent, in PRInt64 folder); */
  PRInt32 IndexOfFolder(PRInt64 parent, PRInt64 folder){
    PRInt32 _retval;
    nsresult __result = inner.IndexOfFolder(parent, folder, &_retval);
    CheckException(__result);
    return _retval;
  }

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
  void SetKeywordForURI(nsIURID uri, wchar[] keyword){
    scope auto _keyword = new AString(keyword);
    nsresult __result = inner.SetKeywordForURI(uri ? cast(nsIURI)uri : null, cast(nsAString*)_keyword);
    CheckException(__result);
  }

  /**
   * Retrieves the keyword for the given URI. Will be void string
   * (null in JS) if no such keyword is found.
   */
  /* AString getKeywordForURI (in nsIURI uri); */
  wchar[] GetKeywordForURI(nsIURID uri){
    scope auto _retval = new AString;
    nsresult __result = inner.GetKeywordForURI(uri ? cast(nsIURI)uri : null, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Returns the URI associated with the given keyword. Empty if no such
   * keyword is found.
   */
  /* nsIURI getURIForKeyword (in AString keyword); */
  nsIURID  GetURIForKeyword(wchar[] keyword){
    scope auto _keyword = new AString(keyword);
    nsIURI _retval;
    nsresult __result = inner.GetURIForKeyword(cast(nsAString*)_keyword, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

  /**
   * Adds a bookmark observer. If ownsWeak is false, the bookmark service will
   * keep an owning reference to the observer.  If ownsWeak is true, then
   * aObserver must implement nsISupportsWeakReference, and the bookmark
   * service will keep a weak reference to the observer.
   */
  /* void addObserver (in nsINavBookmarkObserver observer, in boolean ownsWeak); */
  void AddObserver(nsINavBookmarkObserverD observer, PRBool ownsWeak){
    nsresult __result = inner.AddObserver(observer ? cast(nsINavBookmarkObserver)observer : null, ownsWeak);
    CheckException(__result);
  }

  /**
   * Removes a bookmark observer.
   */
  /* void removeObserver (in nsINavBookmarkObserver observer); */
  void RemoveObserver(nsINavBookmarkObserverD observer){
    nsresult __result = inner.RemoveObserver(observer ? cast(nsINavBookmarkObserver)observer : null);
    CheckException(__result);
  }

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
  void BeginUpdateBatch(){
    nsresult __result = inner.BeginUpdateBatch();
    CheckException(__result);
  }

  /**
   * Causes observers to be notified of an endUpdateBatch when a batch is
   * done changing. Should match beginUpdateBatch or bad things will happen.
   */
  /* void endUpdateBatch (); */
  void EndUpdateBatch(){
    nsresult __result = inner.EndUpdateBatch();
    CheckException(__result);
  }

  /**
   * Loads the given bookmarks.html file and merges it with the current
   * bookmarks hierarchy.
   */
  /* void importBookmarksHTML (in nsIURI url); */
  void ImportBookmarksHTML(nsIURID url){
    nsresult __result = inner.ImportBookmarksHTML(url ? cast(nsIURI)url : null);
    CheckException(__result);
  }

  /**
   * Loads the given bookmarks.html file and puts it in the given folder
   */
  /* void importBookmarksHTMLToFolder (in nsIURI url, in PRInt64 folder); */
  void ImportBookmarksHTMLToFolder(nsIURID url, PRInt64 folder){
    nsresult __result = inner.ImportBookmarksHTMLToFolder(url ? cast(nsIURI)url : null, folder);
    CheckException(__result);
  }

  /**
   * Saves the current bookmarks hierarchy to a bookmarks.html file.
   */
  /* void exportBookmarksHTML (in nsIFile file); */
  void ExportBookmarksHTML(nsIFileD file){
    nsresult __result = inner.ExportBookmarksHTML(file ? cast(nsIFile)file : null);
    CheckException(__result);
  }

private:
  nsINavBookmarksService inner;

}

