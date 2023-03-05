/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSearchSession.idl
 */

module mozilla.dxpcom.nsIMsgSearchSessionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgSearchSession;


public import mozilla.dxpcom.nsIMsgSearchSessionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsMsgSearchCore;
public import mozilla.dxpcom.nsMsgSearchCoreD;
public import mozilla.xpcom.nsIMsgSearchValue;
public import mozilla.dxpcom.nsIMsgSearchValueD;

public import mozilla.xpcom.nsIMsgSearchAdapter;

public import mozilla.dxpcom.nsIMsgSearchAdapterD;

public import mozilla.xpcom.nsIMsgSearchTerm;

public import mozilla.dxpcom.nsIMsgSearchTermD;

public import mozilla.xpcom.nsIMsgSearchNotify;

public import mozilla.dxpcom.nsIMsgSearchNotifyD;

public import mozilla.xpcom.nsIMsgHdr;

public import mozilla.dxpcom.nsIMsgHdrD;

public import mozilla.xpcom.nsIMsgDatabase;

public import mozilla.dxpcom.nsIMsgDatabaseD;


/* starting wrapper class:    nsIMsgSearchSession */
class nsIMsgSearchSessionD : public nsISupportsD {

  static const nsIID IID = NS_IMSGSEARCHSESSION_IID;


  alias nsIMsgSearchSession InnerType;

