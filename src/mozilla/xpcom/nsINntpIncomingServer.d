/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINntpIncomingServer.idl
 */

module mozilla.xpcom.nsINntpIncomingServer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */

public import mozilla.xpcom.nsIMsgNewsFolder; /* forward declaration */

public import mozilla.xpcom.nsINNTPProtocol; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */


/* starting interface:    nsINntpIncomingServer */
const char[] NS_INNTPINCOMINGSERVER_IID_STR = "6200a8d1-21ac-4d28-926f-f9d7ea9d7bf7";

const nsIID NS_INNTPINCOMINGSERVER_IID= 
  {0x6200a8d1, 0x21ac, 0x4d28, 
    [ 0x92, 0x6f, 0xf9, 0xd7, 0xea, 0x9d, 0x7b, 0xf7 ]};

extern(Windows)
interface nsINntpIncomingServer : nsISupports {
  static const char[] IID_STR = NS_INNTPINCOMINGSERVER_IID_STR;
  static const nsIID IID = NS_INNTPINCOMINGSERVER_IID;

  /* attribute nsIFileSpec newsrcFilePath; */
  nsresult GetNewsrcFilePath(nsIFileSpec  *aNewsrcFilePath);
  nsresult SetNewsrcFilePath(nsIFileSpec  aNewsrcFilePath);

  /* attribute nsIFileSpec newsrcRootPath; */
  nsresult GetNewsrcRootPath(nsIFileSpec  *aNewsrcRootPath);
  nsresult SetNewsrcRootPath(nsIFileSpec  aNewsrcRootPath);

  /* attribute boolean notifyOn; */
  nsresult GetNotifyOn(PRBool *aNotifyOn);
  nsresult SetNotifyOn(PRBool aNotifyOn);

  /* attribute long maxArticles; */
  nsresult GetMaxArticles(PRInt32 *aMaxArticles);
  nsresult SetMaxArticles(PRInt32 aMaxArticles);

  /* attribute boolean markOldRead; */
  nsresult GetMarkOldRead(PRBool *aMarkOldRead);
  nsresult SetMarkOldRead(PRBool aMarkOldRead);

  /* attribute boolean abbreviate; */
  nsresult GetAbbreviate(PRBool *aAbbreviate);
  nsresult SetAbbreviate(PRBool aAbbreviate);

  /* attribute boolean singleSignon; */
  nsresult GetSingleSignon(PRBool *aSingleSignon);
  nsresult SetSingleSignon(PRBool aSingleSignon);

  /** the server charset and it may be needed to display newsgroup folder
     *  names correctly 
     **/
  /* attribute ACString charset; */
  nsresult GetCharset(nsACString * aCharset);
  nsresult SetCharset(nsACString * aCharset);

  /* void addNewsgroup (in AString name); */
  nsresult AddNewsgroup(nsAString * name);

  /* void removeNewsgroup (in AString name); */
  nsresult RemoveNewsgroup(nsAString * name);

  /* void writeNewsrcFile (); */
  nsresult WriteNewsrcFile();

  /* attribute boolean newsrcHasChanged; */
  nsresult GetNewsrcHasChanged(PRBool *aNewsrcHasChanged);
  nsresult SetNewsrcHasChanged(PRBool aNewsrcHasChanged);

  /* attribute long maximumConnectionsNumber; */
  nsresult GetMaximumConnectionsNumber(PRInt32 *aMaximumConnectionsNumber);
  nsresult SetMaximumConnectionsNumber(PRInt32 aMaximumConnectionsNumber);

  /* readonly attribute long numGroupsNeedingCounts; */
  nsresult GetNumGroupsNeedingCounts(PRInt32 *aNumGroupsNeedingCounts);

  /* readonly attribute nsISupports firstGroupNeedingCounts; */
  nsresult GetFirstGroupNeedingCounts(nsISupports  *aFirstGroupNeedingCounts);

