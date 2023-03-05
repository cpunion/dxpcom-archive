/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoCompleteInput.idl
 */

module mozilla.dxpcom.nsIAutoCompleteInputD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAutoCompleteInput;


public import mozilla.dxpcom.nsIAutoCompleteInputD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIAutoCompleteController;
public import mozilla.dxpcom.nsIAutoCompleteControllerD;

public import mozilla.xpcom.nsIAutoCompletePopup;

public import mozilla.dxpcom.nsIAutoCompletePopupD;


/* starting wrapper class:    nsIAutoCompleteInput */
class nsIAutoCompleteInputD : public nsISupportsD {

  static const nsIID IID = NS_IAUTOCOMPLETEINPUT_IID;


  alias nsIAutoCompleteInput InnerType;

  this(nsIAutoCompleteInput intr){
    super(intr);
    this.inner = intr;
  }

  nsIAutoCompleteInput opCast() {
    return inner;
  }

  void opAssign(nsIAutoCompleteInput value) {
    inner = value;
  }

  /* readonly attribute nsIAutoCompletePopup popup; */
  nsIAutoCompletePopupD  Popup(){
    nsIAutoCompletePopup value;
    nsresult __result = inner.GetPopup(&value);
    CheckException(__result);
    return new nsIAutoCompletePopupD(value);
  }

  /* readonly attribute nsIAutoCompleteController controller; */
  nsIAutoCompleteControllerD  Controller(){
    nsIAutoCompleteController value;
    nsresult __result = inner.GetController(&value);
    CheckException(__result);
    return new nsIAutoCompleteControllerD(value);
  }

  /* attribute boolean popupOpen; */
  PRBool PopupOpen(){
    PRBool value;
    nsresult __result = inner.GetPopupOpen(&value);
    CheckException(__result);
    return value;
  }
  void PopupOpen(PRBool aPopupOpen){
    nsresult __result = inner.SetPopupOpen(aPopupOpen);
    CheckException(__result);
  }

  /* attribute boolean disableAutoComplete; */
  PRBool DisableAutoComplete(){
    PRBool value;
    nsresult __result = inner.GetDisableAutoComplete(&value);
    CheckException(__result);
    return value;
  }
  void DisableAutoComplete(PRBool aDisableAutoComplete){
    nsresult __result = inner.SetDisableAutoComplete(aDisableAutoComplete);
    CheckException(__result);
  }

  /* attribute boolean completeDefaultIndex; */
  PRBool CompleteDefaultIndex(){
    PRBool value;
    nsresult __result = inner.GetCompleteDefaultIndex(&value);
    CheckException(__result);
    return value;
  }
  void CompleteDefaultIndex(PRBool aCompleteDefaultIndex){
    nsresult __result = inner.SetCompleteDefaultIndex(aCompleteDefaultIndex);
    CheckException(__result);
  }

  /* attribute boolean completeSelectedIndex; */
  PRBool CompleteSelectedIndex(){
    PRBool value;
    nsresult __result = inner.GetCompleteSelectedIndex(&value);
    CheckException(__result);
    return value;
  }
  void CompleteSelectedIndex(PRBool aCompleteSelectedIndex){
    nsresult __result = inner.SetCompleteSelectedIndex(aCompleteSelectedIndex);
    CheckException(__result);
  }

  /* attribute boolean forceComplete; */
  PRBool ForceComplete(){
    PRBool value;
    nsresult __result = inner.GetForceComplete(&value);
    CheckException(__result);
    return value;
  }
  void ForceComplete(PRBool aForceComplete){
    nsresult __result = inner.SetForceComplete(aForceComplete);
    CheckException(__result);
  }

  /* attribute unsigned long minResultsForPopup; */
  PRUint32 MinResultsForPopup(){
    PRUint32 value;
    nsresult __result = inner.GetMinResultsForPopup(&value);
    CheckException(__result);
    return value;
  }
  void MinResultsForPopup(PRUint32 aMinResultsForPopup){
    nsresult __result = inner.SetMinResultsForPopup(aMinResultsForPopup);
    CheckException(__result);
  }

  /* attribute unsigned long maxRows; */
  PRUint32 MaxRows(){
    PRUint32 value;
    nsresult __result = inner.GetMaxRows(&value);
    CheckException(__result);
    return value;
  }
  void MaxRows(PRUint32 aMaxRows){
    nsresult __result = inner.SetMaxRows(aMaxRows);
    CheckException(__result);
  }

