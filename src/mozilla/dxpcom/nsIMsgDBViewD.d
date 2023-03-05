/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgDBView.idl
 */

module mozilla.dxpcom.nsIMsgDBViewD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgDBView;


public import mozilla.dxpcom.nsIMsgDBViewD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.MailNewsTypes2;
public import mozilla.dxpcom.MailNewsTypes2D;

public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsIMessenger;

public import mozilla.dxpcom.nsIMessengerD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;

public import mozilla.xpcom.nsIMsgDBView;

import mozilla.dxpcom.nsIMsgDBViewD;

public import mozilla.xpcom.nsIMsgDatabase;

public import mozilla.dxpcom.nsIMsgDatabaseD;

public import mozilla.xpcom.nsIMsgSearchSession;

public import mozilla.dxpcom.nsIMsgSearchSessionD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;

public import mozilla.xpcom.nsITreeView;

public import mozilla.dxpcom.nsITreeViewD;

public import mozilla.xpcom.nsIMsgCustomColumnHandler;

public import mozilla.dxpcom.nsIMsgCustomColumnHandlerD;


/* starting wrapper class:    nsMsgViewSortOrder */
class nsMsgViewSortOrderD {

  static const nsIID IID = NS_MSGVIEWSORTORDER_IID;


  alias nsMsgViewSortOrder InnerType;

  this(nsMsgViewSortOrder intr){
    this.inner = intr;
  }

  nsMsgViewSortOrder opCast() {
    return inner;
  }

  void opAssign(nsMsgViewSortOrder value) {
    inner = value;
  }

  enum { none = 0 }

  enum { ascending = 1 }

  enum { descending = 2 }

private:
  nsMsgViewSortOrder inner;

}


/* starting wrapper class:    nsMsgViewType */
class nsMsgViewTypeD {

  static const nsIID IID = NS_MSGVIEWTYPE_IID;


  alias nsMsgViewType InnerType;

  this(nsMsgViewType intr){
    this.inner = intr;
  }

  nsMsgViewType opCast() {
    return inner;
  }

  void opAssign(nsMsgViewType value) {
    inner = value;
  }

  enum { eShowAllThreads = 0 }

  enum { eShowThreadsWithUnread = 2 }

  enum { eShowWatchedThreadsWithUnread = 3 }

  enum { eShowQuickSearchResults = 4 }

  enum { eShowVirtualFolderResults = 5 }

  enum { eShowSearch = 6 }

private:
  nsMsgViewType inner;

}


/* starting wrapper class:    nsMsgViewFlagsType */
class nsMsgViewFlagsTypeD {

  static const nsIID IID = NS_MSGVIEWFLAGSTYPE_IID;


  alias nsMsgViewFlagsType InnerType;

  this(nsMsgViewFlagsType intr){
    this.inner = intr;
  }

  nsMsgViewFlagsType opCast() {
    return inner;
  }

  void opAssign(nsMsgViewFlagsType value) {
    inner = value;
  }

  /**
     * flags for GetViewFlags
     */
  enum { kNone = 0 }

  enum { kThreadedDisplay = 1 }

  enum { kShowIgnored = 8 }

  enum { kUnreadOnly = 16 }

  enum { kExpandAll = 32 }

  enum { kGroupBySort = 64 }

private:
  nsMsgViewFlagsType inner;

}


/* starting wrapper class:    nsMsgViewSortType */
class nsMsgViewSortTypeD {

  static const nsIID IID = NS_MSGVIEWSORTTYPE_IID;


  alias nsMsgViewSortType InnerType;

  this(nsMsgViewSortType intr){
    this.inner = intr;
  }

  nsMsgViewSortType opCast() {
    return inner;
  }

  void opAssign(nsMsgViewSortType value) {
    inner = value;
  }

  enum { byNone = 17 }

  enum { byDate = 18 }

  enum { bySubject = 19 }

  enum { byAuthor = 20 }

  enum { byId = 21 }

  enum { byThread = 22 }

