/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoCompleteController.idl
 */

module mozilla.xpcom.nsIAutoCompleteController;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIAutoCompleteInput; /* forward declaration */


/* starting interface:    nsIAutoCompleteController */
const char[] NS_IAUTOCOMPLETECONTROLLER_IID_STR = "cf2aca0c-4fb1-42e4-8a54-23e832cb2a98";

const nsIID NS_IAUTOCOMPLETECONTROLLER_IID= 
  {0xcf2aca0c, 0x4fb1, 0x42e4, 
    [ 0x8a, 0x54, 0x23, 0xe8, 0x32, 0xcb, 0x2a, 0x98 ]};

extern(Windows)
interface nsIAutoCompleteController : nsISupports {
  static const char[] IID_STR = NS_IAUTOCOMPLETECONTROLLER_IID_STR;
  static const nsIID IID = NS_IAUTOCOMPLETECONTROLLER_IID;

  enum { STATUS_NONE = 1U };

  enum { STATUS_SEARCHING = 2U };

  enum { STATUS_COMPLETE_NO_MATCH = 3U };

  enum { STATUS_COMPLETE_MATCH = 4U };

  enum { KEY_UP = 1U };

  enum { KEY_DOWN = 2U };

  enum { KEY_LEFT = 3U };

  enum { KEY_RIGHT = 4U };

  enum { KEY_PAGE_UP = 5U };

  enum { KEY_PAGE_DOWN = 6U };

  enum { KEY_HOME = 7U };

  enum { KEY_END = 8U };

  /* attribute nsIAutoCompleteInput input; */
  nsresult GetInput(nsIAutoCompleteInput  *aInput);
  nsresult SetInput(nsIAutoCompleteInput  aInput);

  /* readonly attribute unsigned short searchStatus; */
  nsresult GetSearchStatus(PRUint16 *aSearchStatus);

  /* readonly attribute unsigned long matchCount; */
  nsresult GetMatchCount(PRUint32 *aMatchCount);

  /* void startSearch (in AString searchString); */
  nsresult StartSearch(nsAString * searchString);

  /* void handleText (in boolean aIgnoreSelection); */
  nsresult HandleText(PRBool aIgnoreSelection);

  /* boolean handleEnter (); */
  nsresult HandleEnter(PRBool *_retval);

  /* boolean handleEscape (); */
  nsresult HandleEscape(PRBool *_retval);

  /* void handleStartComposition (); */
  nsresult HandleStartComposition();

  /* void handleEndComposition (); */
  nsresult HandleEndComposition();

  /* void handleTab (); */
  nsresult HandleTab();

  /* boolean handleKeyNavigation (in unsigned short key); */
  nsresult HandleKeyNavigation(PRUint16 key, PRBool *_retval);

  /* boolean handleDelete (); */
  nsresult HandleDelete(PRBool *_retval);

  /* AString getValueAt (in long index); */
  nsresult GetValueAt(PRInt32 index, nsAString * _retval);

  /* AString getCommentAt (in long index); */
  nsresult GetCommentAt(PRInt32 index, nsAString * _retval);

  /* AString getStyleAt (in long index); */
  nsresult GetStyleAt(PRInt32 index, nsAString * _retval);

  /* void setSearchString (in AString aSearchString); */
  nsresult SetSearchString(nsAString * aSearchString);

}


/* starting interface:    nsIAutoCompleteController_MOZILLA_1_8_BRANCH */
const char[] NS_IAUTOCOMPLETECONTROLLER_MOZILLA_1_8_BRANCH_IID_STR = "729cb096-d5f1-4fc4-97cd-4b86e6917f97";

const nsIID NS_IAUTOCOMPLETECONTROLLER_MOZILLA_1_8_BRANCH_IID= 
  {0x729cb096, 0xd5f1, 0x4fc4, 
    [ 0x97, 0xcd, 0x4b, 0x86, 0xe6, 0x91, 0x7f, 0x97 ]};

extern(Windows)
interface nsIAutoCompleteController_MOZILLA_1_8_BRANCH : nsIAutoCompleteController {
  static const char[] IID_STR = NS_IAUTOCOMPLETECONTROLLER_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = NS_IAUTOCOMPLETECONTROLLER_MOZILLA_1_8_BRANCH_IID;

  /* void attachRollupListener (); */
  nsresult AttachRollupListener();

  /* void detachRollupListener (); */
  nsresult DetachRollupListener();

}

