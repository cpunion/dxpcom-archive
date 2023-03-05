/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINewsDownloadDialogArgs.idl
 */

module mozilla.xpcom.nsINewsDownloadDialogArgs;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsINewsDownloadDialogArgs */
const char[] NS_INEWSDOWNLOADDIALOGARGS_IID_STR = "3634327c-392b-4686-adf5-576e6cef9196";

const nsIID NS_INEWSDOWNLOADDIALOGARGS_IID= 
  {0x3634327c, 0x392b, 0x4686, 
    [ 0xad, 0xf5, 0x57, 0x6e, 0x6c, 0xef, 0x91, 0x96 ]};

extern(Windows)
interface nsINewsDownloadDialogArgs : nsISupports {
  static const char[] IID_STR = NS_INEWSDOWNLOADDIALOGARGS_IID_STR;
  static const nsIID IID = NS_INEWSDOWNLOADDIALOGARGS_IID;

  /* attribute AString groupName; */
  nsresult GetGroupName(nsAString * aGroupName);
  nsresult SetGroupName(nsAString * aGroupName);

  /* attribute long articleCount; */
  nsresult GetArticleCount(PRInt32 *aArticleCount);
  nsresult SetArticleCount(PRInt32 aArticleCount);

  /* attribute string serverKey; */
  nsresult GetServerKey(char * *aServerKey);
  nsresult SetServerKey(char * aServerKey);

  /* attribute boolean hitOK; */
  nsresult GetHitOK(PRBool *aHitOK);
  nsresult SetHitOK(PRBool aHitOK);

  /* attribute boolean downloadAll; */
  nsresult GetDownloadAll(PRBool *aDownloadAll);
  nsresult SetDownloadAll(PRBool aDownloadAll);

}