  enum { byPriority = 23 }

  enum { byStatus = 24 }

  enum { bySize = 25 }

  enum { byFlagged = 26 }

  enum { byUnread = 27 }

  enum { byRecipient = 28 }

  enum { byLocation = 29 }

  enum { byTags = 30 }

  enum { byJunkStatus = 31 }

  enum { byAttachments = 32 }

  enum { byAccount = 33 }

  enum { byCustom = 34 }

private:
  nsMsgViewSortType inner;

}


/* starting wrapper class:    nsMsgViewNotificationCode */
class nsMsgViewNotificationCodeD {

  static const nsIID IID = NS_MSGVIEWNOTIFICATIONCODE_IID;


  alias nsMsgViewNotificationCode InnerType;

  this(nsMsgViewNotificationCode intr){
    this.inner = intr;
  }

  nsMsgViewNotificationCode opCast() {
    return inner;
  }

  void opAssign(nsMsgViewNotificationCode value) {
    inner = value;
  }

  enum { none = 0 }

  enum { insertOrDelete = 1 }

  enum { changed = 2 }

  enum { scramble = 3 }

  enum { all = 4 }

  enum { totalContentChanged = 5 }

  enum { newTopIndex = 6 }

private:
  nsMsgViewNotificationCode inner;

}


/* starting wrapper class:    nsMsgViewCommandCheckState */
class nsMsgViewCommandCheckStateD {

  static const nsIID IID = NS_MSGVIEWCOMMANDCHECKSTATE_IID;


  alias nsMsgViewCommandCheckState InnerType;

  this(nsMsgViewCommandCheckState intr){
    this.inner = intr;
  }

  nsMsgViewCommandCheckState opCast() {
    return inner;
  }

  void opAssign(nsMsgViewCommandCheckState value) {
    inner = value;
  }

  enum { notUsed = 0 }

  enum { checked = 1 }

  enum { unchecked = 2 }

private:
  nsMsgViewCommandCheckState inner;

}


/* starting wrapper class:    nsMsgViewCommandType */
class nsMsgViewCommandTypeD {

  static const nsIID IID = NS_MSGVIEWCOMMANDTYPE_IID;


  alias nsMsgViewCommandType InnerType;

  this(nsMsgViewCommandType intr){
    this.inner = intr;
  }

  nsMsgViewCommandType opCast() {
    return inner;
  }

  void opAssign(nsMsgViewCommandType value) {
    inner = value;
  }

  enum { markMessagesRead = 0 }

  enum { markMessagesUnread = 1 }

  enum { toggleMessageRead = 2 }

  enum { flagMessages = 3 }

  enum { unflagMessages = 4 }

  enum { toggleThreadWatched = 6 }

  enum { deleteMsg = 7 }

  enum { deleteNoTrash = 8 }

  enum { markThreadRead = 9 }

  enum { markAllRead = 10 }

  enum { expandAll = 11 }

  enum { collapseAll = 12 }

  enum { copyMessages = 13 }

  enum { moveMessages = 14 }

  enum { selectAll = 15 }

  enum { downloadSelectedForOffline = 16 }

  enum { downloadFlaggedForOffline = 17 }

  enum { selectThread = 18 }

  enum { selectFlagged = 19 }

  enum { cmdRequiringMsgBody = 20 }

  enum { label0 = 21 }

  enum { label1 = 22 }

  enum { label2 = 23 }

  enum { label3 = 24 }

  enum { label4 = 25 }

  enum { label5 = 26 }

  enum { lastLabel = 26 }

  enum { junk = 27 }

  enum { unjunk = 28 }

  enum { undeleteMsg = 29 }

  enum { applyFilters = 30 }

  enum { runJunkControls = 31 }

  enum { deleteJunk = 32 }

private:
  nsMsgViewCommandType inner;

}


/* starting wrapper class:    nsMsgNavigationType */
class nsMsgNavigationTypeD {

  static const nsIID IID = NS_MSGNAVIGATIONTYPE_IID;


