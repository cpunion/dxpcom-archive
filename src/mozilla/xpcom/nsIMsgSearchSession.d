/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSearchSession.idl
 */

module mozilla.xpcom.nsIMsgSearchSession;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsMsgSearchCore;
public import mozilla.xpcom.nsIMsgSearchValue;

public import mozilla.xpcom.nsIMsgSearchAdapter; /* forward declaration */

public import mozilla.xpcom.nsIMsgSearchTerm; /* forward declaration */

public import mozilla.xpcom.nsIMsgSearchNotify; /* forward declaration */

public import mozilla.xpcom.nsIMsgHdr; /* forward declaration */

public import mozilla.xpcom.nsIMsgDatabase; /* forward declaration */


/* starting interface:    nsIMsgSearchSession */
const char[] NS_IMSGSEARCHSESSION_IID_STR = "a819050a-0302-11d3-a50a-0060b0fc04b7";

const nsIID NS_IMSGSEARCHSESSION_IID= 
  {0xa819050a, 0x0302, 0x11d3, 
    [ 0xa5, 0x0a, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xb7 ]};

extern(Windows)
interface nsIMsgSearchSession : nsISupports {
  static const char[] IID_STR = NS_IMSGSEARCHSESSION_IID_STR;
  static const nsIID IID = NS_IMSGSEARCHSESSION_IID;

  /* void addSearchTerm (in nsMsgSearchAttribValue attrib, in nsMsgSearchOpValue op, in nsIMsgSearchValue value, in boolean BooleanAND, in string arbitraryHeader); */
  nsresult AddSearchTerm(nsMsgSearchAttribValue attrib, nsMsgSearchOpValue op, nsIMsgSearchValue value, PRBool BooleanAND, char *arbitraryHeader);

  /* readonly attribute nsISupportsArray searchTerms; */
  nsresult GetSearchTerms(nsISupportsArray  *aSearchTerms);

  /* nsIMsgSearchTerm createTerm (); */
  nsresult CreateTerm(nsIMsgSearchTerm *_retval);

  /* void appendTerm (in nsIMsgSearchTerm term); */
  nsresult AppendTerm(nsIMsgSearchTerm term);

  /* void registerListener (in nsIMsgSearchNotify listener); */
  nsresult RegisterListener(nsIMsgSearchNotify listener);

  /* void unregisterListener (in nsIMsgSearchNotify listener); */
  nsresult UnregisterListener(nsIMsgSearchNotify listener);

  /* readonly attribute unsigned long numSearchTerms; */
  nsresult GetNumSearchTerms(PRUint32 *aNumSearchTerms);

  /* readonly attribute nsIMsgSearchAdapter runningAdapter; */
  nsresult GetRunningAdapter(nsIMsgSearchAdapter  *aRunningAdapter);

  /* void getNthSearchTerm (in long whichTerm, in nsMsgSearchAttribValue attrib, in nsMsgSearchOpValue op, in nsIMsgSearchValue value); */
  nsresult GetNthSearchTerm(PRInt32 whichTerm, nsMsgSearchAttribValue attrib, nsMsgSearchOpValue op, nsIMsgSearchValue value);

  /* long countSearchScopes (); */
  nsresult CountSearchScopes(PRInt32 *_retval);

  /* void getNthSearchScope (in long which, out nsMsgSearchScopeValue scopeId, out nsIMsgFolder folder); */
  nsresult GetNthSearchScope(PRInt32 which, nsMsgSearchScopeValue *scopeId, nsIMsgFolder *folder);

  /* void addScopeTerm (in nsMsgSearchScopeValue scope, in nsIMsgFolder folder); */
  nsresult AddScopeTerm(nsMsgSearchScopeValue scope_, nsIMsgFolder folder);

  /* void addDirectoryScopeTerm (in nsMsgSearchScopeValue scope); */
  nsresult AddDirectoryScopeTerm(nsMsgSearchScopeValue scope_);

  /* void clearScopes (); */
  nsresult ClearScopes();

  /* [noscript] boolean ScopeUsesCustomHeaders (in nsMsgSearchScopeValue scope, in voidPtr selection, in boolean forFilters); */
  nsresult ScopeUsesCustomHeaders(nsMsgSearchScopeValue scope_, void * selection, PRBool forFilters, PRBool *_retval);

  /* boolean IsStringAttribute (in nsMsgSearchAttribValue attrib); */
  nsresult IsStringAttribute(nsMsgSearchAttribValue attrib, PRBool *_retval);

  /* void AddAllScopes (in nsMsgSearchScopeValue attrib); */
  nsresult AddAllScopes(nsMsgSearchScopeValue attrib);

  /* void search (in nsIMsgWindow aWindow); */
  nsresult Search(nsIMsgWindow aWindow);

  /* void interruptSearch (); */
  nsresult InterruptSearch();

  /* void pauseSearch (); */
  nsresult PauseSearch();

  /* void resumeSearch (); */
  nsresult ResumeSearch();

  /* [noscript] readonly attribute voidPtr searchParam; */
  nsresult GetSearchParam(void * *aSearchParam);

  /* readonly attribute nsMsgSearchType searchType; */
  nsresult GetSearchType(nsMsgSearchType  *aSearchType);

  /* [noscript] nsMsgSearchType SetSearchParam (in nsMsgSearchType type, in voidPtr param); */
  nsresult SetSearchParam(nsMsgSearchType type, void * param, nsMsgSearchType *_retval);

  /* [noscript] void AddResultElement (in nsMsgResultElement element); */
  nsresult AddResultElement(nsMsgResultElement element);

  /* boolean MatchHdr (in nsIMsgDBHdr aMsgHdr, in nsIMsgDatabase aDatabase); */
  nsresult MatchHdr(nsIMsgDBHdr aMsgHdr, nsIMsgDatabase aDatabase, PRBool *_retval);

  /* void addSearchHit (in nsIMsgDBHdr header, in nsIMsgFolder folder); */
  nsresult AddSearchHit(nsIMsgDBHdr header, nsIMsgFolder folder);

  /* readonly attribute long numResults; */
  nsresult GetNumResults(PRInt32 *aNumResults);

  /* attribute nsIMsgWindow window; */
  nsresult GetWindow(nsIMsgWindow  *aWindow);
  nsresult SetWindow(nsIMsgWindow  aWindow);

  enum { BooleanOR = 0 };

  enum { BooleanAND = 1 };

}

