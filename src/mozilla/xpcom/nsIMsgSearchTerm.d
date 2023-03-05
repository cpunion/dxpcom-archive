/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSearchTerm.idl
 */

module mozilla.xpcom.nsIMsgSearchTerm;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsMsgSearchCore;
public import mozilla.xpcom.nsIMsgSearchValue;

public import mozilla.xpcom.nsIMsgHdr;

public import mozilla.xpcom.nsIMsgDatabase; /* forward declaration */

public import mozilla.xpcom.nsIMsgSearchScopeTerm; /* forward declaration */


/* starting interface:    nsIMsgSearchTerm */
const char[] NS_IMSGSEARCHTERM_IID_STR = "cde583fe-9add-4adb-9e1a-9cfe050d8a26";

const nsIID NS_IMSGSEARCHTERM_IID= 
  {0xcde583fe, 0x9add, 0x4adb, 
    [ 0x9e, 0x1a, 0x9c, 0xfe, 0x05, 0x0d, 0x8a, 0x26 ]};

extern(Windows)
interface nsIMsgSearchTerm : nsISupports {
  static const char[] IID_STR = NS_IMSGSEARCHTERM_IID_STR;
  static const nsIID IID = NS_IMSGSEARCHTERM_IID;

  /* attribute nsMsgSearchAttribValue attrib; */
  nsresult GetAttrib(nsMsgSearchAttribValue *aAttrib);
  nsresult SetAttrib(nsMsgSearchAttribValue aAttrib);

  /* attribute nsMsgSearchOpValue op; */
  nsresult GetOp(nsMsgSearchOpValue *aOp);
  nsresult SetOp(nsMsgSearchOpValue aOp);

  /* attribute nsIMsgSearchValue value; */
  nsresult GetValue(nsIMsgSearchValue  *aValue);
  nsresult SetValue(nsIMsgSearchValue  aValue);

  /* attribute boolean booleanAnd; */
  nsresult GetBooleanAnd(PRBool *aBooleanAnd);
  nsresult SetBooleanAnd(PRBool aBooleanAnd);

  /* attribute string arbitraryHeader; */
  nsresult GetArbitraryHeader(char * *aArbitraryHeader);
  nsresult SetArbitraryHeader(char * aArbitraryHeader);

  /* attribute boolean beginsGrouping; */
  nsresult GetBeginsGrouping(PRBool *aBeginsGrouping);
  nsresult SetBeginsGrouping(PRBool aBeginsGrouping);

  /* attribute boolean endsGrouping; */
  nsresult GetEndsGrouping(PRBool *aEndsGrouping);
  nsresult SetEndsGrouping(PRBool aEndsGrouping);

  /* boolean matchRfc822String (in string aString, in string charset, in boolean charsetOverride); */
  nsresult MatchRfc822String(char *aString, char *charset, PRBool charsetOverride, PRBool *_retval);

  /* boolean matchRfc2047String (in string aString, in string charset, in boolean charsetOverride); */
  nsresult MatchRfc2047String(char *aString, char *charset, PRBool charsetOverride, PRBool *_retval);

  /* boolean matchDate (in PRTime aTime); */
  nsresult MatchDate(PRTime aTime, PRBool *_retval);

  /* boolean matchStatus (in unsigned long aStatus); */
  nsresult MatchStatus(PRUint32 aStatus, PRBool *_retval);

  /* boolean matchPriority (in nsMsgPriorityValue priority); */
  nsresult MatchPriority(nsMsgPriorityValue priority, PRBool *_retval);

  /* boolean matchAge (in PRTime days); */
  nsresult MatchAge(PRTime days, PRBool *_retval);

  /* boolean matchSize (in unsigned long size); */
  nsresult MatchSize(PRUint32 size, PRBool *_retval);

  /* boolean matchLabel (in nsMsgLabelValue aLabelValue); */
  nsresult MatchLabel(nsMsgLabelValue aLabelValue, PRBool *_retval);

  /* boolean matchJunkStatus (in string aJunkScore); */
  nsresult MatchJunkStatus(char *aJunkScore, PRBool *_retval);

  /* boolean matchBody (in nsIMsgSearchScopeTerm scopeTerm, in unsigned long offset, in unsigned long length, in string charset, in nsIMsgDBHdr msg, in nsIMsgDatabase db); */
  nsresult MatchBody(nsIMsgSearchScopeTerm scopeTerm, PRUint32 offset, PRUint32 length, char *charset, nsIMsgDBHdr msg, nsIMsgDatabase db, PRBool *_retval);

  /* [noscript] boolean matchArbitraryHeader (in nsIMsgSearchScopeTerm scopeTerm, in unsigned long offset, in unsigned long length, in string charset, in boolean charsetOverride, in nsIMsgDBHdr msg, in nsIMsgDatabase db, in string headers, in unsigned long headerLength, in boolean forFilters); */
  nsresult MatchArbitraryHeader(nsIMsgSearchScopeTerm scopeTerm, PRUint32 offset, PRUint32 length, char *charset, PRBool charsetOverride, nsIMsgDBHdr msg, nsIMsgDatabase db, char *headers, PRUint32 headerLength, PRBool forFilters, PRBool *_retval);

  /* readonly attribute boolean matchAllBeforeDeciding; */
  nsresult GetMatchAllBeforeDeciding(PRBool *aMatchAllBeforeDeciding);

  /* readonly attribute ACString termAsString; */
  nsresult GetTermAsString(nsACString * aTermAsString);

  /* boolean matchKeyword (in string keyword); */
  nsresult MatchKeyword(char *keyword, PRBool *_retval);

  /* attribute boolean matchAll; */
  nsresult GetMatchAll(PRBool *aMatchAll);
  nsresult SetMatchAll(PRBool aMatchAll);

}

