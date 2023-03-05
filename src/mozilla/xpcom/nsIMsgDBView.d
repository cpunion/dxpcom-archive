/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgDBView.idl
 */

module mozilla.xpcom.nsIMsgDBView;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.MailNewsTypes2;

public import mozilla.xpcom.nsIMsgFolder; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsIMessenger; /* forward declaration */

public import mozilla.xpcom.nsIMsgHdr;

public import mozilla.xpcom.nsIMsgDBView;

public import mozilla.xpcom.nsIMsgDatabase; /* forward declaration */

public import mozilla.xpcom.nsIMsgSearchSession; /* forward declaration */

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */

public import mozilla.xpcom.nsITreeView; /* forward declaration */

public import mozilla.xpcom.nsIMsgCustomColumnHandler; /* forward declaration */

alias PRInt32 nsMsgViewNotificationCodeValue;

alias PRInt32 nsMsgViewCommandCheckStateValue;

alias PRInt32 nsMsgViewCommandTypeValue;

alias PRInt32 nsMsgNavigationTypeValue;


/* starting interface:    nsMsgViewSortOrder */
const char[] NS_MSGVIEWSORTORDER_IID_STR = "682a18be-fd18-11d4-a5be-0060b0fc04b7";

const nsIID NS_MSGVIEWSORTORDER_IID= 
  {0x682a18be, 0xfd18, 0x11d4, 
    [ 0xa5, 0xbe, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xb7 ]};

extern(Windows)
interface nsMsgViewSortOrder {
  static const char[] IID_STR = NS_MSGVIEWSORTORDER_IID_STR;
  static const nsIID IID = NS_MSGVIEWSORTORDER_IID;

  enum { none = 0 };

  enum { ascending = 1 };

  enum { descending = 2 };

}


/* starting interface:    nsMsgViewType */
const char[] NS_MSGVIEWTYPE_IID_STR = "f28a1cdf-06c3-4e98-8f66-f49991670071";

const nsIID NS_MSGVIEWTYPE_IID= 
  {0xf28a1cdf, 0x06c3, 0x4e98, 
    [ 0x8f, 0x66, 0xf4, 0x99, 0x91, 0x67, 0x00, 0x71 ]};

extern(Windows)
interface nsMsgViewType {
  static const char[] IID_STR = NS_MSGVIEWTYPE_IID_STR;
  static const nsIID IID = NS_MSGVIEWTYPE_IID;

  enum { eShowAllThreads = 0 };

  enum { eShowThreadsWithUnread = 2 };

  enum { eShowWatchedThreadsWithUnread = 3 };

  enum { eShowQuickSearchResults = 4 };

  enum { eShowVirtualFolderResults = 5 };

  enum { eShowSearch = 6 };

}


/* starting interface:    nsMsgViewFlagsType */
const char[] NS_MSGVIEWFLAGSTYPE_IID_STR = "64852276-1dd2-11b2-8103-afe12002c053";

const nsIID NS_MSGVIEWFLAGSTYPE_IID= 
  {0x64852276, 0x1dd2, 0x11b2, 
    [ 0x81, 0x03, 0xaf, 0xe1, 0x20, 0x02, 0xc0, 0x53 ]};

extern(Windows)
interface nsMsgViewFlagsType {
  static const char[] IID_STR = NS_MSGVIEWFLAGSTYPE_IID_STR;
  static const nsIID IID = NS_MSGVIEWFLAGSTYPE_IID;

  /**
     * flags for GetViewFlags
     */
  enum { kNone = 0 };

  enum { kThreadedDisplay = 1 };

  enum { kShowIgnored = 8 };

  enum { kUnreadOnly = 16 };

  enum { kExpandAll = 32 };

  enum { kGroupBySort = 64 };

}


/* starting interface:    nsMsgViewSortType */
const char[] NS_MSGVIEWSORTTYPE_IID_STR = "e8fdf9ca-9425-49de-b231-8d8fb51b8ee2";

const nsIID NS_MSGVIEWSORTTYPE_IID= 
  {0xe8fdf9ca, 0x9425, 0x49de, 
    [ 0xb2, 0x31, 0x8d, 0x8f, 0xb5, 0x1b, 0x8e, 0xe2 ]};

extern(Windows)
interface nsMsgViewSortType {
  static const char[] IID_STR = NS_MSGVIEWSORTTYPE_IID_STR;
  static const nsIID IID = NS_MSGVIEWSORTTYPE_IID;

  enum { byNone = 17 };

  enum { byDate = 18 };

  enum { bySubject = 19 };

