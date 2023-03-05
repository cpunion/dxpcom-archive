/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINntpIncomingServer.idl
 */

module mozilla.dxpcom.nsINntpIncomingServerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsINntpIncomingServer;


public import mozilla.dxpcom.nsINntpIncomingServerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;

public import mozilla.xpcom.nsIMsgNewsFolder;

public import mozilla.dxpcom.nsIMsgNewsFolderD;

public import mozilla.xpcom.nsINNTPProtocol;

public import mozilla.dxpcom.nsINNTPProtocolD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;


/* starting wrapper class:    nsINntpIncomingServer */
class nsINntpIncomingServerD : public nsISupportsD {

  static const nsIID IID = NS_INNTPINCOMINGSERVER_IID;


  alias nsINntpIncomingServer InnerType;

  this(nsINntpIncomingServer intr){
    super(intr);
    this.inner = intr;
  }

  nsINntpIncomingServer opCast() {
    return inner;
  }

  void opAssign(nsINntpIncomingServer value) {
    inner = value;
  }

  /* attribute nsIFileSpec newsrcFilePath; */
  nsIFileSpecD  NewsrcFilePath(){
    nsIFileSpec value;
    nsresult __result = inner.GetNewsrcFilePath(&value);
    CheckException(__result);
    return new nsIFileSpecD(value);
  }
  void NewsrcFilePath(nsIFileSpecD  aNewsrcFilePath){
    nsIFileSpec value;
    nsresult __result = inner.SetNewsrcFilePath(value);
    CheckException(__result);
  }

  /* attribute nsIFileSpec newsrcRootPath; */
  nsIFileSpecD  NewsrcRootPath(){
    nsIFileSpec value;
    nsresult __result = inner.GetNewsrcRootPath(&value);
    CheckException(__result);
    return new nsIFileSpecD(value);
  }
  void NewsrcRootPath(nsIFileSpecD  aNewsrcRootPath){
    nsIFileSpec value;
    nsresult __result = inner.SetNewsrcRootPath(value);
    CheckException(__result);
  }

  /* attribute boolean notifyOn; */
  PRBool NotifyOn(){
    PRBool value;
    nsresult __result = inner.GetNotifyOn(&value);
    CheckException(__result);
    return value;
  }
  void NotifyOn(PRBool aNotifyOn){
    nsresult __result = inner.SetNotifyOn(aNotifyOn);
    CheckException(__result);
  }

  /* attribute long maxArticles; */
  PRInt32 MaxArticles(){
    PRInt32 value;
    nsresult __result = inner.GetMaxArticles(&value);
    CheckException(__result);
    return value;
  }
  void MaxArticles(PRInt32 aMaxArticles){
    nsresult __result = inner.SetMaxArticles(aMaxArticles);
    CheckException(__result);
  }

  /* attribute boolean markOldRead; */
  PRBool MarkOldRead(){
    PRBool value;
    nsresult __result = inner.GetMarkOldRead(&value);
    CheckException(__result);
    return value;
  }
  void MarkOldRead(PRBool aMarkOldRead){
    nsresult __result = inner.SetMarkOldRead(aMarkOldRead);
    CheckException(__result);
  }

  /* attribute boolean abbreviate; */
  PRBool Abbreviate(){
    PRBool value;
    nsresult __result = inner.GetAbbreviate(&value);
    CheckException(__result);
    return value;
  }
  void Abbreviate(PRBool aAbbreviate){
    nsresult __result = inner.SetAbbreviate(aAbbreviate);
    CheckException(__result);
  }

  /* attribute boolean singleSignon; */
  PRBool SingleSignon(){
    PRBool value;
    nsresult __result = inner.GetSingleSignon(&value);
    CheckException(__result);
    return value;
  }
  void SingleSignon(PRBool aSingleSignon){
    nsresult __result = inner.SetSingleSignon(aSingleSignon);
    CheckException(__result);
  }

