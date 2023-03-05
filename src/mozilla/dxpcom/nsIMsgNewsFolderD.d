/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgNewsFolder.idl
 */

module mozilla.dxpcom.nsIMsgNewsFolderD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgNewsFolder;


public import mozilla.dxpcom.nsIMsgNewsFolderD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIMsgFolder;
public import mozilla.dxpcom.nsIMsgFolderD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;

public import mozilla.xpcom.nsINntpIncomingServer;

public import mozilla.dxpcom.nsINntpIncomingServerD;


/* starting wrapper class:    nsIMsgNewsFolder */
class nsIMsgNewsFolderD : public nsISupportsD {

  static const nsIID IID = NS_IMSGNEWSFOLDER_IID;


  alias nsIMsgNewsFolder InnerType;

  this(nsIMsgNewsFolder intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgNewsFolder opCast() {
    return inner;
  }

  void opAssign(nsIMsgNewsFolder value) {
    inner = value;
  }

  /* attribute string groupUsername; */
  char* GroupUsername(){
    char* value;
    nsresult __result = inner.GetGroupUsername(&value);
    CheckException(__result);
    return value;
  }
  void GroupUsername(char* aGroupUsername){
    nsresult __result = inner.SetGroupUsername(aGroupUsername);
    CheckException(__result);
  }

  /* attribute string groupPassword; */
  char* GroupPassword(){
    char* value;
    nsresult __result = inner.GetGroupPassword(&value);
    CheckException(__result);
    return value;
  }
  void GroupPassword(char* aGroupPassword){
    nsresult __result = inner.SetGroupPassword(aGroupPassword);
    CheckException(__result);
  }

  /* readonly attribute AString unicodeName; */
  wchar[] UnicodeName(){
    scope auto value = new AString();
    nsresult __result = inner.GetUnicodeName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /**|rawName| is an 8-bit string to represent the name of a newsgroup used by 
   * a news server. It's offered for the convenience of callers so that they 
   * don't have to convert |unicodeName| to the server-side name when 
   * communicating with a news server.  It's US-ASCII except for some 
   * 'stand-alone' Chinese news servers that use GB2312 for newsgroup names 
   * violating RFC 1036. For those servers, it's GB2312. However, it can be any
   * other single and multibyte encoding in principle. The encoding of this 
   * string is stored in |nsINntpIncomingServer| because that's a server-wide
   * property.
   **/
  /* [noscript] readonly attribute ACString rawName; */
  char[] RawName(){
    scope auto value = new ACString();
    nsresult __result = inner.GetRawName(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

  /* readonly attribute nsINntpIncomingServer nntpServer; */
  nsINntpIncomingServerD  NntpServer(){
    nsINntpIncomingServer value;
    nsresult __result = inner.GetNntpServer(&value);
    CheckException(__result);
    return new nsINntpIncomingServerD(value);
  }

  /* attribute boolean saveArticleOffline; */
  PRBool SaveArticleOffline(){
    PRBool value;
    nsresult __result = inner.GetSaveArticleOffline(&value);
    CheckException(__result);
    return value;
  }
  void SaveArticleOffline(PRBool aSaveArticleOffline){
    nsresult __result = inner.SetSaveArticleOffline(aSaveArticleOffline);
    CheckException(__result);
  }

  /* string getGroupPasswordWithUI (in wstring aPromptString, in wstring aPromptTitle, in nsIMsgWindow aMsgWindow); */
  char* GetGroupPasswordWithUI(PRUnichar*aPromptString, PRUnichar*aPromptTitle, nsIMsgWindowD aMsgWindow){
    char* _retval;
    nsresult __result = inner.GetGroupPasswordWithUI(aPromptString, aPromptTitle, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* string getGroupUsernameWithUI (in wstring aPromptString, in wstring aPromptTitle, in nsIMsgWindow aMsgWindow); */
  char* GetGroupUsernameWithUI(PRUnichar*aPromptString, PRUnichar*aPromptTitle, nsIMsgWindowD aMsgWindow){
    char* _retval;
    nsresult __result = inner.GetGroupUsernameWithUI(aPromptString, aPromptTitle, aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void forgetGroupUsername (); */
  void ForgetGroupUsername(){
    nsresult __result = inner.ForgetGroupUsername();
    CheckException(__result);
  }

  /* void forgetGroupPassword (); */
  void ForgetGroupPassword(){
    nsresult __result = inner.ForgetGroupPassword();
    CheckException(__result);
  }

  /* nsIMsgFolder addNewsgroup (in AUTF8String newsgroupName, in string setStr); */
  nsIMsgFolderD  AddNewsgroup(char[] newsgroupName, char*setStr){
    scope auto _newsgroupName = new ACString(newsgroupName);
    nsIMsgFolder _retval;
    nsresult __result = inner.AddNewsgroup(cast(nsACString*)_newsgroupName, setStr, &_retval);
    CheckException(__result);
    return new nsIMsgFolderD(_retval);
  }

  /* void setReadSetFromStr (in string setStr); */
  void SetReadSetFromStr(char*setStr){
    nsresult __result = inner.SetReadSetFromStr(setStr);
    CheckException(__result);
  }

  /* readonly attribute string newsrcLine; */
  char* NewsrcLine(){
    char* value;
    nsresult __result = inner.GetNewsrcLine(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string optionLines; */
  char* OptionLines(){
    char* value;
    nsresult __result = inner.GetOptionLines(&value);
    CheckException(__result);
    return value;
  }

  /* readonly attribute string unsubscribedNewsgroupLines; */
  char* UnsubscribedNewsgroupLines(){
    char* value;
    nsresult __result = inner.GetUnsubscribedNewsgroupLines(&value);
    CheckException(__result);
    return value;
  }

  /* void SetNewsrcHasChanged (in boolean newsrcHasChanged); */
  void SetNewsrcHasChanged(PRBool newsrcHasChanged){
    nsresult __result = inner.SetNewsrcHasChanged(newsrcHasChanged);
    CheckException(__result);
  }

  /* void updateSummaryFromNNTPInfo (in long oldest, in long youngest, in long total); */
  void UpdateSummaryFromNNTPInfo(PRInt32 oldest, PRInt32 youngest, PRInt32 total){
    nsresult __result = inner.UpdateSummaryFromNNTPInfo(oldest, youngest, total);
    CheckException(__result);
  }

  /* void removeMessage (in nsMsgKey key); */
  void RemoveMessage(nsMsgKey key){
    nsresult __result = inner.RemoveMessage(key);
    CheckException(__result);
  }

  /* void cancelComplete (); */
  void CancelComplete(){
    nsresult __result = inner.CancelComplete();
    CheckException(__result);
  }

  /* void cancelFailed (); */
  void CancelFailed(){
    nsresult __result = inner.CancelFailed();
    CheckException(__result);
  }

  /* string getMessageIdForKey (in nsMsgKey key); */
  char* GetMessageIdForKey(nsMsgKey key){
    char* _retval;
    nsresult __result = inner.GetMessageIdForKey(key, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void getNextNMessages (in nsIMsgWindow aMsgWindow); */
  void GetNextNMessages(nsIMsgWindowD aMsgWindow){
    nsresult __result = inner.GetNextNMessages(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null);
    CheckException(__result);
  }

  /* void notifyDownloadedLine (in string line, in nsMsgKey key); */
  void NotifyDownloadedLine(char*line, nsMsgKey key){
    nsresult __result = inner.NotifyDownloadedLine(line, key);
    CheckException(__result);
  }

private:
  nsIMsgNewsFolder inner;

}