  enum { byAuthor = 20 };

  enum { byId = 21 };

  enum { byThread = 22 };

  enum { byPriority = 23 };

  enum { byStatus = 24 };

  enum { bySize = 25 };

  enum { byFlagged = 26 };

  enum { byUnread = 27 };

  enum { byRecipient = 28 };

  enum { byLocation = 29 };

  enum { byTags = 30 };

  enum { byJunkStatus = 31 };

  enum { byAttachments = 32 };

  enum { byAccount = 33 };

  enum { byCustom = 34 };

}


/* starting interface:    nsMsgViewNotificationCode */
const char[] NS_MSGVIEWNOTIFICATIONCODE_IID_STR = "255d1c1e-fde7-11d4-a5be-0060b0fc04b7";

const nsIID NS_MSGVIEWNOTIFICATIONCODE_IID= 
  {0x255d1c1e, 0xfde7, 0x11d4, 
    [ 0xa5, 0xbe, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xb7 ]};

extern(Windows)
interface nsMsgViewNotificationCode {
  static const char[] IID_STR = NS_MSGVIEWNOTIFICATIONCODE_IID_STR;
  static const nsIID IID = NS_MSGVIEWNOTIFICATIONCODE_IID;

  enum { none = 0 };

  enum { insertOrDelete = 1 };

  enum { changed = 2 };

  enum { scramble = 3 };

  enum { all = 4 };

  enum { totalContentChanged = 5 };

  enum { newTopIndex = 6 };

}


/* starting interface:    nsMsgViewCommandCheckState */
const char[] NS_MSGVIEWCOMMANDCHECKSTATE_IID_STR = "4ec9248e-0108-11d5-a5be-0060b0fc04b7";

const nsIID NS_MSGVIEWCOMMANDCHECKSTATE_IID= 
  {0x4ec9248e, 0x0108, 0x11d5, 
    [ 0xa5, 0xbe, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xb7 ]};

extern(Windows)
interface nsMsgViewCommandCheckState {
  static const char[] IID_STR = NS_MSGVIEWCOMMANDCHECKSTATE_IID_STR;
  static const nsIID IID = NS_MSGVIEWCOMMANDCHECKSTATE_IID;

  enum { notUsed = 0 };

  enum { checked = 1 };

  enum { unchecked = 2 };

}


/* starting interface:    nsMsgViewCommandType */
const char[] NS_MSGVIEWCOMMANDTYPE_IID_STR = "ad36e6cc-0109-11d5-a5be-0060b0fc04b7";

const nsIID NS_MSGVIEWCOMMANDTYPE_IID= 
  {0xad36e6cc, 0x0109, 0x11d5, 
    [ 0xa5, 0xbe, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xb7 ]};

extern(Windows)
interface nsMsgViewCommandType {
  static const char[] IID_STR = NS_MSGVIEWCOMMANDTYPE_IID_STR;
  static const nsIID IID = NS_MSGVIEWCOMMANDTYPE_IID;

  enum { markMessagesRead = 0 };

  enum { markMessagesUnread = 1 };

  enum { toggleMessageRead = 2 };

  enum { flagMessages = 3 };

  enum { unflagMessages = 4 };

  enum { toggleThreadWatched = 6 };

  enum { deleteMsg = 7 };

  enum { deleteNoTrash = 8 };

  enum { markThreadRead = 9 };

  enum { markAllRead = 10 };

  enum { expandAll = 11 };

  enum { collapseAll = 12 };

  enum { copyMessages = 13 };

  enum { moveMessages = 14 };

  enum { selectAll = 15 };

  enum { downloadSelectedForOffline = 16 };

  enum { downloadFlaggedForOffline = 17 };

  enum { selectThread = 18 };

  enum { selectFlagged = 19 };

  enum { cmdRequiringMsgBody = 20 };

  enum { label0 = 21 };

  enum { label1 = 22 };

  enum { label2 = 23 };

  enum { label3 = 24 };

  enum { label4 = 25 };

  enum { label5 = 26 };

  enum { lastLabel = 26 };

  enum { junk = 27 };

  enum { unjunk = 28 };

  enum { undeleteMsg = 29 };

  enum { applyFilters = 30 };

  enum { runJunkControls = 31 };

  enum { deleteJunk = 32 };

}


/* starting interface:    nsMsgNavigationType */
const char[] NS_MSGNAVIGATIONTYPE_IID_STR = "65903eb2-1dd2-11b2-ac45-c5b69c1618d7";

