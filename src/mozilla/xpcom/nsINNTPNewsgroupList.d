/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINNTPNewsgroupList.idl
 */

module mozilla.xpcom.nsINNTPNewsgroupList;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIMsgNewsFolder; /* forward declaration */

public import mozilla.xpcom.nsINntpUrl; /* forward declaration */

public import mozilla.xpcom.nsIMsgWindow; /* forward declaration */


/* starting interface:    nsINNTPNewsgroupList */
const char[] NS_INNTPNEWSGROUPLIST_IID_STR = "e628ed19-9452-11d2-b7ea-00805f05ffa5";

const nsIID NS_INNTPNEWSGROUPLIST_IID= 
  {0xe628ed19, 0x9452, 0x11d2, 
    [ 0xb7, 0xea, 0x00, 0x80, 0x5f, 0x05, 0xff, 0xa5 ]};

extern(Windows)
interface nsINNTPNewsgroupList : nsISupports {
  static const char[] IID_STR = NS_INNTPNEWSGROUPLIST_IID_STR;
  static const nsIID IID = NS_INNTPNEWSGROUPLIST_IID;

  /* void initialize (in nsINntpUrl runningURL, in nsIMsgNewsFolder newsFolder); */
  nsresult Initialize(nsINntpUrl runningURL, nsIMsgNewsFolder newsFolder);

  /* long getRangeOfArtsToDownload (in nsIMsgWindow aMsgWindow, in long first_message, in long last_message, in long maxextra, out long real_first_message, out long real_last_message); */
  nsresult GetRangeOfArtsToDownload(nsIMsgWindow aMsgWindow, PRInt32 first_message, PRInt32 last_message, PRInt32 maxextra, PRInt32 *real_first_message, PRInt32 *real_last_message, PRInt32 *_retval);

  /* void addToKnownArticles (in long first_message, in long last_message); */
  nsresult AddToKnownArticles(PRInt32 first_message, PRInt32 last_message);

  /* void initXOVER (in long first_message, in long last_message); */
  nsresult InitXOVER(PRInt32 first_message, PRInt32 last_message);

  /* void processXOVERLINE (in string line, out unsigned long status); */
  nsresult ProcessXOVERLINE(char *line, PRUint32 *status);

  /* void processNonXOVER (in string line); */
  nsresult ProcessNonXOVER(char *line);

  /* void resetXOVER (); */
  nsresult ResetXOVER();

  /* void finishXOVERLINE (in long status, out long newstatus); */
  nsresult FinishXOVERLINE(PRInt32 status, PRInt32 *newstatus);

  /* void clearXOVERState (); */
  nsresult ClearXOVERState();

  /* attribute boolean getOldMessages; */
  nsresult GetGetOldMessages(PRBool *aGetOldMessages);
  nsresult SetGetOldMessages(PRBool aGetOldMessages);

}