  /** the server charset and it may be needed to display newsgroup folder
     *  names correctly 
     **/
  /* attribute ACString charset; */
  char[] Charset(){
    scope auto value = new ACString();
    nsresult __result = inner.GetCharset(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Charset(char[] aCharset){
    scope auto value = new ACString(aCharset);
    nsresult __result = inner.SetCharset(cast(nsACString*)value);
    CheckException(__result);
  }

  /* void addNewsgroup (in AString name); */
  void AddNewsgroup(wchar[] name){
    scope auto _name = new AString(name);
    nsresult __result = inner.AddNewsgroup(cast(nsAString*)_name);
    CheckException(__result);
  }

  /* void removeNewsgroup (in AString name); */
  void RemoveNewsgroup(wchar[] name){
    scope auto _name = new AString(name);
    nsresult __result = inner.RemoveNewsgroup(cast(nsAString*)_name);
    CheckException(__result);
  }

  /* void writeNewsrcFile (); */
  void WriteNewsrcFile(){
    nsresult __result = inner.WriteNewsrcFile();
    CheckException(__result);
  }

  /* attribute boolean newsrcHasChanged; */
  PRBool NewsrcHasChanged(){
    PRBool value;
    nsresult __result = inner.GetNewsrcHasChanged(&value);
    CheckException(__result);
    return value;
  }
  void NewsrcHasChanged(PRBool aNewsrcHasChanged){
    nsresult __result = inner.SetNewsrcHasChanged(aNewsrcHasChanged);
    CheckException(__result);
  }

  /* attribute long maximumConnectionsNumber; */
  PRInt32 MaximumConnectionsNumber(){
    PRInt32 value;
    nsresult __result = inner.GetMaximumConnectionsNumber(&value);
    CheckException(__result);
    return value;
  }
  void MaximumConnectionsNumber(PRInt32 aMaximumConnectionsNumber){
    nsresult __result = inner.SetMaximumConnectionsNumber(aMaximumConnectionsNumber);
    CheckException(__result);
  }

  /* readonly attribute long numGroupsNeedingCounts; */
  PRInt32 NumGroupsNeedingCounts(){
    PRInt32 value;
    nsresult __result = inner.GetNumGroupsNeedingCounts(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute nsISupports firstGroupNeedingCounts; */
  nsISupportsD  FirstGroupNeedingCounts(){
    nsISupports value;
    nsresult __result = inner.GetFirstGroupNeedingCounts(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }

  /* void displaySubscribedGroup (in nsIMsgNewsFolder msgFolder, in long firstMessage, in long lastMessage, in long totalMessages); */
  void DisplaySubscribedGroup(nsIMsgNewsFolderD msgFolder, PRInt32 firstMessage, PRInt32 lastMessage, PRInt32 totalMessages){
    nsresult __result = inner.DisplaySubscribedGroup(msgFolder ? cast(nsIMsgNewsFolder)msgFolder : null, firstMessage, lastMessage, totalMessages);
    CheckException(__result);
  }

  /* void getNntpConnection (in nsIURI url, in nsIMsgWindow window, out nsINNTPProtocol aNntpConnection); */
  void GetNntpConnection(nsIURID url, nsIMsgWindowD window, out nsINNTPProtocolD aNntpConnection){
    nsINNTPProtocol _aNntpConnection;
    nsresult __result = inner.GetNntpConnection(url ? cast(nsIURI)url : null, window ? cast(nsIMsgWindow)window : null, &_aNntpConnection);
    CheckException(__result);
    aNntpConnection = _aNntpConnection ? new nsINNTPProtocolD(_aNntpConnection) : null;
  }

  /* void removeConnection (in nsINNTPProtocol aNntpConnection); */
  void RemoveConnection(nsINNTPProtocolD aNntpConnection){
    nsresult __result = inner.RemoveConnection(aNntpConnection ? cast(nsINNTPProtocol)aNntpConnection : null);
    CheckException(__result);
  }

  /* boolean containsNewsgroup (in AUTF8String name); */
  PRBool ContainsNewsgroup(char[] name){
    scope auto _name = new ACString(name);
    PRBool _retval;
    nsresult __result = inner.ContainsNewsgroup(cast(nsACString*)_name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void subscribeToNewsgroup (in AUTF8String name); */
  void SubscribeToNewsgroup(char[] name){
    scope auto _name = new ACString(name);
    nsresult __result = inner.SubscribeToNewsgroup(cast(nsACString*)_name);
    CheckException(__result);
  }

  /* [noscript] void addNewsgroupToList (in string name); */
  void AddNewsgroupToList(char*name){
    nsresult __result = inner.AddNewsgroupToList(name);
    CheckException(__result);
  }

  /* attribute boolean supportsExtensions; */
  PRBool SupportsExtensions(){
    PRBool value;
    nsresult __result = inner.GetSupportsExtensions(&value);
    CheckException(__result);
    return value;
  }
  void SupportsExtensions(PRBool aSupportsExtensions){
    nsresult __result = inner.SetSupportsExtensions(aSupportsExtensions);
    CheckException(__result);
  }

  /* void addExtension (in string extension); */
  void AddExtension(char*extension){
    nsresult __result = inner.AddExtension(extension);
    CheckException(__result);
  }

  /* boolean queryExtension (in string extension); */
  PRBool QueryExtension(char*extension){
    PRBool _retval;
    nsresult __result = inner.QueryExtension(extension, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* attribute boolean postingAllowed; */
  PRBool PostingAllowed(){
    PRBool value;
    nsresult __result = inner.GetPostingAllowed(&value);
    CheckException(__result);
    return value;
  }
  void PostingAllowed(PRBool aPostingAllowed){
    nsresult __result = inner.SetPostingAllowed(aPostingAllowed);
    CheckException(__result);
  }

  /* attribute boolean pushAuth; */
  PRBool PushAuth(){
    PRBool value;
    nsresult __result = inner.GetPushAuth(&value);
    CheckException(__result);
    return value;
  }
  void PushAuth(PRBool aPushAuth){
    nsresult __result = inner.SetPushAuth(aPushAuth);
    CheckException(__result);
  }

  /* attribute unsigned long lastUpdatedTime; */
  PRUint32 LastUpdatedTime(){
    PRUint32 value;
    nsresult __result = inner.GetLastUpdatedTime(&value);
    CheckException(__result);
    return value;
  }
  void LastUpdatedTime(PRUint32 aLastUpdatedTime){
    nsresult __result = inner.SetLastUpdatedTime(aLastUpdatedTime);
    CheckException(__result);
  }

  /* void addPropertyForGet (in string name, in string value); */
  void AddPropertyForGet(char*name, char*value){
    nsresult __result = inner.AddPropertyForGet(name, value);
    CheckException(__result);
  }

  /* string queryPropertyForGet (in string name); */
  char* QueryPropertyForGet(char*name){
    char* _retval;
    nsresult __result = inner.QueryPropertyForGet(name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void addSearchableGroup (in AString name); */
  void AddSearchableGroup(wchar[] name){
    scope auto _name = new AString(name);
    nsresult __result = inner.AddSearchableGroup(cast(nsAString*)_name);
    CheckException(__result);
  }

  /* boolean querySearchableGroup (in AString name); */
  PRBool QuerySearchableGroup(wchar[] name){
    scope auto _name = new AString(name);
    PRBool _retval;
    nsresult __result = inner.QuerySearchableGroup(cast(nsAString*)_name, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void addSearchableHeader (in string headerName); */
  void AddSearchableHeader(char*headerName){
    nsresult __result = inner.AddSearchableHeader(headerName);
    CheckException(__result);
  }

  /* boolean querySearchableHeader (in string headerName); */
  PRBool QuerySearchableHeader(char*headerName){
    PRBool _retval;
    nsresult __result = inner.QuerySearchableHeader(headerName, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* nsIMsgNewsFolder findGroup (in AUTF8String name); */
  nsIMsgNewsFolderD  FindGroup(char[] name){
    scope auto _name = new ACString(name);
    nsIMsgNewsFolder _retval;
    nsresult __result = inner.FindGroup(cast(nsACString*)_name, &_retval);
    CheckException(__result);
    return new nsIMsgNewsFolderD(_retval);
  }

  /* readonly attribute AUTF8String firstGroupNeedingExtraInfo; */
  char[] FirstGroupNeedingExtraInfo(){
    scope auto value = new ACString();
    nsresult __result = inner.GetFirstGroupNeedingExtraInfo(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* void setGroupNeedsExtraInfo (in AUTF8String name, in boolean needsExtraInfo); */
  void SetGroupNeedsExtraInfo(char[] name, PRBool needsExtraInfo){
    scope auto _name = new ACString(name);
    nsresult __result = inner.SetGroupNeedsExtraInfo(cast(nsACString*)_name, needsExtraInfo);
    CheckException(__result);
  }

  /* void groupNotFound (in nsIMsgWindow window, in AString group, in boolean opening); */
  void GroupNotFound(nsIMsgWindowD window, wchar[] group, PRBool opening){
    scope auto _group = new AString(group);
    nsresult __result = inner.GroupNotFound(window ? cast(nsIMsgWindow)window : null, cast(nsAString*)_group, opening);
    CheckException(__result);
  }

  /* void setPrettyNameForGroup (in AString name, in AString prettyName); */
  void SetPrettyNameForGroup(wchar[] name, wchar[] prettyName){
    scope auto _name = new AString(name);
    scope auto _prettyName = new AString(prettyName);
    nsresult __result = inner.SetPrettyNameForGroup(cast(nsAString*)_name, cast(nsAString*)_prettyName);
    CheckException(__result);
  }

  /* attribute boolean userAuthenticated; */
  PRBool UserAuthenticated(){
    PRBool value;
    nsresult __result = inner.GetUserAuthenticated(&value);
    CheckException(__result);
    return value;
  }
  void UserAuthenticated(PRBool aUserAuthenticated){
    nsresult __result = inner.SetUserAuthenticated(aUserAuthenticated);
    CheckException(__result);
  }

private:
  nsINntpIncomingServer inner;

}