const nsIID NS_MSGNAVIGATIONTYPE_IID= 
  {0x65903eb2, 0x1dd2, 0x11b2, 
    [ 0xac, 0x45, 0xc5, 0xb6, 0x9c, 0x16, 0x18, 0xd7 ]};

extern(Windows)
interface nsMsgNavigationType {
  static const char[] IID_STR = NS_MSGNAVIGATIONTYPE_IID_STR;
  static const nsIID IID = NS_MSGNAVIGATIONTYPE_IID;

  enum { firstMessage = 1 };

  enum { nextMessage = 2 };

  enum { previousMessage = 3 };

  enum { lastMessage = 4 };

  /**
   * must match nsMsgViewCommandTypeValue toggleThreadKilled
   */
  enum { toggleThreadKilled = 5 };

  enum { firstUnreadMessage = 6 };

  enum { nextUnreadMessage = 7 };

  enum { previousUnreadMessage = 8 };

  enum { lastUnreadMessage = 9 };

  enum { nextUnreadThread = 10 };

  enum { nextUnreadFolder = 11 };

  enum { nextFolder = 12 };

  enum { readMore = 13 };

  /**
   * Go back to the previous visited message
   */
  enum { back = 15 };

  /**
   * Go forward to the previous visited message 
   */
  enum { forward = 16 };

  enum { firstFlagged = 17 };

  enum { nextFlagged = 18 };

  enum { previousFlagged = 19 };

  enum { firstNew = 20 };

  enum { editUndo = 21 };

  enum { editRedo = 22 };

}


/* starting interface:    nsIMsgDBView */
const char[] NS_IMSGDBVIEW_IID_STR = "7a49bcaa-5367-476d-a3da-7f305b7afb90";

const nsIID NS_IMSGDBVIEW_IID= 
  {0x7a49bcaa, 0x5367, 0x476d, 
    [ 0xa3, 0xda, 0x7f, 0x30, 0x5b, 0x7a, 0xfb, 0x90 ]};

extern(Windows)
interface nsIMsgDBView : nsISupports {
  static const char[] IID_STR = NS_IMSGDBVIEW_IID_STR;
  static const nsIID IID = NS_IMSGDBVIEW_IID;

  /* void open (in nsIMsgFolder folder, in nsMsgViewSortTypeValue sortType, in nsMsgViewSortOrderValue sortOrder, in nsMsgViewFlagsTypeValue viewFlags, out long count); */
  nsresult Open(nsIMsgFolder folder, nsMsgViewSortTypeValue sortType, nsMsgViewSortOrderValue sortOrder, nsMsgViewFlagsTypeValue viewFlags, PRInt32 *count);

  /* void openWithHdrs (in nsISimpleEnumerator aHeaders, in nsMsgViewSortTypeValue aSortType, in nsMsgViewSortOrderValue aSortOrder, in nsMsgViewFlagsTypeValue aViewFlags, out long aCount); */
  nsresult OpenWithHdrs(nsISimpleEnumerator aHeaders, nsMsgViewSortTypeValue aSortType, nsMsgViewSortOrderValue aSortOrder, nsMsgViewFlagsTypeValue aViewFlags, PRInt32 *aCount);

  /* void close (); */
  nsresult Close();

  /* void init (in nsIMessenger aMessengerInstance, in nsIMsgWindow aMsgWindow, in nsIMsgDBViewCommandUpdater aCommandUpdater); */
  nsresult Init(nsIMessenger aMessengerInstance, nsIMsgWindow aMsgWindow, nsIMsgDBViewCommandUpdater aCommandUpdater);

  /* void sort (in nsMsgViewSortTypeValue sortType, in nsMsgViewSortOrderValue sortOrder); */
  nsresult Sort(nsMsgViewSortTypeValue sortType, nsMsgViewSortOrderValue sortOrder);

  /* void doCommand (in nsMsgViewCommandTypeValue command); */
  nsresult DoCommand(nsMsgViewCommandTypeValue command);

  /* void doCommandWithFolder (in nsMsgViewCommandTypeValue command, in nsIMsgFolder destFolder); */
  nsresult DoCommandWithFolder(nsMsgViewCommandTypeValue command, nsIMsgFolder destFolder);

  /* void getCommandStatus (in nsMsgViewCommandTypeValue command, out boolean selectable_p, out nsMsgViewCommandCheckStateValue selected_p); */
  nsresult GetCommandStatus(nsMsgViewCommandTypeValue command, PRBool *selectable_p, nsMsgViewCommandCheckStateValue *selected_p);

  /* readonly attribute nsMsgViewTypeValue viewType; */
  nsresult GetViewType(nsMsgViewTypeValue *aViewType);

