/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgFilter.idl
 */

module mozilla.dxpcom.nsIMsgFilterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgFilter;


public import mozilla.dxpcom.nsIMsgFilterD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsMsgFilterCore;
public import mozilla.dxpcom.nsMsgFilterCoreD;
public import mozilla.xpcom.nsIMsgSearchScopeTerm;
public import mozilla.dxpcom.nsIMsgSearchScopeTermD;
public import mozilla.xpcom.nsIMsgSearchValue;
public import mozilla.dxpcom.nsIMsgSearchValueD;
public import mozilla.xpcom.nsIMsgSearchTerm;
public import mozilla.dxpcom.nsIMsgSearchTermD;
public import mozilla.xpcom.nsISupportsArray;
public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsIMsgFilterList;
public import mozilla.dxpcom.nsIMsgFilterListD;

/* starting wrapper class:    nsIMsgRuleAction */
class nsIMsgRuleActionD : public nsISupportsD {

  static const nsIID IID = NS_IMSGRULEACTION_IID;


  alias nsIMsgRuleAction InnerType;

  this(nsIMsgRuleAction intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgRuleAction opCast() {
    return inner;
  }

  void opAssign(nsIMsgRuleAction value) {
    inner = value;
  }

  /* attribute nsMsgRuleActionType type; */
  nsMsgRuleActionType Type(){
    nsMsgRuleActionType value;
    nsresult __result = inner.GetType(&value);
    CheckException(__result);
    return value;
  }
  void Type(nsMsgRuleActionType aType){
    nsMsgRuleActionType value;
    nsresult __result = inner.SetType(value);
    CheckException(__result);
  }

  /* attribute nsMsgPriorityValue priority; */
  nsMsgPriorityValue Priority(){
    nsMsgPriorityValue value;
    nsresult __result = inner.GetPriority(&value);
    CheckException(__result);
    return value;
  }
  void Priority(nsMsgPriorityValue aPriority){
    nsMsgPriorityValue value;
    nsresult __result = inner.SetPriority(value);
    CheckException(__result);
  }

  /* attribute string targetFolderUri; */
  char* TargetFolderUri(){
    char* value;
    nsresult __result = inner.GetTargetFolderUri(&value);
    CheckException(__result);
    return value;
  }
  void TargetFolderUri(char* aTargetFolderUri){
    nsresult __result = inner.SetTargetFolderUri(aTargetFolderUri);
    CheckException(__result);
  }

  /* attribute nsMsgLabelValue label; */
  nsMsgLabelValue Label(){
    nsMsgLabelValue value;
    nsresult __result = inner.GetLabel(&value);
    CheckException(__result);
    return value;
  }
  void Label(nsMsgLabelValue aLabel){
    nsMsgLabelValue value;
    nsresult __result = inner.SetLabel(value);
    CheckException(__result);
  }

  /* attribute long junkScore; */
  PRInt32 JunkScore(){
    PRInt32 value;
    nsresult __result = inner.GetJunkScore(&value);
    CheckException(__result);
    return value;
  }
  void JunkScore(PRInt32 aJunkScore){
    nsresult __result = inner.SetJunkScore(aJunkScore);
    CheckException(__result);
  }

  /* attribute string strValue; */
  char* StrValue(){
    char* value;
    nsresult __result = inner.GetStrValue(&value);
    CheckException(__result);
    return value;
  }
  void StrValue(char* aStrValue){
    nsresult __result = inner.SetStrValue(aStrValue);
    CheckException(__result);
  }

private:
  nsIMsgRuleAction inner;

}


/* starting wrapper class:    nsIMsgFilter */
class nsIMsgFilterD : public nsISupportsD {

  static const nsIID IID = NS_IMSGFILTER_IID;


  alias nsIMsgFilter InnerType;

