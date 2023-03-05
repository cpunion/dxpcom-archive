/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgFilter.idl
 */

module mozilla.xpcom.nsIMsgFilter;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsMsgFilterCore;
public import mozilla.xpcom.nsIMsgSearchScopeTerm;
public import mozilla.xpcom.nsIMsgSearchValue;
public import mozilla.xpcom.nsIMsgSearchTerm;
public import mozilla.xpcom.nsISupportsArray;

public import mozilla.xpcom.nsIMsgFilterList;

/* starting interface:    nsIMsgRuleAction */
const char[] NS_IMSGRULEACTION_IID_STR = "09aa663b-ab04-457d-9557-319e4cc7884e";

const nsIID NS_IMSGRULEACTION_IID= 
  {0x09aa663b, 0xab04, 0x457d, 
    [ 0x95, 0x57, 0x31, 0x9e, 0x4c, 0xc7, 0x88, 0x4e ]};

extern(Windows)
interface nsIMsgRuleAction : nsISupports {
  static const char[] IID_STR = NS_IMSGRULEACTION_IID_STR;
  static const nsIID IID = NS_IMSGRULEACTION_IID;

  /* attribute nsMsgRuleActionType type; */
  nsresult GetType(nsMsgRuleActionType *aType);
  nsresult SetType(nsMsgRuleActionType aType);

  /* attribute nsMsgPriorityValue priority; */
  nsresult GetPriority(nsMsgPriorityValue *aPriority);
  nsresult SetPriority(nsMsgPriorityValue aPriority);

  /* attribute string targetFolderUri; */
  nsresult GetTargetFolderUri(char * *aTargetFolderUri);
  nsresult SetTargetFolderUri(char * aTargetFolderUri);

  /* attribute nsMsgLabelValue label; */
  nsresult GetLabel(nsMsgLabelValue *aLabel);
  nsresult SetLabel(nsMsgLabelValue aLabel);

  /* attribute long junkScore; */
  nsresult GetJunkScore(PRInt32 *aJunkScore);
  nsresult SetJunkScore(PRInt32 aJunkScore);

  /* attribute string strValue; */
  nsresult GetStrValue(char * *aStrValue);
  nsresult SetStrValue(char * aStrValue);

}


/* starting interface:    nsIMsgFilter */
const char[] NS_IMSGFILTER_IID_STR = "605db0f8-04a1-11d3-a50a-0060b0fc04b7";

const nsIID NS_IMSGFILTER_IID= 
  {0x605db0f8, 0x04a1, 0x11d3, 
    [ 0xa5, 0x0a, 0x00, 0x60, 0xb0, 0xfc, 0x04, 0xb7 ]};

extern(Windows)
interface nsIMsgFilter : nsISupports {
  static const char[] IID_STR = NS_IMSGFILTER_IID_STR;
  static const nsIID IID = NS_IMSGFILTER_IID;

  /* attribute nsMsgFilterTypeType filterType; */
  nsresult GetFilterType(nsMsgFilterTypeType *aFilterType);
  nsresult SetFilterType(nsMsgFilterTypeType aFilterType);

  /**
     * some filters are "temporary".  For example, the filters we create when the user
     * filters return receipts to the Sent folder.
     * we don't show temporary filters in the UI
     * and we don't write them to disk.
     */
  /* attribute boolean temporary; */
  nsresult GetTemporary(PRBool *aTemporary);
  nsresult SetTemporary(PRBool aTemporary);

  /* attribute boolean enabled; */
  nsresult GetEnabled(PRBool *aEnabled);
  nsresult SetEnabled(PRBool aEnabled);

  /* attribute wstring filterName; */
  nsresult GetFilterName(PRUnichar * *aFilterName);
  nsresult SetFilterName(PRUnichar * aFilterName);

  /* attribute string filterDesc; */
  nsresult GetFilterDesc(char * *aFilterDesc);
  nsresult SetFilterDesc(char * aFilterDesc);

  /* attribute string unparsedBuffer; */
  nsresult GetUnparsedBuffer(char * *aUnparsedBuffer);
  nsresult SetUnparsedBuffer(char * aUnparsedBuffer);

  /* attribute boolean unparseable; */
  nsresult GetUnparseable(PRBool *aUnparseable);
  nsresult SetUnparseable(PRBool aUnparseable);

  /* readonly attribute nsIMsgFilterList filterList; */
  nsresult GetFilterList(nsIMsgFilterList  *aFilterList);

  /* void AddTerm (in nsMsgSearchAttribValue attrib, in nsMsgSearchOpValue op, in nsIMsgSearchValue value, in boolean BooleanAND, in string arbitraryHeader); */
  nsresult AddTerm(nsMsgSearchAttribValue attrib, nsMsgSearchOpValue op, nsIMsgSearchValue value, PRBool BooleanAND, char *arbitraryHeader);

  /* void GetTerm (in long termIndex, out nsMsgSearchAttribValue attrib, out nsMsgSearchOpValue op, out nsIMsgSearchValue value, out boolean BooleanAND, out string arbitraryHeader); */
  nsresult GetTerm(PRInt32 termIndex, nsMsgSearchAttribValue *attrib, nsMsgSearchOpValue *op, nsIMsgSearchValue *value, PRBool *BooleanAND, char **arbitraryHeader);

  /* void appendTerm (in nsIMsgSearchTerm term); */
  nsresult AppendTerm(nsIMsgSearchTerm term);

  /* nsIMsgSearchTerm createTerm (); */
  nsresult CreateTerm(nsIMsgSearchTerm *_retval);

  /* attribute nsISupportsArray searchTerms; */
  nsresult GetSearchTerms(nsISupportsArray  *aSearchTerms);
  nsresult SetSearchTerms(nsISupportsArray  aSearchTerms);

  /* attribute nsIMsgSearchScopeTerm scope; */
  nsresult GetScope(nsIMsgSearchScopeTerm  *aScope);
  nsresult SetScope(nsIMsgSearchScopeTerm  aScope);

  /* [noscript] void MatchHdr (in nsIMsgDBHdr msgHdr, in nsIMsgFolder folder, in nsIMsgDatabase db, in string headers, in unsigned long headerSize, out boolean result); */
  nsresult MatchHdr(nsIMsgDBHdr msgHdr, nsIMsgFolder folder, nsIMsgDatabase db, char *headers, PRUint32 headerSize, PRBool *result);

  /* void logRuleHit (in nsIMsgRuleAction aFilterAction, in nsIMsgDBHdr aHeader); */
  nsresult LogRuleHit(nsIMsgRuleAction aFilterAction, nsIMsgDBHdr aHeader);

  /* nsIMsgRuleAction createAction (); */
  nsresult CreateAction(nsIMsgRuleAction *_retval);

  /* nsIMsgRuleAction getActionAt (in long aIndex); */
  nsresult GetActionAt(PRInt32 aIndex, nsIMsgRuleAction *_retval);

  /* void appendAction (in nsIMsgRuleAction action); */
  nsresult AppendAction(nsIMsgRuleAction action);

  /* void clearActionList (); */
  nsresult ClearActionList();

  /* void getSortedActionList (in nsISupportsArray actionList); */
  nsresult GetSortedActionList(nsISupportsArray actionList);

  /* readonly attribute nsISupportsArray actionList; */
  nsresult GetActionList(nsISupportsArray  *aActionList);

}