  /* attribute nsMsgViewFlagsTypeValue viewFlags; */
  nsresult GetViewFlags(nsMsgViewFlagsTypeValue *aViewFlags);
  nsresult SetViewFlags(nsMsgViewFlagsTypeValue aViewFlags);

  /* attribute nsMsgViewSortTypeValue sortType; */
  nsresult GetSortType(nsMsgViewSortTypeValue *aSortType);
  nsresult SetSortType(nsMsgViewSortTypeValue aSortType);

  /* readonly attribute nsMsgViewSortOrderValue sortOrder; */
  nsresult GetSortOrder(nsMsgViewSortOrderValue *aSortOrder);

  /* readonly attribute nsMsgKey keyForFirstSelectedMessage; */
  nsresult GetKeyForFirstSelectedMessage(nsMsgKey *aKeyForFirstSelectedMessage);

  /* readonly attribute nsMsgViewIndex viewIndexForFirstSelectedMsg; */
  nsresult GetViewIndexForFirstSelectedMsg(nsMsgViewIndex *aViewIndexForFirstSelectedMsg);

  /**
     * this method will automatically expand the destination thread, 
     * if needs be. 
     */
  /* void viewNavigate (in nsMsgNavigationTypeValue motion, out nsMsgKey resultId, out nsMsgViewIndex resultIndex, out nsMsgViewIndex threadIndex, in boolean wrap); */
  nsresult ViewNavigate(nsMsgNavigationTypeValue motion, nsMsgKey *resultId, nsMsgViewIndex *resultIndex, nsMsgViewIndex *threadIndex, PRBool wrap);

  /**
     * Indicates if navigation of the passed motion type is valid. 
     */
  /* boolean navigateStatus (in nsMsgNavigationTypeValue motion); */
  nsresult NavigateStatus(nsMsgNavigationTypeValue motion, PRBool *_retval);

  /* readonly attribute nsIMsgFolder msgFolder; */
  nsresult GetMsgFolder(nsIMsgFolder  *aMsgFolder);

  /* attribute nsIMsgFolder viewFolder; */
  nsresult GetViewFolder(nsIMsgFolder  *aViewFolder);
  nsresult SetViewFolder(nsIMsgFolder  aViewFolder);

  /* nsMsgKey getKeyAt (in nsMsgViewIndex index); */
  nsresult GetKeyAt(nsMsgViewIndex index, nsMsgKey *_retval);

  /* nsIMsgFolder getFolderForViewIndex (in nsMsgViewIndex index); */
  nsresult GetFolderForViewIndex(nsMsgViewIndex index, nsIMsgFolder *_retval);

  /* string getURIForViewIndex (in nsMsgViewIndex index); */
  nsresult GetURIForViewIndex(nsMsgViewIndex index, char **_retval);

  /* nsIMsgDBView cloneDBView (in nsIMessenger aMessengerInstance, in nsIMsgWindow aMsgWindow, in nsIMsgDBViewCommandUpdater aCommandUpdater); */
  nsresult CloneDBView(nsIMessenger aMessengerInstance, nsIMsgWindow aMsgWindow, nsIMsgDBViewCommandUpdater aCommandUpdater, nsIMsgDBView *_retval);

  /* void getURIsForSelection ([array, size_is (count)] out string uris, out unsigned long count); */
  nsresult GetURIsForSelection(char ***uris, PRUint32 *count);

  /* void getIndicesForSelection ([array, size_is (count)] out nsMsgViewIndex indices, out unsigned long count); */
  nsresult GetIndicesForSelection(nsMsgViewIndex **indices, PRUint32 *count);

  /* readonly attribute string URIForFirstSelectedMessage; */
  nsresult GetURIForFirstSelectedMessage(char * *aURIForFirstSelectedMessage);

  /* readonly attribute nsIMsgDBHdr hdrForFirstSelectedMessage; */
  nsresult GetHdrForFirstSelectedMessage(nsIMsgDBHdr  *aHdrForFirstSelectedMessage);

  /* void loadMessageByMsgKey (in nsMsgKey aMsgKey); */
  nsresult LoadMessageByMsgKey(nsMsgKey aMsgKey);

  /* void loadMessageByViewIndex (in nsMsgViewIndex aIndex); */
  nsresult LoadMessageByViewIndex(nsMsgViewIndex aIndex);

  /* void loadMessageByUrl (in string aUrl); */
  nsresult LoadMessageByUrl(char *aUrl);

  /* void reloadMessage (); */
  nsresult ReloadMessage();