  this(nsIMsgFilter intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgFilter opCast() {
    return inner;
  }

  void opAssign(nsIMsgFilter value) {
    inner = value;
  }

  /* attribute nsMsgFilterTypeType filterType; */
  nsMsgFilterTypeType FilterType(){
    nsMsgFilterTypeType value;
    nsresult __result = inner.GetFilterType(&value);
    CheckException(__result);
    return value;
  }
  void FilterType(nsMsgFilterTypeType aFilterType){
    nsMsgFilterTypeType value;
    nsresult __result = inner.SetFilterType(value);
    CheckException(__result);
  }

  /**
     * some filters are "temporary".  For example, the filters we create when the user
     * filters return receipts to the Sent folder.
     * we don't show temporary filters in the UI
     * and we don't write them to disk.
     */
  /* attribute boolean temporary; */
  PRBool Temporary(){
    PRBool value;
    nsresult __result = inner.GetTemporary(&value);
    CheckException(__result);
    return value;
  }
  void Temporary(PRBool aTemporary){
    nsresult __result = inner.SetTemporary(aTemporary);
    CheckException(__result);
  }

  /* attribute boolean enabled; */
  PRBool Enabled(){
    PRBool value;
    nsresult __result = inner.GetEnabled(&value);
    CheckException(__result);
    return value;
  }
  void Enabled(PRBool aEnabled){
    nsresult __result = inner.SetEnabled(aEnabled);
    CheckException(__result);
  }

  /* attribute wstring filterName; */
  PRUnichar* FilterName(){
    PRUnichar* value;
    nsresult __result = inner.GetFilterName(&value);
    CheckException(__result);
    return value;
  }
  void FilterName(PRUnichar* aFilterName){
    nsresult __result = inner.SetFilterName(aFilterName);
    CheckException(__result);
  }

  /* attribute string filterDesc; */
  char* FilterDesc(){
    char* value;
    nsresult __result = inner.GetFilterDesc(&value);
    CheckException(__result);
    return value;
  }
  void FilterDesc(char* aFilterDesc){
    nsresult __result = inner.SetFilterDesc(aFilterDesc);
    CheckException(__result);
  }

  /* attribute string unparsedBuffer; */
  char* UnparsedBuffer(){
    char* value;
    nsresult __result = inner.GetUnparsedBuffer(&value);
    CheckException(__result);
    return value;
  }
  void UnparsedBuffer(char* aUnparsedBuffer){
    nsresult __result = inner.SetUnparsedBuffer(aUnparsedBuffer);
    CheckException(__result);
  }

  /* attribute boolean unparseable; */
  PRBool Unparseable(){
    PRBool value;
    nsresult __result = inner.GetUnparseable(&value);
    CheckException(__result);
    return value;
  }
  void Unparseable(PRBool aUnparseable){
    nsresult __result = inner.SetUnparseable(aUnparseable);
    CheckException(__result);
  }

  /* readonly attribute nsIMsgFilterList filterList; */
  nsIMsgFilterListD  FilterList(){
    nsIMsgFilterList value;
    nsresult __result = inner.GetFilterList(&value);
    CheckException(__result);
    return new nsIMsgFilterListD(value);
  }

  /* void AddTerm (in nsMsgSearchAttribValue attrib, in nsMsgSearchOpValue op, in nsIMsgSearchValue value, in boolean BooleanAND, in string arbitraryHeader); */
  void AddTerm(nsMsgSearchAttribValue attrib, nsMsgSearchOpValue op, nsIMsgSearchValueD value, PRBool BooleanAND, char*arbitraryHeader){
    nsresult __result = inner.AddTerm(attrib, op, value ? cast(nsIMsgSearchValue)value : null, BooleanAND, arbitraryHeader);
    CheckException(__result);
  }

  /* void GetTerm (in long termIndex, out nsMsgSearchAttribValue attrib, out nsMsgSearchOpValue op, out nsIMsgSearchValue value, out boolean BooleanAND, out string arbitraryHeader); */
  void GetTerm(PRInt32 termIndex, out nsMsgSearchAttribValue attrib, out nsMsgSearchOpValue op, out nsIMsgSearchValueD value, out PRBool BooleanAND, out char*arbitraryHeader){
    nsIMsgSearchValue _value;
    nsresult __result = inner.GetTerm(termIndex, &attrib, &op, &_value, &BooleanAND, &arbitraryHeader);
    CheckException(__result);
    value = _value ? new nsIMsgSearchValueD(_value) : null;
  }

  /* void appendTerm (in nsIMsgSearchTerm term); */
  void AppendTerm(nsIMsgSearchTermD term){
    nsresult __result = inner.AppendTerm(term ? cast(nsIMsgSearchTerm)term : null);
    CheckException(__result);
  }

  /* nsIMsgSearchTerm createTerm (); */
  nsIMsgSearchTermD  CreateTerm(){
    nsIMsgSearchTerm _retval;
    nsresult __result = inner.CreateTerm(&_retval);
    CheckException(__result);
    return new nsIMsgSearchTermD(_retval);
  }

  /* attribute nsISupportsArray searchTerms; */
  nsISupportsArrayD  SearchTerms(){
    nsISupportsArray value;
    nsresult __result = inner.GetSearchTerms(&value);
    CheckException(__result);
    return new nsISupportsArrayD(value);
  }
  void SearchTerms(nsISupportsArrayD  aSearchTerms){
    nsISupportsArray value;
    nsresult __result = inner.SetSearchTerms(value);
    CheckException(__result);
  }

  /* attribute nsIMsgSearchScopeTerm scope; */
  nsIMsgSearchScopeTermD  Scope(){
    nsIMsgSearchScopeTerm value;
    nsresult __result = inner.GetScope(&value);
    CheckException(__result);
    return new nsIMsgSearchScopeTermD(value);
  }
  void Scope(nsIMsgSearchScopeTermD  aScope){
    nsIMsgSearchScopeTerm value;
    nsresult __result = inner.SetScope(value);
    CheckException(__result);
  }

  /* [noscript] void MatchHdr (in nsIMsgDBHdr msgHdr, in nsIMsgFolder folder, in nsIMsgDatabase db, in string headers, in unsigned long headerSize, out boolean result); */
  void MatchHdr(nsIMsgDBHdrD msgHdr, nsIMsgFolderD folder, nsIMsgDatabaseD db, char*headers, PRUint32 headerSize, out PRBool result){
    nsresult __result = inner.MatchHdr(msgHdr ? cast(nsIMsgDBHdr)msgHdr : null, folder ? cast(nsIMsgFolder)folder : null, db ? cast(nsIMsgDatabase)db : null, headers, headerSize, &result);
    CheckException(__result);
  }

  /* void logRuleHit (in nsIMsgRuleAction aFilterAction, in nsIMsgDBHdr aHeader); */
  void LogRuleHit(nsIMsgRuleActionD aFilterAction, nsIMsgDBHdrD aHeader){
    nsresult __result = inner.LogRuleHit(aFilterAction ? cast(nsIMsgRuleAction)aFilterAction : null, aHeader ? cast(nsIMsgDBHdr)aHeader : null);
    CheckException(__result);
  }

  /* nsIMsgRuleAction createAction (); */
  nsIMsgRuleActionD  CreateAction(){
    nsIMsgRuleAction _retval;
    nsresult __result = inner.CreateAction(&_retval);
    CheckException(__result);
    return new nsIMsgRuleActionD(_retval);
  }

  /* nsIMsgRuleAction getActionAt (in long aIndex); */
  nsIMsgRuleActionD  GetActionAt(PRInt32 aIndex){
    nsIMsgRuleAction _retval;
    nsresult __result = inner.GetActionAt(aIndex, &_retval);
    CheckException(__result);
    return new nsIMsgRuleActionD(_retval);
  }

  /* void appendAction (in nsIMsgRuleAction action); */
  void AppendAction(nsIMsgRuleActionD action){
    nsresult __result = inner.AppendAction(action ? cast(nsIMsgRuleAction)action : null);
    CheckException(__result);
  }

  /* void clearActionList (); */
  void ClearActionList(){
    nsresult __result = inner.ClearActionList();
    CheckException(__result);
  }

  /* void getSortedActionList (in nsISupportsArray actionList); */
  void GetSortedActionList(nsISupportsArrayD actionList){
    nsresult __result = inner.GetSortedActionList(actionList ? cast(nsISupportsArray)actionList : null);
    CheckException(__result);
  }

  /* readonly attribute nsISupportsArray actionList; */
  nsISupportsArrayD  ActionList(){
    nsISupportsArray value;
    nsresult __result = inner.GetActionList(&value);
    CheckException(__result);
    return new nsISupportsArrayD(value);
  }

private:
  nsIMsgFilter inner;

}

