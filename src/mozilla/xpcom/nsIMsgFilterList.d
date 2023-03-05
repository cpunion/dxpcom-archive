/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgFilterList.idl
 */

module mozilla.xpcom.nsIMsgFilterList;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsMsgFilterCore;
public import mozilla.xpcom.nsIMsgFilter;
public import mozilla.xpcom.nsIMsgFilterHitNotify;

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */

alias PRInt32 nsMsgFilterFileAttribValue;


/* starting interface:    nsIMsgFilterList */
const char[] NS_IMSGFILTERLIST_IID_STR = "ab0105ad-86bf-4862-9adb-84f4e266577c";

const nsIID NS_IMSGFILTERLIST_IID= 
  {0xab0105ad, 0x86bf, 0x4862, 
    [ 0x9a, 0xdb, 0x84, 0xf4, 0xe2, 0x66, 0x57, 0x7c ]};

extern(Windows)
interface nsIMsgFilterList : nsISupports {
  static const char[] IID_STR = NS_IMSGFILTERLIST_IID_STR;
  static const nsIID IID = NS_IMSGFILTERLIST_IID;

  enum { attribNone = 0 };

  enum { attribVersion = 1 };

  enum { attribLogging = 2 };

  enum { attribName = 3 };

  enum { attribEnabled = 4 };

  enum { attribDescription = 5 };

  enum { attribType = 6 };

  enum { attribScriptFile = 7 };

  enum { attribAction = 8 };

  enum { attribActionValue = 9 };

  enum { attribCondition = 10 };

  /* attribute nsIMsgFolder folder; */
  nsresult GetFolder(nsIMsgFolder  *aFolder);
  nsresult SetFolder(nsIMsgFolder  aFolder);

  /* readonly attribute short version; */
  nsresult GetVersion(PRInt16 *aVersion);

  /* readonly attribute string arbitraryHeaders; */
  nsresult GetArbitraryHeaders(char * *aArbitraryHeaders);

  /* readonly attribute boolean shouldDownloadAllHeaders; */
  nsresult GetShouldDownloadAllHeaders(PRBool *aShouldDownloadAllHeaders);

  /* readonly attribute unsigned long filterCount; */
  nsresult GetFilterCount(PRUint32 *aFilterCount);

  /* nsIMsgFilter getFilterAt (in unsigned long filterIndex); */
  nsresult GetFilterAt(PRUint32 filterIndex, nsIMsgFilter *_retval);

  /* nsIMsgFilter getFilterNamed (in wstring filterName); */
  nsresult GetFilterNamed(PRUnichar *filterName, nsIMsgFilter *_retval);

  /* void setFilterAt (in unsigned long filterIndex, in nsIMsgFilter filter); */
  nsresult SetFilterAt(PRUint32 filterIndex, nsIMsgFilter filter);

  /* void removeFilter (in nsIMsgFilter filter); */
  nsresult RemoveFilter(nsIMsgFilter filter);

  /* void removeFilterAt (in unsigned long filterIndex); */
  nsresult RemoveFilterAt(PRUint32 filterIndex);

  /* void moveFilterAt (in unsigned long filterIndex, in nsMsgFilterMotionValue motion); */
  nsresult MoveFilterAt(PRUint32 filterIndex, nsMsgFilterMotionValue motion);

  /* void moveFilter (in nsIMsgFilter filter, in nsMsgFilterMotionValue motion); */
  nsresult MoveFilter(nsIMsgFilter filter, nsMsgFilterMotionValue motion);

  /* void insertFilterAt (in unsigned long filterIndex, in nsIMsgFilter filter); */
  nsresult InsertFilterAt(PRUint32 filterIndex, nsIMsgFilter filter);

  /* attribute boolean loggingEnabled; */
  nsresult GetLoggingEnabled(PRBool *aLoggingEnabled);
  nsresult SetLoggingEnabled(PRBool aLoggingEnabled);

