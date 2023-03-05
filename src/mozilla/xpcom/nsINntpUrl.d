/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINntpUrl.idl
 */

module mozilla.xpcom.nsINntpUrl;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.MailNewsTypes2;

public import mozilla.xpcom.nsIMsgHdr;

public import mozilla.xpcom.nsINNTPNewsgroupPost; /* forward declaration */

alias PRInt32 nsNewsAction;


/* starting interface:    nsINntpUrl */
const char[] NS_INNTPURL_IID_STR = "cab8b3df-9f66-4b36-838e-bb59950a2349";

const nsIID NS_INNTPURL_IID= 
  {0xcab8b3df, 0x9f66, 0x4b36, 
    [ 0x83, 0x8e, 0xbb, 0x59, 0x95, 0x0a, 0x23, 0x49 ]};

extern(Windows)
interface nsINntpUrl : nsISupports {
  static const char[] IID_STR = NS_INNTPURL_IID_STR;
  static const nsIID IID = NS_INNTPURL_IID;

  /* attribute nsINNTPNewsgroupPost messageToPost; */
  nsresult GetMessageToPost(nsINNTPNewsgroupPost  *aMessageToPost);
  nsresult SetMessageToPost(nsINNTPNewsgroupPost  aMessageToPost);

  /* attribute nsNewsAction newsAction; */
  nsresult GetNewsAction(nsNewsAction *aNewsAction);
  nsresult SetNewsAction(nsNewsAction aNewsAction);

  /* attribute boolean getOldMessages; */
  nsresult GetGetOldMessages(PRBool *aGetOldMessages);
  nsresult SetGetOldMessages(PRBool aGetOldMessages);

  enum { ActionUnknown = 0 };

  enum { ActionGetNewNews = 1 };

  enum { ActionFetchArticle = 2 };

  enum { ActionSaveMessageToDisk = 3 };

  enum { ActionCancelArticle = 4 };

  enum { ActionPostArticle = 5 };

  enum { ActionSearch = 6 };

  enum { ActionUpdateCounts = 7 };

  enum { ActionListGroups = 8 };

  enum { ActionFetchPart = 9 };

  enum { ActionAutoSubscribe = 10 };

  enum { ActionListIds = 11 };

}