  alias nsMsgNavigationType InnerType;

  this(nsMsgNavigationType intr){
    this.inner = intr;
  }

  nsMsgNavigationType opCast() {
    return inner;
  }

  void opAssign(nsMsgNavigationType value) {
    inner = value;
  }

  enum { firstMessage = 1 }

  enum { nextMessage = 2 }

  enum { previousMessage = 3 }

  enum { lastMessage = 4 }

  /**
   * must match nsMsgViewCommandTypeValue toggleThreadKilled
   */
  enum { toggleThreadKilled = 5 }

  enum { firstUnreadMessage = 6 }

  enum { nextUnreadMessage = 7 }

  enum { previousUnreadMessage = 8 }

  enum { lastUnreadMessage = 9 }

  enum { nextUnreadThread = 10 }

  enum { nextUnreadFolder = 11 }

  enum { nextFolder = 12 }

  enum { readMore = 13 }

  /**
   * Go back to the previous visited message
   */
  enum { back = 15 }

  /**
   * Go forward to the previous visited message 
   */
  enum { forward = 16 }

  enum { firstFlagged = 17 }

  enum { nextFlagged = 18 }

  enum { previousFlagged = 19 }

  enum { firstNew = 20 }

  enum { editUndo = 21 }

  enum { editRedo = 22 }

private:
  nsMsgNavigationType inner;

}


/* starting wrapper class:    nsIMsgDBView */
class nsIMsgDBViewD : public nsISupportsD {

  static const nsIID IID = NS_IMSGDBVIEW_IID;


  alias nsIMsgDBView InnerType;