  this(nsIMsgSearchSession intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgSearchSession opCast() {
    return inner;
  }

  void opAssign(nsIMsgSearchSession value) {
    inner = value;
  }

  /* void addSearchTerm (in nsMsgSearchAttribValue attrib, in nsMsgSearchOpValue op, in nsIMsgSearchValue value, in boolean BooleanAND, in string arbitraryHeader); */
  void AddSearchTerm(nsMsgSearchAttribValue attrib, nsMsgSearchOpValue op, nsIMsgSearchValueD value, PRBool BooleanAND, char*arbitraryHeader){
    nsresult __result = inner.AddSearchTerm(attrib, op, value ? cast(nsIMsgSearchValue)value : null, BooleanAND, arbitraryHeader);
    CheckException(__result);
  }

  /* readonly attribute nsISupportsArray searchTerms; */
  nsISupportsArrayD  SearchTerms(){
    nsISupportsArray value;
    nsresult __result = inner.GetSearchTerms(&value);
    CheckException(__result);
    return new nsISupportsArrayD(value);
  }

  /* nsIMsgSearchTerm createTerm (); */
  nsIMsgSearchTermD  CreateTerm(){
    nsIMsgSearchTerm _retval;
    nsresult __result = inner.CreateTerm(&_retval);
    CheckException(__result);
    return new nsIMsgSearchTermD(_retval);
  }

  /* void appendTerm (in nsIMsgSearchTerm term); */
  void AppendTerm(nsIMsgSearchTermD term){
    nsresult __result = inner.AppendTerm(term ? cast(nsIMsgSearchTerm)term : null);
    CheckException(__result);
  }

  /* void registerListener (in nsIMsgSearchNotify listener); */
  void RegisterListener(nsIMsgSearchNotifyD listener){
    nsresult __result = inner.RegisterListener(listener ? cast(nsIMsgSearchNotify)listener : null);
    CheckException(__result);
  }

  /* void unregisterListener (in nsIMsgSearchNotify listener); */
  void UnregisterListener(nsIMsgSearchNotifyD listener){
    nsresult __result = inner.UnregisterListener(listener ? cast(nsIMsgSearchNotify)listener : null);
    CheckException(__result);
  }

  /* readonly attribute unsigned long numSearchTerms; */
  PRUint32 NumSearchTerms(){
    PRUint32 value;
    nsresult __result = inner.GetNumSearchTerms(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsIMsgSearchAdapter runningAdapter; */
  nsIMsgSearchAdapterD  RunningAdapter(){
    nsIMsgSearchAdapter value;
    nsresult __result = inner.GetRunningAdapter(&value);
    CheckException(__result);
    return new nsIMsgSearchAdapterD(value);
  }

  /* void getNthSearchTerm (in long whichTerm, in nsMsgSearchAttribValue attrib, in nsMsgSearchOpValue op, in nsIMsgSearchValue value); */
  void GetNthSearchTerm(PRInt32 whichTerm, nsMsgSearchAttribValue attrib, nsMsgSearchOpValue op, nsIMsgSearchValueD value){
    nsresult __result = inner.GetNthSearchTerm(whichTerm, attrib, op, value ? cast(nsIMsgSearchValue)value : null);
    CheckException(__result);
  }

  /* long countSearchScopes (); */
  PRInt32 CountSearchScopes(){
    PRInt32 _retval;
    nsresult __result = inner.CountSearchScopes(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* void getNthSearchScope (in long which, out nsMsgSearchScopeValue scopeId, out nsIMsgFolder folder); */
  void GetNthSearchScope(PRInt32 which, out nsMsgSearchScopeValue scopeId, out nsIMsgFolderD folder){
    nsIMsgFolder _folder;
    nsresult __result = inner.GetNthSearchScope(which, &scopeId, &_folder);
    CheckException(__result);
    folder = _folder ? new nsIMsgFolderD(_folder) : null;
  }

  /* void addScopeTerm (in nsMsgSearchScopeValue scope, in nsIMsgFolder folder); */
  void AddScopeTerm(nsMsgSearchScopeValue scope_, nsIMsgFolderD folder){
    nsresult __result = inner.AddScopeTerm(scope_, folder ? cast(nsIMsgFolder)folder : null);
    CheckException(__result);
  }

  /* void addDirectoryScopeTerm (in nsMsgSearchScopeValue scope); */
  void AddDirectoryScopeTerm(nsMsgSearchScopeValue scope_){
    nsresult __result = inner.AddDirectoryScopeTerm(scope_);
    CheckException(__result);
  }

  /* void clearScopes (); */
  void ClearScopes(){
    nsresult __result = inner.ClearScopes();
    CheckException(__result);
  }

  /* [noscript] boolean ScopeUsesCustomHeaders (in nsMsgSearchScopeValue scope, in voidPtr selection, in boolean forFilters); */
  PRBool ScopeUsesCustomHeaders(nsMsgSearchScopeValue scope_, void * selection, PRBool forFilters){
    PRBool _retval;
    nsresult __result = inner.ScopeUsesCustomHeaders(scope_, selection, forFilters, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean IsStringAttribute (in nsMsgSearchAttribValue attrib); */
  PRBool IsStringAttribute(nsMsgSearchAttribValue attrib){
    PRBool _retval;
    nsresult __result = inner.IsStringAttribute(attrib, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void AddAllScopes (in nsMsgSearchScopeValue attrib); */
  void AddAllScopes(nsMsgSearchScopeValue attrib){
    nsresult __result = inner.AddAllScopes(attrib);
    CheckException(__result);
  }

  /* void search (in nsIMsgWindow aWindow); */
  void Search(nsIMsgWindowD aWindow){
    nsresult __result = inner.Search(aWindow ? cast(nsIMsgWindow)aWindow : null);
    CheckException(__result);
  }

  /* void interruptSearch (); */
  void InterruptSearch(){
    nsresult __result = inner.InterruptSearch();
    CheckException(__result);
  }

  /* void pauseSearch (); */
  void PauseSearch(){
    nsresult __result = inner.PauseSearch();
    CheckException(__result);
  }

  /* void resumeSearch (); */
  void ResumeSearch(){
    nsresult __result = inner.ResumeSearch();
    CheckException(__result);
  }

  /* [noscript] readonly attribute voidPtr searchParam; */
  void * SearchParam(){
    void * value;
    nsresult __result = inner.GetSearchParam(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsMsgSearchType searchType; */
  nsMsgSearchTypeD  SearchType(){
    nsMsgSearchType value;
    nsresult __result = inner.GetSearchType(&value);
    CheckException(__result);
    return new nsMsgSearchTypeD(value);
  }

  /* [noscript] nsMsgSearchType SetSearchParam (in nsMsgSearchType type, in voidPtr param); */
  nsMsgSearchTypeD  SetSearchParam(nsMsgSearchTypeD type, void * param){
    nsMsgSearchType _retval;
    nsresult __result = inner.SetSearchParam(type ? cast(nsMsgSearchType)type : null, param, &_retval);
    CheckException(__result);
    return new nsMsgSearchTypeD(_retval);
  }

  /* [noscript] void AddResultElement (in nsMsgResultElement element); */
  void AddResultElement(nsMsgResultElementD element){
    nsresult __result = inner.AddResultElement(element ? cast(nsMsgResultElement)element : null);
    CheckException(__result);
  }

  /* boolean MatchHdr (in nsIMsgDBHdr aMsgHdr, in nsIMsgDatabase aDatabase); */
  PRBool MatchHdr(nsIMsgDBHdrD aMsgHdr, nsIMsgDatabaseD aDatabase){
    PRBool _retval;
    nsresult __result = inner.MatchHdr(aMsgHdr ? cast(nsIMsgDBHdr)aMsgHdr : null, aDatabase ? cast(nsIMsgDatabase)aDatabase : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void addSearchHit (in nsIMsgDBHdr header, in nsIMsgFolder folder); */
  void AddSearchHit(nsIMsgDBHdrD header, nsIMsgFolderD folder){
    nsresult __result = inner.AddSearchHit(header ? cast(nsIMsgDBHdr)header : null, folder ? cast(nsIMsgFolder)folder : null);
    CheckException(__result);
  }

  /* readonly attribute long numResults; */
  PRInt32 NumResults(){
    PRInt32 value;
    nsresult __result = inner.GetNumResults(&value);
    CheckException(__result);
    return value;
  }

  /* attribute nsIMsgWindow window; */
  nsIMsgWindowD  Window(){
    nsIMsgWindow value;
    nsresult __result = inner.GetWindow(&value);
    CheckException(__result);
    return new nsIMsgWindowD(value);
  }
  void Window(nsIMsgWindowD  aWindow){
    nsIMsgWindow value;
    nsresult __result = inner.SetWindow(value);
    CheckException(__result);
  }

  enum { BooleanOR = 0 }

  enum { BooleanAND = 1 }

private:
  nsIMsgSearchSession inner;

}