  /* nsIMsgFilter createFilter (in wstring name); */
  nsresult CreateFilter(PRUnichar *name, nsIMsgFilter *_retval);

  /* void saveToFile (in nsIOFileStream stream); */
  nsresult SaveToFile(nsIOFileStream stream);

  /* void parseCondition (in nsIMsgFilter aFilter, in string condition); */
  nsresult ParseCondition(nsIMsgFilter aFilter, char *condition);

  /* attribute nsIFileSpec defaultFile; */
  nsresult GetDefaultFile(nsIFileSpec  *aDefaultFile);
  nsresult SetDefaultFile(nsIFileSpec  aDefaultFile);

  /* void saveToDefaultFile (); */
  nsresult SaveToDefaultFile();

  /* [noscript] void applyFiltersToHdr (in nsMsgFilterTypeType filterType, in nsIMsgDBHdr msgHdr, in nsIMsgFolder folder, in nsIMsgDatabase db, in string headers, in unsigned long headerSize, in nsIMsgFilterHitNotify listener, in nsIMsgWindow msgWindow, in nsILocalFile aMessageFile); */
  nsresult ApplyFiltersToHdr(nsMsgFilterTypeType filterType, nsIMsgDBHdr msgHdr, nsIMsgFolder folder, nsIMsgDatabase db, char *headers, PRUint32 headerSize, nsIMsgFilterHitNotify listener, nsIMsgWindow msgWindow, nsILocalFile aMessageFile);

  /* void writeIntAttr (in nsMsgFilterFileAttribValue attrib, in long value, in nsIOFileStream stream); */
  nsresult WriteIntAttr(nsMsgFilterFileAttribValue attrib, PRInt32 value, nsIOFileStream stream);

  /* void writeStrAttr (in nsMsgFilterFileAttribValue attrib, in string value, in nsIOFileStream stream); */
  nsresult WriteStrAttr(nsMsgFilterFileAttribValue attrib, char *value, nsIOFileStream stream);

  /* void writeWstrAttr (in nsMsgFilterFileAttribValue attrib, in wstring value, in nsIOFileStream stream); */
  nsresult WriteWstrAttr(nsMsgFilterFileAttribValue attrib, PRUnichar *value, nsIOFileStream stream);

  /* void writeBoolAttr (in nsMsgFilterFileAttribValue attrib, in boolean value, in nsIOFileStream stream); */
  nsresult WriteBoolAttr(nsMsgFilterFileAttribValue attrib, PRBool value, nsIOFileStream stream);

  /* boolean matchOrChangeFilterTarget (in string oldUri, in string newUri, in boolean caseInsensitive); */
  nsresult MatchOrChangeFilterTarget(char *oldUri, char *newUri, PRBool caseInsensitive, PRBool *_retval);

  /* attribute nsIOutputStream logStream; */
  nsresult GetLogStream(nsIOutputStream  *aLogStream);
  nsresult SetLogStream(nsIOutputStream  aLogStream);

  /* readonly attribute string logURL; */
  nsresult GetLogURL(char * *aLogURL);

  /* void clearLog (); */
  nsresult ClearLog();

  /* void ensureLogFile (); */
  nsresult EnsureLogFile();

  /* void flushLogIfNecessary (); */
  nsresult FlushLogIfNecessary();

}


/* starting interface:    nsMsgFilterMotion */
const char[] NS_MSGFILTERMOTION_IID_STR = "d067b528-304e-11d3-a0e1-00a0c900d445";

const nsIID NS_MSGFILTERMOTION_IID= 
  {0xd067b528, 0x304e, 0x11d3, 
    [ 0xa0, 0xe1, 0x00, 0xa0, 0xc9, 0x00, 0xd4, 0x45 ]};

extern(Windows)
interface nsMsgFilterMotion {
  static const char[] IID_STR = NS_MSGFILTERMOTION_IID_STR;
  static const nsIID IID = NS_MSGFILTERMOTION_IID;

  enum { up = 0 };

  enum { down = 1 };

}