  /* void reloadMessageWithAllParts (); */
  nsresult ReloadMessageWithAllParts();

  /* readonly attribute unsigned long numSelected; */
  nsresult GetNumSelected(PRUint32 *aNumSelected);

  /* readonly attribute nsMsgViewIndex msgToSelectAfterDelete; */
  nsresult GetMsgToSelectAfterDelete(nsMsgViewIndex *aMsgToSelectAfterDelete);

  /* readonly attribute nsMsgViewIndex currentlyDisplayedMessage; */
  nsresult GetCurrentlyDisplayedMessage(nsMsgViewIndex *aCurrentlyDisplayedMessage);

  /* void selectMsgByKey (in nsMsgKey key); */
  nsresult SelectMsgByKey(nsMsgKey key);

  /* attribute boolean suppressMsgDisplay; */
  nsresult GetSuppressMsgDisplay(PRBool *aSuppressMsgDisplay);
  nsresult SetSuppressMsgDisplay(PRBool aSuppressMsgDisplay);

  /* attribute boolean suppressCommandUpdating; */
  nsresult GetSuppressCommandUpdating(PRBool *aSuppressCommandUpdating);
  nsresult SetSuppressCommandUpdating(PRBool aSuppressCommandUpdating);

  /* void onDeleteCompleted (in boolean succeeded); */
  nsresult OnDeleteCompleted(PRBool succeeded);

  /* readonly attribute nsIMsgDatabase db; */
  nsresult GetDb(nsIMsgDatabase  *aDb);

  /* readonly attribute boolean supportsThreading; */
  nsresult GetSupportsThreading(PRBool *aSupportsThreading);

  /* attribute nsIMsgSearchSession searchSession; */
  nsresult GetSearchSession(nsIMsgSearchSession  *aSearchSession);
  nsresult SetSearchSession(nsIMsgSearchSession  aSearchSession);

  /* readonly attribute boolean removeRowOnMoveOrDelete; */
  nsresult GetRemoveRowOnMoveOrDelete(PRBool *aRemoveRowOnMoveOrDelete);

  /* nsMsgViewIndex findIndexFromKey (in nsMsgKey aMsgKey, in boolean aExpand); */
  nsresult FindIndexFromKey(nsMsgKey aMsgKey, PRBool aExpand, nsMsgViewIndex *_retval);

  /* void ExpandAndSelectThreadByIndex (in nsMsgViewIndex aIndex, in boolean aAugment); */
  nsresult ExpandAndSelectThreadByIndex(nsMsgViewIndex aIndex, PRBool aAugment);

  /* readonly attribute boolean usingLines; */
  nsresult GetUsingLines(PRBool *aUsingLines);

  /* void addColumnHandler (in AString aColumn, in nsIMsgCustomColumnHandler aHandler); */
  nsresult AddColumnHandler(nsAString * aColumn, nsIMsgCustomColumnHandler aHandler);

  /* void removeColumnHandler (in AString aColumn); */
  nsresult RemoveColumnHandler(nsAString * aColumn);

  /* nsIMsgCustomColumnHandler getColumnHandler (in AString aColumn); */
  nsresult GetColumnHandler(nsAString * aColumn, nsIMsgCustomColumnHandler *_retval);

}


/* starting interface:    nsIMsgDBViewCommandUpdater */
const char[] NS_IMSGDBVIEWCOMMANDUPDATER_IID_STR = "65fc9ad5-0912-11d5-9901-001083010e9b";

const nsIID NS_IMSGDBVIEWCOMMANDUPDATER_IID= 
  {0x65fc9ad5, 0x0912, 0x11d5, 
    [ 0x99, 0x01, 0x00, 0x10, 0x83, 0x01, 0x0e, 0x9b ]};

extern(Windows)
interface nsIMsgDBViewCommandUpdater : nsISupports {
  static const char[] IID_STR = NS_IMSGDBVIEWCOMMANDUPDATER_IID_STR;
  static const nsIID IID = NS_IMSGDBVIEWCOMMANDUPDATER_IID;

  /* void updateCommandStatus (); */
  nsresult UpdateCommandStatus();

  /* void displayMessageChanged (in nsIMsgFolder aFolder, in wstring aSubject, in string aKeywords); */
  nsresult DisplayMessageChanged(nsIMsgFolder aFolder, PRUnichar *aSubject, char *aKeywords);

  /**
	 * allows the backend to tell the front end to re-determine 
	 * which message we should selet after a delete or move
	 */
  /* void updateNextMessageAfterDelete (); */
  nsresult UpdateNextMessageAfterDelete();

}

