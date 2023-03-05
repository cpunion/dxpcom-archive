/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINNTPNewsgroupPost.idl
 */

module mozilla.xpcom.nsINNTPNewsgroupPost;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFileSpec; /* forward declaration */


/* starting interface:    nsINNTPNewsgroupPost */
const char[] NS_INNTPNEWSGROUPPOST_IID_STR = "c4164a20-bc74-11d2-b7f2-00805f05ffa5";

const nsIID NS_INNTPNEWSGROUPPOST_IID= 
  {0xc4164a20, 0xbc74, 0x11d2, 
    [ 0xb7, 0xf2, 0x00, 0x80, 0x5f, 0x05, 0xff, 0xa5 ]};

extern(Windows)
interface nsINNTPNewsgroupPost : nsISupports {
  static const char[] IID_STR = NS_INNTPNEWSGROUPPOST_IID_STR;
  static const nsIID IID = NS_INNTPNEWSGROUPPOST_IID;

  /* attribute string relayVersion; */
  nsresult GetRelayVersion(char * *aRelayVersion);
  nsresult SetRelayVersion(char * aRelayVersion);

  /* attribute string postingVersion; */
  nsresult GetPostingVersion(char * *aPostingVersion);
  nsresult SetPostingVersion(char * aPostingVersion);

  /* attribute string from; */
  nsresult GetFrom(char * *aFrom);
  nsresult SetFrom(char * aFrom);

  /* attribute string date; */
  nsresult GetDate(char * *aDate);
  nsresult SetDate(char * aDate);

  /* void AddNewsgroup (in string newsgroupName); */
  nsresult AddNewsgroup(char *newsgroupName);

  /* readonly attribute string newsgroups; */
  nsresult GetNewsgroups(char * *aNewsgroups);

  /* attribute string subject; */
  nsresult GetSubject(char * *aSubject);
  nsresult SetSubject(char * aSubject);

  /* attribute string path; */
  nsresult GetPath(char * *aPath);
  nsresult SetPath(char * aPath);

  /* attribute string replyTo; */
  nsresult GetReplyTo(char * *aReplyTo);
  nsresult SetReplyTo(char * aReplyTo);

  /* attribute string sender; */
  nsresult GetSender(char * *aSender);
  nsresult SetSender(char * aSender);

  /* attribute string followupTo; */
  nsresult GetFollowupTo(char * *aFollowupTo);
  nsresult SetFollowupTo(char * aFollowupTo);

  /* attribute string dateRecieved; */
  nsresult GetDateRecieved(char * *aDateRecieved);
  nsresult SetDateRecieved(char * aDateRecieved);

  /* attribute string expires; */
  nsresult GetExpires(char * *aExpires);
  nsresult SetExpires(char * aExpires);

  /* readonly attribute string references; */
  nsresult GetReferences(char * *aReferences);

  /* attribute string control; */
  nsresult GetControl(char * *aControl);
  nsresult SetControl(char * aControl);

  /* attribute string distribution; */
  nsresult GetDistribution(char * *aDistribution);
  nsresult SetDistribution(char * aDistribution);

  /* attribute string organization; */
  nsresult GetOrganization(char * *aOrganization);
  nsresult SetOrganization(char * aOrganization);

  /* attribute string body; */
  nsresult GetBody(char * *aBody);
  nsresult SetBody(char * aBody);

  /* readonly attribute boolean isControl; */
  nsresult GetIsControl(PRBool *aIsControl);

  /* attribute nsIFileSpec postMessageFile; */
  nsresult GetPostMessageFile(nsIFileSpec  *aPostMessageFile);
  nsresult SetPostMessageFile(nsIFileSpec  aPostMessageFile);

}

