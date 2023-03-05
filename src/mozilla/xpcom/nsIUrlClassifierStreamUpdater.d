/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIUrlClassifierStreamUpdater.idl
 */

module mozilla.xpcom.nsIUrlClassifierStreamUpdater;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIUrlClassifierDBService;


/* starting interface:    nsIUrlClassifierStreamUpdater */
const char[] NS_IURLCLASSIFIERSTREAMUPDATER_IID_STR = "d9277fa4-7d51-4175-bd4e-546c080a83bf";

const nsIID NS_IURLCLASSIFIERSTREAMUPDATER_IID= 
  {0xd9277fa4, 0x7d51, 0x4175, 
    [ 0xbd, 0x4e, 0x54, 0x6c, 0x08, 0x0a, 0x83, 0xbf ]};

/**
 * This is a class to manage large table updates from the server.  Rather than
 * downloading the whole update and then updating the sqlite database, we
 * update tables as the data is streaming in.
 */
extern(Windows)
interface nsIUrlClassifierStreamUpdater : nsISupports {
  static const char[] IID_STR = NS_IURLCLASSIFIERSTREAMUPDATER_IID_STR;
  static const nsIID IID = NS_IURLCLASSIFIERSTREAMUPDATER_IID;

  /**
   * The Url to download from.  Should be plain ascii text.
   */
  /* attribute ACString updateUrl; */
  nsresult GetUpdateUrl(nsACString * aUpdateUrl);
  nsresult SetUpdateUrl(nsACString * aUpdateUrl);

  /**
   * Try to download updates from updateUrl.  Only one instance of this
   * runs at a time, so we return false if another instance is already
   * running.
   * @param aTableCallback Called once for each table that we successfully
   *     download with the table header as the parameter.
   * @param aErrorCallback Called if we get an http error or a connection
   *   refused.
   */
  /* boolean downloadUpdates (in nsIUrlClassifierCallback aTableCallback, in nsIUrlClassifierCallback aErrorCallback); */
  nsresult DownloadUpdates(nsIUrlClassifierCallback aTableCallback, nsIUrlClassifierCallback aErrorCallback, PRBool *_retval);

}