  /* attribute unsigned long showCommentColumn; */
  PRUint32 ShowCommentColumn(){
    PRUint32 value;
    nsresult __result = inner.GetShowCommentColumn(&value);
    CheckException(__result);
    return value;
  }
  void ShowCommentColumn(PRUint32 aShowCommentColumn){
    nsresult __result = inner.SetShowCommentColumn(aShowCommentColumn);
    CheckException(__result);
  }

  /* attribute unsigned long timeout; */
  PRUint32 Timeout(){
    PRUint32 value;
    nsresult __result = inner.GetTimeout(&value);
    CheckException(__result);
    return value;
  }
  void Timeout(PRUint32 aTimeout){
    nsresult __result = inner.SetTimeout(aTimeout);
    CheckException(__result);
  }

  /* attribute AString searchParam; */
  wchar[] SearchParam(){
    scope auto value = new AString();
    nsresult __result = inner.GetSearchParam(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void SearchParam(wchar[] aSearchParam){
    scope auto value = new AString(aSearchParam);
    nsresult __result = inner.SetSearchParam(cast(nsAString*)value);
    CheckException(__result);
  }

  /* readonly attribute unsigned long searchCount; */
  PRUint32 SearchCount(){
    PRUint32 value;
    nsresult __result = inner.GetSearchCount(&value);
    CheckException(__result);
    return value;
  }

  /* ACString getSearchAt (in unsigned long index); */
  char[] GetSearchAt(PRUint32 index){
    scope auto _retval = new ACString;
    nsresult __result = inner.GetSearchAt(index, cast(nsACString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* attribute AString textValue; */
  wchar[] TextValue(){
    scope auto value = new AString();
    nsresult __result = inner.GetTextValue(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void TextValue(wchar[] aTextValue){
    scope auto value = new AString(aTextValue);
    nsresult __result = inner.SetTextValue(cast(nsAString*)value);
    CheckException(__result);
  }

  /* readonly attribute long selectionStart; */
  PRInt32 SelectionStart(){
    PRInt32 value;
    nsresult __result = inner.GetSelectionStart(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute long selectionEnd; */
  PRInt32 SelectionEnd(){
    PRInt32 value;
    nsresult __result = inner.GetSelectionEnd(&value);
    CheckException(__result);
    return value;
  }

  /* void selectTextRange (in long startIndex, in long endIndex); */
  void SelectTextRange(PRInt32 startIndex, PRInt32 endIndex){
    nsresult __result = inner.SelectTextRange(startIndex, endIndex);
    CheckException(__result);
  }

  /* void onSearchComplete (); */
  void OnSearchComplete(){
    nsresult __result = inner.OnSearchComplete();
    CheckException(__result);
  }

  /* boolean onTextEntered (); */
  PRBool OnTextEntered(){
    PRBool _retval;
    nsresult __result = inner.OnTextEntered(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean onTextReverted (); */
  PRBool OnTextReverted(){
    PRBool _retval;
    nsresult __result = inner.OnTextReverted(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIAutoCompleteInput inner;

}


/* starting wrapper class:    nsIAutoCompleteInput_MOZILLA_1_8_BRANCH */
class nsIAutoCompleteInput_MOZILLA_1_8_BRANCHD : public nsIAutoCompleteInputD {

  static const nsIID IID = NS_IAUTOCOMPLETEINPUT_MOZILLA_1_8_BRANCH_IID;


  alias nsIAutoCompleteInput_MOZILLA_1_8_BRANCH InnerType;

  this(nsIAutoCompleteInput_MOZILLA_1_8_BRANCH intr){
    super(intr);
    this.inner = intr;
  }

  nsIAutoCompleteInput_MOZILLA_1_8_BRANCH opCast() {
    return inner;
  }

  void opAssign(nsIAutoCompleteInput_MOZILLA_1_8_BRANCH value) {
    inner = value;
  }

  /* readonly attribute boolean consumeRollupEvent; */
  PRBool ConsumeRollupEvent(){
    PRBool value;
    nsresult __result = inner.GetConsumeRollupEvent(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIAutoCompleteInput_MOZILLA_1_8_BRANCH inner;

}