  this(nsIMsgDBView intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgDBView opCast() {
    return inner;
  }

  void opAssign(nsIMsgDBView value) {
    inner = value;
  }

  /* void open (in nsIMsgFolder folder, in nsMsgViewSortTypeValue sortType, in nsMsgViewSortOrderValue sortOrder, in nsMsgViewFlagsTypeValue viewFlags, out long count); */
  void Open(nsIMsgFolderD folder, nsMsgViewSortTypeValue sortType, nsMsgViewSortOrderValue sortOrder, nsMsgViewFlagsTypeValue viewFlags, out PRInt32 count){
    nsresult __result = inner.Open(folder ? cast(nsIMsgFolder)folder : null, sortType, sortOrder, viewFlags, &count);
    CheckException(__result);
  }

  /* void openWithHdrs (in nsISimpleEnumerator aHeaders, in nsMsgViewSortTypeValue aSortType, in nsMsgViewSortOrderValue aSortOrder, in nsMsgViewFlagsTypeValue aViewFlags, out long aCount); */
  void OpenWithHdrs(nsISimpleEnumeratorD aHeaders, nsMsgViewSortTypeValue aSortType, nsMsgViewSortOrderValue aSortOrder, nsMsgViewFlagsTypeValue aViewFlags, out PRInt32 aCount){
    nsresult __result = inner.OpenWithHdrs(aHeaders ? cast(nsISimpleEnumerator)aHeaders : null, aSortType, aSortOrder, aViewFlags, &aCount);
    CheckException(__result);
  }

  /* void close (); */
  void Close(){
    nsresult __result = inner.Close();
    CheckException(__result);
  }

  /* void init (in nsIMessenger aMessengerInstance, in nsIMsgWindow aMsgWindow, in nsIMsgDBViewCommandUpdater aCommandUpdater); */
  void Init(nsIMessengerD aMessengerInstance, nsIMsgWindowD aMsgWindow, nsIMsgDBViewCommandUpdaterD aCommandUpdater){
    nsresult __result = inner.Init(aMessengerInstance ? cast(nsIMessenger)aMessengerInstance : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aCommandUpdater ? cast(nsIMsgDBViewCommandUpdater)aCommandUpdater : null);
    CheckException(__result);
  }

  /* void sort (in nsMsgViewSortTypeValue sortType, in nsMsgViewSortOrderValue sortOrder); */
  void Sort(nsMsgViewSortTypeValue sortType, nsMsgViewSortOrderValue sortOrder){
    nsresult __result = inner.Sort(sortType, sortOrder);
    CheckException(__result);
  }

  /* void doCommand (in nsMsgViewCommandTypeValue command); */
  void DoCommand(nsMsgViewCommandTypeValue command){
    nsresult __result = inner.DoCommand(command);
    CheckException(__result);
  }

  /* void doCommandWithFolder (in nsMsgViewCommandTypeValue command, in nsIMsgFolder destFolder); */
  void DoCommandWithFolder(nsMsgViewCommandTypeValue command, nsIMsgFolderD destFolder){
    nsresult __result = inner.DoCommandWithFolder(command, destFolder ? cast(nsIMsgFolder)destFolder : null);
    CheckException(__result);
  }

  /* void getCommandStatus (in nsMsgViewCommandTypeValue command, out boolean selectable_p, out nsMsgViewCommandCheckStateValue selected_p); */
  void GetCommandStatus(nsMsgViewCommandTypeValue command, out PRBool selectable_p, out nsMsgViewCommandCheckStateValue selected_p){
    nsresult __result = inner.GetCommandStatus(command, &selectable_p, &selected_p);
    CheckException(__result);
  }

  /* readonly attribute nsMsgViewTypeValue viewType; */
  nsMsgViewTypeValue ViewType(){
    nsMsgViewTypeValue value;
    nsresult __result = inner.GetViewType(&value);
    CheckException(__result);
    return value;
  }

  /* attribute nsMsgViewFlagsTypeValue viewFlags; */
  nsMsgViewFlagsTypeValue ViewFlags(){
    nsMsgViewFlagsTypeValue value;
    nsresult __result = inner.GetViewFlags(&value);
    CheckException(__result);
    return value;
  }
  void ViewFlags(nsMsgViewFlagsTypeValue aViewFlags){
    nsMsgViewFlagsTypeValue value;
    nsresult __result = inner.SetViewFlags(value);
    CheckException(__result);
  }

  /* attribute nsMsgViewSortTypeValue sortType; */
  nsMsgViewSortTypeValue SortType(){
    nsMsgViewSortTypeValue value;
    nsresult __result = inner.GetSortType(&value);
    CheckException(__result);
    return value;
  }
  void SortType(nsMsgViewSortTypeValue aSortType){
    nsMsgViewSortTypeValue value;
    nsresult __result = inner.SetSortType(value);
    CheckException(__result);
  }

  /* readonly attribute nsMsgViewSortOrderValue sortOrder; */
  nsMsgViewSortOrderValue SortOrder(){
    nsMsgViewSortOrderValue value;
    nsresult __result = inner.GetSortOrder(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsMsgKey keyForFirstSelectedMessage; */
  nsMsgKey KeyForFirstSelectedMessage(){
    nsMsgKey value;
    nsresult __result = inner.GetKeyForFirstSelectedMessage(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsMsgViewIndex viewIndexForFirstSelectedMsg; */
  nsMsgViewIndex ViewIndexForFirstSelectedMsg(){
    nsMsgViewIndex value;
    nsresult __result = inner.GetViewIndexForFirstSelectedMsg(&value);
    CheckException(__result);
    return value;
  }

  /**
     * this method will automatically expand the destination thread, 
     * if needs be. 
     */
  /* void viewNavigate (in nsMsgNavigationTypeValue motion, out nsMsgKey resultId, out nsMsgViewIndex resultIndex, out nsMsgViewIndex threadIndex, in boolean wrap); */
  void ViewNavigate(nsMsgNavigationTypeValue motion, out nsMsgKey resultId, out nsMsgViewIndex resultIndex, out nsMsgViewIndex threadIndex, PRBool wrap){
    nsresult __result = inner.ViewNavigate(motion, &resultId, &resultIndex, &threadIndex, wrap);
    CheckException(__result);
  }

  /**
     * Indicates if navigation of the passed motion type is valid. 
     */
  /* boolean navigateStatus (in nsMsgNavigationTypeValue motion); */
  PRBool NavigateStatus(nsMsgNavigationTypeValue motion){
    PRBool _retval;
    nsresult __result = inner.NavigateStatus(motion, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* readonly attribute nsIMsgFolder msgFolder; */
  nsIMsgFolderD  MsgFolder(){
    nsIMsgFolder value;
    nsresult __result = inner.GetMsgFolder(&value);
    CheckException(__result);
    return new nsIMsgFolderD(value);
  }

  /* attribute nsIMsgFolder viewFolder; */
  nsIMsgFolderD  ViewFolder(){
    nsIMsgFolder value;
    nsresult __result = inner.GetViewFolder(&value);
    CheckException(__result);
    return new nsIMsgFolderD(value);
  }
  void ViewFolder(nsIMsgFolderD  aViewFolder){
    nsIMsgFolder value;
    nsresult __result = inner.SetViewFolder(value);
    CheckException(__result);
  }

  /* nsMsgKey getKeyAt (in nsMsgViewIndex index); */
  nsMsgKey GetKeyAt(nsMsgViewIndex index){
    nsMsgKey _retval;
    nsresult __result = inner.GetKeyAt(index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIMsgFolder getFolderForViewIndex (in nsMsgViewIndex index); */
  nsIMsgFolderD  GetFolderForViewIndex(nsMsgViewIndex index){
    nsIMsgFolder _retval;
    nsresult __result = inner.GetFolderForViewIndex(index, &_retval);
    CheckException(__result);
    return new nsIMsgFolderD(_retval);
  }

  /* string getURIForViewIndex (in nsMsgViewIndex index); */
  char* GetURIForViewIndex(nsMsgViewIndex index){
    char* _retval;
    nsresult __result = inner.GetURIForViewIndex(index, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIMsgDBView cloneDBView (in nsIMessenger aMessengerInstance, in nsIMsgWindow aMsgWindow, in nsIMsgDBViewCommandUpdater aCommandUpdater); */
  nsIMsgDBViewD  CloneDBView(nsIMessengerD aMessengerInstance, nsIMsgWindowD aMsgWindow, nsIMsgDBViewCommandUpdaterD aCommandUpdater){
    nsIMsgDBView _retval;
    nsresult __result = inner.CloneDBView(aMessengerInstance ? cast(nsIMessenger)aMessengerInstance : null, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, aCommandUpdater ? cast(nsIMsgDBViewCommandUpdater)aCommandUpdater : null, &_retval);
    CheckException(__result);
    return new nsIMsgDBViewD(_retval);
  }

  /* void getURIsForSelection ([array, size_is (count)] out string uris, out unsigned long count); */
  void GetURIsForSelection(out char**uris, out PRUint32 count){
    nsresult __result = inner.GetURIsForSelection(&uris, &count);
    CheckException(__result);
  }

  /* void getIndicesForSelection ([array, size_is (count)] out nsMsgViewIndex indices, out unsigned long count); */
  void GetIndicesForSelection(out nsMsgViewIndex *indices, out PRUint32 count){
    nsresult __result = inner.GetIndicesForSelection(&indices, &count);
    CheckException(__result);
  }

  /* readonly attribute string URIForFirstSelectedMessage; */
  char* URIForFirstSelectedMessage(){
    char* value;
    nsresult __result = inner.GetURIForFirstSelectedMessage(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIMsgDBHdr hdrForFirstSelectedMessage; */
  nsIMsgDBHdrD  HdrForFirstSelectedMessage(){
    nsIMsgDBHdr value;
    nsresult __result = inner.GetHdrForFirstSelectedMessage(&value);
    CheckException(__result);
    return new nsIMsgDBHdrD(value);
  }

  /* void loadMessageByMsgKey (in nsMsgKey aMsgKey); */
  void LoadMessageByMsgKey(nsMsgKey aMsgKey){
    nsresult __result = inner.LoadMessageByMsgKey(aMsgKey);
    CheckException(__result);
  }

  /* void loadMessageByViewIndex (in nsMsgViewIndex aIndex); */
  void LoadMessageByViewIndex(nsMsgViewIndex aIndex){
    nsresult __result = inner.LoadMessageByViewIndex(aIndex);
    CheckException(__result);
  }

  /* void loadMessageByUrl (in string aUrl); */
  void LoadMessageByUrl(char*aUrl){
    nsresult __result = inner.LoadMessageByUrl(aUrl);
    CheckException(__result);
  }

  /* void reloadMessage (); */
  void ReloadMessage(){
    nsresult __result = inner.ReloadMessage();
    CheckException(__result);
  }

  /* void reloadMessageWithAllParts (); */
  void ReloadMessageWithAllParts(){
    nsresult __result = inner.ReloadMessageWithAllParts();
    CheckException(__result);
  }

  /* readonly attribute unsigned long numSelected; */
  PRUint32 NumSelected(){
    PRUint32 value;
    nsresult __result = inner.GetNumSelected(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsMsgViewIndex msgToSelectAfterDelete; */
  nsMsgViewIndex MsgToSelectAfterDelete(){
    nsMsgViewIndex value;
    nsresult __result = inner.GetMsgToSelectAfterDelete(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsMsgViewIndex currentlyDisplayedMessage; */
  nsMsgViewIndex CurrentlyDisplayedMessage(){
    nsMsgViewIndex value;
    nsresult __result = inner.GetCurrentlyDisplayedMessage(&value);
    CheckException(__result);
    return value;
  }

  /* void selectMsgByKey (in nsMsgKey key); */
  void SelectMsgByKey(nsMsgKey key){
    nsresult __result = inner.SelectMsgByKey(key);
    CheckException(__result);
  }

  /* attribute boolean suppressMsgDisplay; */
  PRBool SuppressMsgDisplay(){
    PRBool value;
    nsresult __result = inner.GetSuppressMsgDisplay(&value);
    CheckException(__result);
    return value;
  }
  void SuppressMsgDisplay(PRBool aSuppressMsgDisplay){
    nsresult __result = inner.SetSuppressMsgDisplay(aSuppressMsgDisplay);
    CheckException(__result);
  }

  /* attribute boolean suppressCommandUpdating; */
  PRBool SuppressCommandUpdating(){
    PRBool value;
    nsresult __result = inner.GetSuppressCommandUpdating(&value);
    CheckException(__result);
    return value;
  }
  void SuppressCommandUpdating(PRBool aSuppressCommandUpdating){
    nsresult __result = inner.SetSuppressCommandUpdating(aSuppressCommandUpdating);
    CheckException(__result);
  }

  /* void onDeleteCompleted (in boolean succeeded); */
  void OnDeleteCompleted(PRBool succeeded){
    nsresult __result = inner.OnDeleteCompleted(succeeded);
    CheckException(__result);
  }

  /* readonly attribute nsIMsgDatabase db; */
  nsIMsgDatabaseD  Db(){
    nsIMsgDatabase value;
    nsresult __result = inner.GetDb(&value);
    CheckException(__result);
    return new nsIMsgDatabaseD(value);
  }

  /* readonly attribute boolean supportsThreading; */
  PRBool SupportsThreading(){
    PRBool value;
    nsresult __result = inner.GetSupportsThreading(&value);
    CheckException(__result);
    return value;
  }

  /* attribute nsIMsgSearchSession searchSession; */
  nsIMsgSearchSessionD  SearchSession(){
    nsIMsgSearchSession value;
    nsresult __result = inner.GetSearchSession(&value);
    CheckException(__result);
    return new nsIMsgSearchSessionD(value);
  }
  void SearchSession(nsIMsgSearchSessionD  aSearchSession){
    nsIMsgSearchSession value;
    nsresult __result = inner.SetSearchSession(value);
    CheckException(__result);
  }

  /* readonly attribute boolean removeRowOnMoveOrDelete; */
  PRBool RemoveRowOnMoveOrDelete(){
    PRBool value;
    nsresult __result = inner.GetRemoveRowOnMoveOrDelete(&value);
    CheckException(__result);
    return value;
  }

  /* nsMsgViewIndex findIndexFromKey (in nsMsgKey aMsgKey, in boolean aExpand); */
  nsMsgViewIndex FindIndexFromKey(nsMsgKey aMsgKey, PRBool aExpand){
    nsMsgViewIndex _retval;
    nsresult __result = inner.FindIndexFromKey(aMsgKey, aExpand, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void ExpandAndSelectThreadByIndex (in nsMsgViewIndex aIndex, in boolean aAugment); */
  void ExpandAndSelectThreadByIndex(nsMsgViewIndex aIndex, PRBool aAugment){
    nsresult __result = inner.ExpandAndSelectThreadByIndex(aIndex, aAugment);
    CheckException(__result);
  }

  /* readonly attribute boolean usingLines; */
  PRBool UsingLines(){
    PRBool value;
    nsresult __result = inner.GetUsingLines(&value);
    CheckException(__result);
    return value;
  }

  /* void addColumnHandler (in AString aColumn, in nsIMsgCustomColumnHandler aHandler); */
  void AddColumnHandler(wchar[] aColumn, nsIMsgCustomColumnHandlerD aHandler){
    scope auto _aColumn = new AString(aColumn);
    nsresult __result = inner.AddColumnHandler(cast(nsAString*)_aColumn, aHandler ? cast(nsIMsgCustomColumnHandler)aHandler : null);
    CheckException(__result);
  }

  /* void removeColumnHandler (in AString aColumn); */
  void RemoveColumnHandler(wchar[] aColumn){
    scope auto _aColumn = new AString(aColumn);
    nsresult __result = inner.RemoveColumnHandler(cast(nsAString*)_aColumn);
    CheckException(__result);
  }

  /* nsIMsgCustomColumnHandler getColumnHandler (in AString aColumn); */
  nsIMsgCustomColumnHandlerD  GetColumnHandler(wchar[] aColumn){
    scope auto _aColumn = new AString(aColumn);
    nsIMsgCustomColumnHandler _retval;
    nsresult __result = inner.GetColumnHandler(cast(nsAString*)_aColumn, &_retval);
    CheckException(__result);
    return new nsIMsgCustomColumnHandlerD(_retval);
  }

private:
  nsIMsgDBView inner;

}


/* starting wrapper class:    nsIMsgDBViewCommandUpdater */
class nsIMsgDBViewCommandUpdaterD : public nsISupportsD {

  static const nsIID IID = NS_IMSGDBVIEWCOMMANDUPDATER_IID;


  alias nsIMsgDBViewCommandUpdater InnerType;

  this(nsIMsgDBViewCommandUpdater intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgDBViewCommandUpdater opCast() {
    return inner;
  }

  void opAssign(nsIMsgDBViewCommandUpdater value) {
    inner = value;
  }

  /* void updateCommandStatus (); */
  void UpdateCommandStatus(){
    nsresult __result = inner.UpdateCommandStatus();
    CheckException(__result);
  }

  /* void displayMessageChanged (in nsIMsgFolder aFolder, in wstring aSubject, in string aKeywords); */
  void DisplayMessageChanged(nsIMsgFolderD aFolder, PRUnichar*aSubject, char*aKeywords){
    nsresult __result = inner.DisplayMessageChanged(aFolder ? cast(nsIMsgFolder)aFolder : null, aSubject, aKeywords);
    CheckException(__result);
  }

  /**
	 * allows the backend to tell the front end to re-determine 
	 * which message we should selet after a delete or move
	 */
  /* void updateNextMessageAfterDelete (); */
  void UpdateNextMessageAfterDelete(){
    nsresult __result = inner.UpdateNextMessageAfterDelete();
    CheckException(__result);
  }

private:
  nsIMsgDBViewCommandUpdater inner;

}

