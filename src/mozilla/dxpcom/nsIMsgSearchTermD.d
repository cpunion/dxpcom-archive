/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSearchTerm.idl
 */

module mozilla.dxpcom.nsIMsgSearchTermD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgSearchTerm;


public import mozilla.dxpcom.nsIMsgSearchTermD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsMsgSearchCore;
public import mozilla.dxpcom.nsMsgSearchCoreD;
public import mozilla.xpcom.nsIMsgSearchValue;
public import mozilla.dxpcom.nsIMsgSearchValueD;

public import mozilla.xpcom.nsIMsgHdr;

import mozilla.dxpcom.nsIMsgHdrD;

public import mozilla.xpcom.nsIMsgDatabase;

public import mozilla.dxpcom.nsIMsgDatabaseD;

public import mozilla.xpcom.nsIMsgSearchScopeTerm;

public import mozilla.dxpcom.nsIMsgSearchScopeTermD;


/* starting wrapper class:    nsIMsgSearchTerm */
class nsIMsgSearchTermD : public nsISupportsD {

  static const nsIID IID = NS_IMSGSEARCHTERM_IID;


  alias nsIMsgSearchTerm InnerType;

  this(nsIMsgSearchTerm intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgSearchTerm opCast() {
    return inner;
  }

  void opAssign(nsIMsgSearchTerm value) {
    inner = value;
  }

  /* attribute nsMsgSearchAttribValue attrib; */
  nsMsgSearchAttribValue Attrib(){
    nsMsgSearchAttribValue value;
    nsresult __result = inner.GetAttrib(&value);
    CheckException(__result);
    return value;
  }
  void Attrib(nsMsgSearchAttribValue aAttrib){
    nsMsgSearchAttribValue value;
    nsresult __result = inner.SetAttrib(value);
    CheckException(__result);
  }

  /* attribute nsMsgSearchOpValue op; */
  nsMsgSearchOpValue Op(){
    nsMsgSearchOpValue value;
    nsresult __result = inner.GetOp(&value);
    CheckException(__result);
    return value;
  }
  void Op(nsMsgSearchOpValue aOp){
    nsMsgSearchOpValue value;
    nsresult __result = inner.SetOp(value);
    CheckException(__result);
  }

  /* attribute nsIMsgSearchValue value; */
  nsIMsgSearchValueD  Value(){
    nsIMsgSearchValue value;
    nsresult __result = inner.GetValue(&value);
    CheckException(__result);
    return new nsIMsgSearchValueD(value);
  }
  void Value(nsIMsgSearchValueD  aValue){
    nsIMsgSearchValue value;
    nsresult __result = inner.SetValue(value);
    CheckException(__result);
  }

  /* attribute boolean booleanAnd; */
  PRBool BooleanAnd(){
    PRBool value;
    nsresult __result = inner.GetBooleanAnd(&value);
    CheckException(__result);
    return value;
  }
  void BooleanAnd(PRBool aBooleanAnd){
    nsresult __result = inner.SetBooleanAnd(aBooleanAnd);
    CheckException(__result);
  }

  /* attribute string arbitraryHeader; */
  char* ArbitraryHeader(){
    char* value;
    nsresult __result = inner.GetArbitraryHeader(&value);
    CheckException(__result);
    return value;
  }
  void ArbitraryHeader(char* aArbitraryHeader){
    nsresult __result = inner.SetArbitraryHeader(aArbitraryHeader);
    CheckException(__result);
  }

  /* attribute boolean beginsGrouping; */
  PRBool BeginsGrouping(){
    PRBool value;
    nsresult __result = inner.GetBeginsGrouping(&value);
    CheckException(__result);
    return value;
  }
  void BeginsGrouping(PRBool aBeginsGrouping){
    nsresult __result = inner.SetBeginsGrouping(aBeginsGrouping);
    CheckException(__result);
  }

  /* attribute boolean endsGrouping; */
  PRBool EndsGrouping(){
    PRBool value;
    nsresult __result = inner.GetEndsGrouping(&value);
    CheckException(__result);
    return value;
  }
  void EndsGrouping(PRBool aEndsGrouping){
    nsresult __result = inner.SetEndsGrouping(aEndsGrouping);
    CheckException(__result);
  }

  /* boolean matchRfc822String (in string aString, in string charset, in boolean charsetOverride); */
  PRBool MatchRfc822String(char*aString, char*charset, PRBool charsetOverride){
    PRBool _retval;
    nsresult __result = inner.MatchRfc822String(aString, charset, charsetOverride, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean matchRfc2047String (in string aString, in string charset, in boolean charsetOverride); */
  PRBool MatchRfc2047String(char*aString, char*charset, PRBool charsetOverride){
    PRBool _retval;
    nsresult __result = inner.MatchRfc2047String(aString, charset, charsetOverride, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean matchDate (in PRTime aTime); */
  PRBool MatchDate(PRTime aTime){
    PRBool _retval;
    nsresult __result = inner.MatchDate(aTime, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean matchStatus (in unsigned long aStatus); */
  PRBool MatchStatus(PRUint32 aStatus){
    PRBool _retval;
    nsresult __result = inner.MatchStatus(aStatus, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean matchPriority (in nsMsgPriorityValue priority); */
  PRBool MatchPriority(nsMsgPriorityValue priority){
    PRBool _retval;
    nsresult __result = inner.MatchPriority(priority, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean matchAge (in PRTime days); */
  PRBool MatchAge(PRTime days){
    PRBool _retval;
    nsresult __result = inner.MatchAge(days, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean matchSize (in unsigned long size); */
  PRBool MatchSize(PRUint32 size){
    PRBool _retval;
    nsresult __result = inner.MatchSize(size, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean matchLabel (in nsMsgLabelValue aLabelValue); */
  PRBool MatchLabel(nsMsgLabelValue aLabelValue){
    PRBool _retval;
    nsresult __result = inner.MatchLabel(aLabelValue, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean matchJunkStatus (in string aJunkScore); */
  PRBool MatchJunkStatus(char*aJunkScore){
    PRBool _retval;
    nsresult __result = inner.MatchJunkStatus(aJunkScore, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean matchBody (in nsIMsgSearchScopeTerm scopeTerm, in unsigned long offset, in unsigned long length, in string charset, in nsIMsgDBHdr msg, in nsIMsgDatabase db); */
  PRBool MatchBody(nsIMsgSearchScopeTermD scopeTerm, PRUint32 offset, PRUint32 length, char*charset, nsIMsgDBHdrD msg, nsIMsgDatabaseD db){
    PRBool _retval;
    nsresult __result = inner.MatchBody(scopeTerm ? cast(nsIMsgSearchScopeTerm)scopeTerm : null, offset, length, charset, msg ? cast(nsIMsgDBHdr)msg : null, db ? cast(nsIMsgDatabase)db : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] boolean matchArbitraryHeader (in nsIMsgSearchScopeTerm scopeTerm, in unsigned long offset, in unsigned long length, in string charset, in boolean charsetOverride, in nsIMsgDBHdr msg, in nsIMsgDatabase db, in string headers, in unsigned long headerLength, in boolean forFilters); */
  PRBool MatchArbitraryHeader(nsIMsgSearchScopeTermD scopeTerm, PRUint32 offset, PRUint32 length, char*charset, PRBool charsetOverride, nsIMsgDBHdrD msg, nsIMsgDatabaseD db, char*headers, PRUint32 headerLength, PRBool forFilters){
    PRBool _retval;
    nsresult __result = inner.MatchArbitraryHeader(scopeTerm ? cast(nsIMsgSearchScopeTerm)scopeTerm : null, offset, length, charset, charsetOverride, msg ? cast(nsIMsgDBHdr)msg : null, db ? cast(nsIMsgDatabase)db : null, headers, headerLength, forFilters, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* readonly attribute boolean matchAllBeforeDeciding; */
  PRBool MatchAllBeforeDeciding(){
    PRBool value;
    nsresult __result = inner.GetMatchAllBeforeDeciding(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute ACString termAsString; */
  char[] TermAsString(){
    scope auto value = new ACString();
    nsresult __result = inner.GetTermAsString(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* boolean matchKeyword (in string keyword); */
  PRBool MatchKeyword(char*keyword){
    PRBool _retval;
    nsresult __result = inner.MatchKeyword(keyword, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* attribute boolean matchAll; */
  PRBool MatchAll(){
    PRBool value;
    nsresult __result = inner.GetMatchAll(&value);
    CheckException(__result);
    return value;
  }
  void MatchAll(PRBool aMatchAll){
    nsresult __result = inner.SetMatchAll(aMatchAll);
    CheckException(__result);
  }

private:
  nsIMsgSearchTerm inner;

}

