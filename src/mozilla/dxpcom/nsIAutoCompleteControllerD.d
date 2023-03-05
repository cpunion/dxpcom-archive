/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIAutoCompleteController.idl
 */

module mozilla.dxpcom.nsIAutoCompleteControllerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIAutoCompleteController;


public import mozilla.dxpcom.nsIAutoCompleteControllerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIAutoCompleteInput;

public import mozilla.dxpcom.nsIAutoCompleteInputD;


/* starting wrapper class:    nsIAutoCompleteController */
class nsIAutoCompleteControllerD : public nsISupportsD {

  static const nsIID IID = NS_IAUTOCOMPLETECONTROLLER_IID;


  alias nsIAutoCompleteController InnerType;

  this(nsIAutoCompleteController intr){
    super(intr);
    this.inner = intr;
  }

  nsIAutoCompleteController opCast() {
    return inner;
  }

  void opAssign(nsIAutoCompleteController value) {
    inner = value;
  }

  enum { STATUS_NONE = 1U }

  enum { STATUS_SEARCHING = 2U }

  enum { STATUS_COMPLETE_NO_MATCH = 3U }

  enum { STATUS_COMPLETE_MATCH = 4U }

  enum { KEY_UP = 1U }

  enum { KEY_DOWN = 2U }

  enum { KEY_LEFT = 3U }

  enum { KEY_RIGHT = 4U }

  enum { KEY_PAGE_UP = 5U }

  enum { KEY_PAGE_DOWN = 6U }

  enum { KEY_HOME = 7U }

  enum { KEY_END = 8U }

  /* attribute nsIAutoCompleteInput input; */
  nsIAutoCompleteInputD  Input(){
    nsIAutoCompleteInput value;
    nsresult __result = inner.GetInput(&value);
    CheckException(__result);
    return new nsIAutoCompleteInputD(value);
  }
  void Input(nsIAutoCompleteInputD  aInput){
    nsIAutoCompleteInput value;
    nsresult __result = inner.SetInput(value);
    CheckException(__result);
  }

  /* readonly attribute unsigned short searchStatus; */
  PRUint16 SearchStatus(){
    PRUint16 value;
    nsresult __result = inner.GetSearchStatus(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned long matchCount; */
  PRUint32 MatchCount(){
    PRUint32 value;
    nsresult __result = inner.GetMatchCount(&value);
    CheckException(__result);
    return value;
  }

  /* void startSearch (in AString searchString); */
  void StartSearch(wchar[] searchString){
    scope auto _searchString = new AString(searchString);
    nsresult __result = inner.StartSearch(cast(nsAString*)_searchString);
    CheckException(__result);
  }

  /* void handleText (in boolean aIgnoreSelection); */
  void HandleText(PRBool aIgnoreSelection){
    nsresult __result = inner.HandleText(aIgnoreSelection);
    CheckException(__result);
  }

  /* boolean handleEnter (); */
  PRBool HandleEnter(){
    PRBool _retval;
    nsresult __result = inner.HandleEnter(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean handleEscape (); */
  PRBool HandleEscape(){
    PRBool _retval;
    nsresult __result = inner.HandleEscape(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void handleStartComposition (); */
  void HandleStartComposition(){
    nsresult __result = inner.HandleStartComposition();
    CheckException(__result);
  }

  /* void handleEndComposition (); */
  void HandleEndComposition(){
    nsresult __result = inner.HandleEndComposition();
    CheckException(__result);
  }

  /* void handleTab (); */
  void HandleTab(){
    nsresult __result = inner.HandleTab();
    CheckException(__result);
  }

  /* boolean handleKeyNavigation (in unsigned short key); */
  PRBool HandleKeyNavigation(PRUint16 key){
    PRBool _retval;
    nsresult __result = inner.HandleKeyNavigation(key, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean handleDelete (); */
  PRBool HandleDelete(){
    PRBool _retval;
    nsresult __result = inner.HandleDelete(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* AString getValueAt (in long index); */
  wchar[] GetValueAt(PRInt32 index){
    scope auto _retval = new AString;
    nsresult __result = inner.GetValueAt(index, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* AString getCommentAt (in long index); */
  wchar[] GetCommentAt(PRInt32 index){
    scope auto _retval = new AString;
    nsresult __result = inner.GetCommentAt(index, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* AString getStyleAt (in long index); */
  wchar[] GetStyleAt(PRInt32 index){
    scope auto _retval = new AString;
    nsresult __result = inner.GetStyleAt(index, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /* void setSearchString (in AString aSearchString); */
  void SetSearchString(wchar[] aSearchString){
    scope auto _aSearchString = new AString(aSearchString);
    nsresult __result = inner.SetSearchString(cast(nsAString*)_aSearchString);
    CheckException(__result);
  }

private:
  nsIAutoCompleteController inner;

}


/* starting wrapper class:    nsIAutoCompleteController_MOZILLA_1_8_BRANCH */
class nsIAutoCompleteController_MOZILLA_1_8_BRANCHD : public nsIAutoCompleteControllerD {

  static const nsIID IID = NS_IAUTOCOMPLETECONTROLLER_MOZILLA_1_8_BRANCH_IID;


  alias nsIAutoCompleteController_MOZILLA_1_8_BRANCH InnerType;

  this(nsIAutoCompleteController_MOZILLA_1_8_BRANCH intr){
    super(intr);
    this.inner = intr;
  }

  nsIAutoCompleteController_MOZILLA_1_8_BRANCH opCast() {
    return inner;
  }

  void opAssign(nsIAutoCompleteController_MOZILLA_1_8_BRANCH value) {
    inner = value;
  }

  /* void attachRollupListener (); */
  void AttachRollupListener(){
    nsresult __result = inner.AttachRollupListener();
    CheckException(__result);
  }

  /* void detachRollupListener (); */
  void DetachRollupListener(){
    nsresult __result = inner.DetachRollupListener();
    CheckException(__result);
  }

private:
  nsIAutoCompleteController_MOZILLA_1_8_BRANCH inner;

}