  /* void displaySubscribedGroup (in nsIMsgNewsFolder msgFolder, in long firstMessage, in long lastMessage, in long totalMessages); */
  nsresult DisplaySubscribedGroup(nsIMsgNewsFolder msgFolder, PRInt32 firstMessage, PRInt32 lastMessage, PRInt32 totalMessages);

  /* void getNntpConnection (in nsIURI url, in nsIMsgWindow window, out nsINNTPProtocol aNntpConnection); */
  nsresult GetNntpConnection(nsIURI url, nsIMsgWindow window, nsINNTPProtocol *aNntpConnection);

  /* void removeConnection (in nsINNTPProtocol aNntpConnection); */
  nsresult RemoveConnection(nsINNTPProtocol aNntpConnection);

  /* boolean containsNewsgroup (in AUTF8String name); */
  nsresult ContainsNewsgroup(nsACString * name, PRBool *_retval);

  /* void subscribeToNewsgroup (in AUTF8String name); */
  nsresult SubscribeToNewsgroup(nsACString * name);

  /* [noscript] void addNewsgroupToList (in string name); */
  nsresult AddNewsgroupToList(char *name);

  /* attribute boolean supportsExtensions; */
  nsresult GetSupportsExtensions(PRBool *aSupportsExtensions);
  nsresult SetSupportsExtensions(PRBool aSupportsExtensions);

  /* void addExtension (in string extension); */
  nsresult AddExtension(char *extension);

  /* boolean queryExtension (in string extension); */
  nsresult QueryExtension(char *extension, PRBool *_retval);

  /* attribute boolean postingAllowed; */
  nsresult GetPostingAllowed(PRBool *aPostingAllowed);
  nsresult SetPostingAllowed(PRBool aPostingAllowed);

  /* attribute boolean pushAuth; */
  nsresult GetPushAuth(PRBool *aPushAuth);
  nsresult SetPushAuth(PRBool aPushAuth);

  /* attribute unsigned long lastUpdatedTime; */
  nsresult GetLastUpdatedTime(PRUint32 *aLastUpdatedTime);
  nsresult SetLastUpdatedTime(PRUint32 aLastUpdatedTime);

  /* void addPropertyForGet (in string name, in string value); */
  nsresult AddPropertyForGet(char *name, char *value);

  /* string queryPropertyForGet (in string name); */
  nsresult QueryPropertyForGet(char *name, char **_retval);

  /* void addSearchableGroup (in AString name); */
  nsresult AddSearchableGroup(nsAString * name);

  /* boolean querySearchableGroup (in AString name); */
  nsresult QuerySearchableGroup(nsAString * name, PRBool *_retval);

  /* void addSearchableHeader (in string headerName); */
  nsresult AddSearchableHeader(char *headerName);

  /* boolean querySearchableHeader (in string headerName); */
  nsresult QuerySearchableHeader(char *headerName, PRBool *_retval);

  /* nsIMsgNewsFolder findGroup (in AUTF8String name); */
  nsresult FindGroup(nsACString * name, nsIMsgNewsFolder *_retval);

  /* readonly attribute AUTF8String firstGroupNeedingExtraInfo; */
  nsresult GetFirstGroupNeedingExtraInfo(nsACString * aFirstGroupNeedingExtraInfo);

  /* void setGroupNeedsExtraInfo (in AUTF8String name, in boolean needsExtraInfo); */
  nsresult SetGroupNeedsExtraInfo(nsACString * name, PRBool needsExtraInfo);

  /* void groupNotFound (in nsIMsgWindow window, in AString group, in boolean opening); */
  nsresult GroupNotFound(nsIMsgWindow window, nsAString * group, PRBool opening);

  /* void setPrettyNameForGroup (in AString name, in AString prettyName); */
  nsresult SetPrettyNameForGroup(nsAString * name, nsAString * prettyName);

  /* attribute boolean userAuthenticated; */
  nsresult GetUserAuthenticated(PRBool *aUserAuthenticated);
  nsresult SetUserAuthenticated(PRBool aUserAuthenticated);

}

