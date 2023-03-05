/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoCompleteInput.idl
 */

module mozilla.xpcom.nsIAutoCompleteInput;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIAutoCompleteController;

public import mozilla.xpcom.nsIAutoCompletePopup; /* forward declaration */


/* starting interface:    nsIAutoCompleteInput */
const char[] NS_IAUTOCOMPLETEINPUT_IID_STR = "e312267f-8f57-43e8-a904-ff9b5d3f5aef";

const nsIID NS_IAUTOCOMPLETEINPUT_IID= 
  {0xe312267f, 0x8f57, 0x43e8, 
    [ 0xa9, 0x04, 0xff, 0x9b, 0x5d, 0x3f, 0x5a, 0xef ]};

extern(Windows)
interface nsIAutoCompleteInput : nsISupports {
  static const char[] IID_STR = NS_IAUTOCOMPLETEINPUT_IID_STR;
  static const nsIID IID = NS_IAUTOCOMPLETEINPUT_IID;

  /* readonly attribute nsIAutoCompletePopup popup; */
  nsresult GetPopup(nsIAutoCompletePopup  *aPopup);

  /* readonly attribute nsIAutoCompleteController controller; */
  nsresult GetController(nsIAutoCompleteController  *aController);

  /* attribute boolean popupOpen; */
  nsresult GetPopupOpen(PRBool *aPopupOpen);
  nsresult SetPopupOpen(PRBool aPopupOpen);

  /* attribute boolean disableAutoComplete; */
  nsresult GetDisableAutoComplete(PRBool *aDisableAutoComplete);
  nsresult SetDisableAutoComplete(PRBool aDisableAutoComplete);

  /* attribute boolean completeDefaultIndex; */
  nsresult GetCompleteDefaultIndex(PRBool *aCompleteDefaultIndex);
  nsresult SetCompleteDefaultIndex(PRBool aCompleteDefaultIndex);

  /* attribute boolean completeSelectedIndex; */
  nsresult GetCompleteSelectedIndex(PRBool *aCompleteSelectedIndex);
  nsresult SetCompleteSelectedIndex(PRBool aCompleteSelectedIndex);

  /* attribute boolean forceComplete; */
  nsresult GetForceComplete(PRBool *aForceComplete);
  nsresult SetForceComplete(PRBool aForceComplete);

  /* attribute unsigned long minResultsForPopup; */
  nsresult GetMinResultsForPopup(PRUint32 *aMinResultsForPopup);
  nsresult SetMinResultsForPopup(PRUint32 aMinResultsForPopup);

  /* attribute unsigned long maxRows; */
  nsresult GetMaxRows(PRUint32 *aMaxRows);
  nsresult SetMaxRows(PRUint32 aMaxRows);

  /* attribute unsigned long showCommentColumn; */
  nsresult GetShowCommentColumn(PRUint32 *aShowCommentColumn);
  nsresult SetShowCommentColumn(PRUint32 aShowCommentColumn);

  /* attribute unsigned long timeout; */
  nsresult GetTimeout(PRUint32 *aTimeout);
  nsresult SetTimeout(PRUint32 aTimeout);

  /* attribute AString searchParam; */
  nsresult GetSearchParam(nsAString * aSearchParam);
  nsresult SetSearchParam(nsAString * aSearchParam);

  /* readonly attribute unsigned long searchCount; */
  nsresult GetSearchCount(PRUint32 *aSearchCount);

  /* ACString getSearchAt (in unsigned long index); */
  nsresult GetSearchAt(PRUint32 index, nsACString * _retval);

  /* attribute AString textValue; */
  nsresult GetTextValue(nsAString * aTextValue);
  nsresult SetTextValue(nsAString * aTextValue);

  /* readonly attribute long selectionStart; */
  nsresult GetSelectionStart(PRInt32 *aSelectionStart);

  /* readonly attribute long selectionEnd; */
  nsresult GetSelectionEnd(PRInt32 *aSelectionEnd);

  /* void selectTextRange (in long startIndex, in long endIndex); */
  nsresult SelectTextRange(PRInt32 startIndex, PRInt32 endIndex);

  /* void onSearchComplete (); */
  nsresult OnSearchComplete();

  /* boolean onTextEntered (); */
  nsresult OnTextEntered(PRBool *_retval);

  /* boolean onTextReverted (); */
  nsresult OnTextReverted(PRBool *_retval);

}


/* starting interface:    nsIAutoCompleteInput_MOZILLA_1_8_BRANCH */
const char[] NS_IAUTOCOMPLETEINPUT_MOZILLA_1_8_BRANCH_IID_STR = "ccd37136-76e8-47a7-b46c-b8fee8eb0536";

const nsIID NS_IAUTOCOMPLETEINPUT_MOZILLA_1_8_BRANCH_IID= 
  {0xccd37136, 0x76e8, 0x47a7, 
    [ 0xb4, 0x6c, 0xb8, 0xfe, 0xe8, 0xeb, 0x05, 0x36 ]};

extern(Windows)
interface nsIAutoCompleteInput_MOZILLA_1_8_BRANCH : nsIAutoCompleteInput {
  static const char[] IID_STR = NS_IAUTOCOMPLETEINPUT_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = NS_IAUTOCOMPLETEINPUT_MOZILLA_1_8_BRANCH_IID;

  /* readonly attribute boolean consumeRollupEvent; */
  nsresult GetConsumeRollupEvent(PRBool *aConsumeRollupEvent);

}

