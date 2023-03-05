/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgNewsFolder.idl
 */

module mozilla.xpcom.nsIMsgNewsFolder;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIMsgFolder;

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */

public import mozilla.xpcom.nsINntpIncomingServer; /* forward declaration */


/* starting interface:    nsIMsgNewsFolder */
const char[] NS_IMSGNEWSFOLDER_IID_STR = "02699533-7ba8-4e78-94dc-a20374fb2711";

const nsIID NS_IMSGNEWSFOLDER_IID= 
  {0x02699533, 0x7ba8, 0x4e78, 
    [ 0x94, 0xdc, 0xa2, 0x03, 0x74, 0xfb, 0x27, 0x11 ]};

extern(Windows)
interface nsIMsgNewsFolder : nsISupports {
  static const char[] IID_STR = NS_IMSGNEWSFOLDER_IID_STR;
  static const nsIID IID = NS_IMSGNEWSFOLDER_IID;

  /* attribute string groupUsername; */
  nsresult GetGroupUsername(char * *aGroupUsername);
  nsresult SetGroupUsername(char * aGroupUsername);

  /* attribute string groupPassword; */
  nsresult GetGroupPassword(char * *aGroupPassword);
  nsresult SetGroupPassword(char * aGroupPassword);

  /* readonly attribute AString unicodeName; */
  nsresult GetUnicodeName(nsAString * aUnicodeName);

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
  nsresult GetRawName(nsACString * aRawName);

  /* readonly attribute nsINntpIncomingServer nntpServer; */
  nsresult GetNntpServer(nsINntpIncomingServer  *aNntpServer);

  /* attribute boolean saveArticleOffline; */
  nsresult GetSaveArticleOffline(PRBool *aSaveArticleOffline);
  nsresult SetSaveArticleOffline(PRBool aSaveArticleOffline);

  /* string getGroupPasswordWithUI (in wstring aPromptString, in wstring aPromptTitle, in nsIMsgWindow aMsgWindow); */
  nsresult GetGroupPasswordWithUI(PRUnichar *aPromptString, PRUnichar *aPromptTitle, nsIMsgWindow aMsgWindow, char **_retval);

  /* string getGroupUsernameWithUI (in wstring aPromptString, in wstring aPromptTitle, in nsIMsgWindow aMsgWindow); */
  nsresult GetGroupUsernameWithUI(PRUnichar *aPromptString, PRUnichar *aPromptTitle, nsIMsgWindow aMsgWindow, char **_retval);

  /* void forgetGroupUsername (); */
  nsresult ForgetGroupUsername();

  /* void forgetGroupPassword (); */
  nsresult ForgetGroupPassword();

  /* nsIMsgFolder addNewsgroup (in AUTF8String newsgroupName, in string setStr); */
  nsresult AddNewsgroup(nsACString * newsgroupName, char *setStr, nsIMsgFolder *_retval);

  /* void setReadSetFromStr (in string setStr); */
  nsresult SetReadSetFromStr(char *setStr);

  /* readonly attribute string newsrcLine; */
  nsresult GetNewsrcLine(char * *aNewsrcLine);

  /* readonly attribute string optionLines; */
  nsresult GetOptionLines(char * *aOptionLines);

  /* readonly attribute string unsubscribedNewsgroupLines; */
  nsresult GetUnsubscribedNewsgroupLines(char * *aUnsubscribedNewsgroupLines);

  /* void SetNewsrcHasChanged (in boolean newsrcHasChanged); */
  nsresult SetNewsrcHasChanged(PRBool newsrcHasChanged);

  /* void updateSummaryFromNNTPInfo (in long oldest, in long youngest, in long total); */
  nsresult UpdateSummaryFromNNTPInfo(PRInt32 oldest, PRInt32 youngest, PRInt32 total);

  /* void removeMessage (in nsMsgKey key); */
  nsresult RemoveMessage(nsMsgKey key);

  /* void cancelComplete (); */
  nsresult CancelComplete();

  /* void cancelFailed (); */
  nsresult CancelFailed();

  /* string getMessageIdForKey (in nsMsgKey key); */
  nsresult GetMessageIdForKey(nsMsgKey key, char **_retval);

  /* void getNextNMessages (in nsIMsgWindow aMsgWindow); */
  nsresult GetNextNMessages(nsIMsgWindow aMsgWindow);

  /* void notifyDownloadedLine (in string line, in nsMsgKey key); */
  nsresult NotifyDownloadedLine(char *line, nsMsgKey key);

}

