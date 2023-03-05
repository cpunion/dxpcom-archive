/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgFilterList.idl
 */

module mozilla.dxpcom.nsIMsgFilterListD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgFilterList;


public import mozilla.dxpcom.nsIMsgFilterListD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsMsgFilterCore;
public import mozilla.dxpcom.nsMsgFilterCoreD;
public import mozilla.xpcom.nsIMsgFilter;
public import mozilla.dxpcom.nsIMsgFilterD;
public import mozilla.xpcom.nsIMsgFilterHitNotify;
public import mozilla.dxpcom.nsIMsgFilterHitNotifyD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;


/* starting wrapper class:    nsIMsgFilterList */
class nsIMsgFilterListD : public nsISupportsD {

  static const nsIID IID = NS_IMSGFILTERLIST_IID;


  alias nsIMsgFilterList InnerType;

  this(nsIMsgFilterList intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgFilterList opCast() {
    return inner;
  }

  void opAssign(nsIMsgFilterList value) {
    inner = value;
  }

  enum { attribNone = 0 }

  enum { attribVersion = 1 }

  enum { attribLogging = 2 }

  enum { attribName = 3 }

  enum { attribEnabled = 4 }

  enum { attribDescription = 5 }

  enum { attribType = 6 }

  enum { attribScriptFile = 7 }

  enum { attribAction = 8 }

  enum { attribActionValue = 9 }

  enum { attribCondition = 10 }

  /* attribute nsIMsgFolder folder; */
  nsIMsgFolderD  Folder(){
    nsIMsgFolder value;
    nsresult __result = inner.GetFolder(&value);
    CheckException(__result);
    return new nsIMsgFolderD(value);
  }
  void Folder(nsIMsgFolderD  aFolder){
    nsIMsgFolder value;
    nsresult __result = inner.SetFolder(value);
    CheckException(__result);
  }

  /* readonly attribute short version; */
  PRInt16 Version(){
    PRInt16 value;
    nsresult __result = inner.GetVersion(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string arbitraryHeaders; */
  char* ArbitraryHeaders(){
    char* value;
    nsresult __result = inner.GetArbitraryHeaders(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute boolean shouldDownloadAllHeaders; */
  PRBool ShouldDownloadAllHeaders(){
    PRBool value;
    nsresult __result = inner.GetShouldDownloadAllHeaders(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute unsigned long filterCount; */
  PRUint32 FilterCount(){
    PRUint32 value;
    nsresult __result = inner.GetFilterCount(&value);
    CheckException(__result);
    return value;
  }

  /* nsIMsgFilter getFilterAt (in unsigned long filterIndex); */
  nsIMsgFilterD  GetFilterAt(PRUint32 filterIndex){
    nsIMsgFilter _retval;
    nsresult __result = inner.GetFilterAt(filterIndex, &_retval);
    CheckException(__result);
    return new nsIMsgFilterD(_retval);
  }

  /* nsIMsgFilter getFilterNamed (in wstring filterName); */
  nsIMsgFilterD  GetFilterNamed(PRUnichar*filterName){
    nsIMsgFilter _retval;
    nsresult __result = inner.GetFilterNamed(filterName, &_retval);
    CheckException(__result);
    return new nsIMsgFilterD(_retval);
  }

  /* void setFilterAt (in unsigned long filterIndex, in nsIMsgFilter filter); */
  void SetFilterAt(PRUint32 filterIndex, nsIMsgFilterD filter){
    nsresult __result = inner.SetFilterAt(filterIndex, filter ? cast(nsIMsgFilter)filter : null);
    CheckException(__result);
  }

  /* void removeFilter (in nsIMsgFilter filter); */
  void RemoveFilter(nsIMsgFilterD filter){
    nsresult __result = inner.RemoveFilter(filter ? cast(nsIMsgFilter)filter : null);
    CheckException(__result);
  }

  /* void removeFilterAt (in unsigned long filterIndex); */
  void RemoveFilterAt(PRUint32 filterIndex){
    nsresult __result = inner.RemoveFilterAt(filterIndex);
    CheckException(__result);
  }

  /* void moveFilterAt (in unsigned long filterIndex, in nsMsgFilterMotionValue motion); */
  void MoveFilterAt(PRUint32 filterIndex, nsMsgFilterMotionValue motion){
    nsresult __result = inner.MoveFilterAt(filterIndex, motion);
    CheckException(__result);
  }

  /* void moveFilter (in nsIMsgFilter filter, in nsMsgFilterMotionValue motion); */
  void MoveFilter(nsIMsgFilterD filter, nsMsgFilterMotionValue motion){
    nsresult __result = inner.MoveFilter(filter ? cast(nsIMsgFilter)filter : null, motion);
    CheckException(__result);
  }

  /* void insertFilterAt (in unsigned long filterIndex, in nsIMsgFilter filter); */
  void InsertFilterAt(PRUint32 filterIndex, nsIMsgFilterD filter){
    nsresult __result = inner.InsertFilterAt(filterIndex, filter ? cast(nsIMsgFilter)filter : null);
    CheckException(__result);
  }

  /* attribute boolean loggingEnabled; */
  PRBool LoggingEnabled(){
    PRBool value;
    nsresult __result = inner.GetLoggingEnabled(&value);
    CheckException(__result);
    return value;
  }
  void LoggingEnabled(PRBool aLoggingEnabled){
    nsresult __result = inner.SetLoggingEnabled(aLoggingEnabled);
    CheckException(__result);
  }

  /* nsIMsgFilter createFilter (in wstring name); */
  nsIMsgFilterD  CreateFilter(PRUnichar*name){
    nsIMsgFilter _retval;
    nsresult __result = inner.CreateFilter(name, &_retval);
    CheckException(__result);
    return new nsIMsgFilterD(_retval);
  }

  /* void saveToFile (in nsIOFileStream stream); */
  void SaveToFile(nsIOFileStreamD stream){
    nsresult __result = inner.SaveToFile(stream ? cast(nsIOFileStream)stream : null);
    CheckException(__result);
  }

  /* void parseCondition (in nsIMsgFilter aFilter, in string condition); */
  void ParseCondition(nsIMsgFilterD aFilter, char*condition){
    nsresult __result = inner.ParseCondition(aFilter ? cast(nsIMsgFilter)aFilter : null, condition);
    CheckException(__result);
  }

  /* attribute nsIFileSpec defaultFile; */
  nsIFileSpecD  DefaultFile(){
    nsIFileSpec value;
    nsresult __result = inner.GetDefaultFile(&value);
    CheckException(__result);
    return new nsIFileSpecD(value);
  }
  void DefaultFile(nsIFileSpecD  aDefaultFile){
    nsIFileSpec value;
    nsresult __result = inner.SetDefaultFile(value);
    CheckException(__result);
  }

  /* void saveToDefaultFile (); */
  void SaveToDefaultFile(){
    nsresult __result = inner.SaveToDefaultFile();
    CheckException(__result);
  }

  /* [noscript] void applyFiltersToHdr (in nsMsgFilterTypeType filterType, in nsIMsgDBHdr msgHdr, in nsIMsgFolder folder, in nsIMsgDatabase db, in string headers, in unsigned long headerSize, in nsIMsgFilterHitNotify listener, in nsIMsgWindow msgWindow, in nsILocalFile aMessageFile); */
  void ApplyFiltersToHdr(nsMsgFilterTypeType filterType, nsIMsgDBHdrD msgHdr, nsIMsgFolderD folder, nsIMsgDatabaseD db, char*headers, PRUint32 headerSize, nsIMsgFilterHitNotifyD listener, nsIMsgWindowD msgWindow, nsILocalFileD aMessageFile){
    nsresult __result = inner.ApplyFiltersToHdr(filterType, msgHdr ? cast(nsIMsgDBHdr)msgHdr : null, folder ? cast(nsIMsgFolder)folder : null, db ? cast(nsIMsgDatabase)db : null, headers, headerSize, listener ? cast(nsIMsgFilterHitNotify)listener : null, msgWindow ? cast(nsIMsgWindow)msgWindow : null, aMessageFile ? cast(nsILocalFile)aMessageFile : null);
    CheckException(__result);
  }

  /* void writeIntAttr (in nsMsgFilterFileAttribValue attrib, in long value, in nsIOFileStream stream); */
  void WriteIntAttr(nsMsgFilterFileAttribValue attrib, PRInt32 value, nsIOFileStreamD stream){
    nsresult __result = inner.WriteIntAttr(attrib, value, stream ? cast(nsIOFileStream)stream : null);
    CheckException(__result);
  }

  /* void writeStrAttr (in nsMsgFilterFileAttribValue attrib, in string value, in nsIOFileStream stream); */
  void WriteStrAttr(nsMsgFilterFileAttribValue attrib, char*value, nsIOFileStreamD stream){
    nsresult __result = inner.WriteStrAttr(attrib, value, stream ? cast(nsIOFileStream)stream : null);
    CheckException(__result);
  }

  /* void writeWstrAttr (in nsMsgFilterFileAttribValue attrib, in wstring value, in nsIOFileStream stream); */
  void WriteWstrAttr(nsMsgFilterFileAttribValue attrib, PRUnichar*value, nsIOFileStreamD stream){
    nsresult __result = inner.WriteWstrAttr(attrib, value, stream ? cast(nsIOFileStream)stream : null);
    CheckException(__result);
  }

  /* void writeBoolAttr (in nsMsgFilterFileAttribValue attrib, in boolean value, in nsIOFileStream stream); */
  void WriteBoolAttr(nsMsgFilterFileAttribValue attrib, PRBool value, nsIOFileStreamD stream){
    nsresult __result = inner.WriteBoolAttr(attrib, value, stream ? cast(nsIOFileStream)stream : null);
    CheckException(__result);
  }

  /* boolean matchOrChangeFilterTarget (in string oldUri, in string newUri, in boolean caseInsensitive); */
  PRBool MatchOrChangeFilterTarget(char*oldUri, char*newUri, PRBool caseInsensitive){
    PRBool _retval;
    nsresult __result = inner.MatchOrChangeFilterTarget(oldUri, newUri, caseInsensitive, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* attribute nsIOutputStream logStream; */
  nsIOutputStreamD  LogStream(){
    nsIOutputStream value;
    nsresult __result = inner.GetLogStream(&value);
    CheckException(__result);
    return new nsIOutputStreamD(value);
  }
  void LogStream(nsIOutputStreamD  aLogStream){
    nsIOutputStream value;
    nsresult __result = inner.SetLogStream(value);
    CheckException(__result);
  }

  /* readonly attribute string logURL; */
  char* LogURL(){
    char* value;
    nsresult __result = inner.GetLogURL(&value);
    CheckException(__result);
    return value;
  }

  /* void clearLog (); */
  void ClearLog(){
    nsresult __result = inner.ClearLog();
    CheckException(__result);
  }

  /* void ensureLogFile (); */
  void EnsureLogFile(){
    nsresult __result = inner.EnsureLogFile();
    CheckException(__result);
  }

  /* void flushLogIfNecessary (); */
  void FlushLogIfNecessary(){
    nsresult __result = inner.FlushLogIfNecessary();
    CheckException(__result);
  }

private:
  nsIMsgFilterList inner;

}


/* starting wrapper class:    nsMsgFilterMotion */
class nsMsgFilterMotionD {

  static const nsIID IID = NS_MSGFILTERMOTION_IID;


  alias nsMsgFilterMotion InnerType;

  this(nsMsgFilterMotion intr){
    this.inner = intr;
  }

  nsMsgFilterMotion opCast() {
    return inner;
  }

  void opAssign(nsMsgFilterMotion value) {
    inner = value;
  }

  enum { up = 0 }

  enum { down = 1 }

private:
  nsMsgFilterMotion inner;

}

