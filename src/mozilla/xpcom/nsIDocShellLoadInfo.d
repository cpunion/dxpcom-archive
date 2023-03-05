/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocShellLoadInfo.idl
 */

module mozilla.xpcom.nsIDocShellLoadInfo;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIInputStream; /* forward declaration */

public import mozilla.xpcom.nsISHEntry; /* forward declaration */

alias PRInt32 nsDocShellInfoLoadType;


/* starting interface:    nsIDocShellLoadInfo */
const char[] NS_IDOCSHELLLOADINFO_IID_STR = "4f813a88-7aca-4607-9896-d97270cdf15e";

const nsIID NS_IDOCSHELLLOADINFO_IID= 
  {0x4f813a88, 0x7aca, 0x4607, 
    [ 0x98, 0x96, 0xd9, 0x72, 0x70, 0xcd, 0xf1, 0x5e ]};

extern(Windows)
interface nsIDocShellLoadInfo : nsISupports {
  static const char[] IID_STR = NS_IDOCSHELLLOADINFO_IID_STR;
  static const nsIID IID = NS_IDOCSHELLLOADINFO_IID;

  /** This is the referrer for the load. */
  /* attribute nsIURI referrer; */
  nsresult GetReferrer(nsIURI  *aReferrer);
  nsresult SetReferrer(nsIURI  aReferrer);

  /** The owner of the load, that is, the entity responsible for 
     *  causing the load to occur. This should be a nsIPrincipal typically.
     */
  /* attribute nsISupports owner; */
  nsresult GetOwner(nsISupports  *aOwner);
  nsresult SetOwner(nsISupports  aOwner);

  /** If this attribute is true and no owner is specified, copy
     *  the owner from the referring document.
     */
  /* attribute boolean inheritOwner; */
  nsresult GetInheritOwner(PRBool *aInheritOwner);
  nsresult SetInheritOwner(PRBool aInheritOwner);

  enum { loadNormal = 0 };

  enum { loadNormalReplace = 1 };

  enum { loadHistory = 2 };

  enum { loadReloadNormal = 3 };

  enum { loadReloadBypassCache = 4 };

  enum { loadReloadBypassProxy = 5 };

  enum { loadReloadBypassProxyAndCache = 6 };

  enum { loadLink = 7 };

  enum { loadRefresh = 8 };

  enum { loadReloadCharsetChange = 9 };

  enum { loadBypassHistory = 10 };

  enum { loadStopContent = 11 };

  enum { loadStopContentAndReplace = 12 };

  enum { loadNormalExternal = 13 };

  /** Contains a load type as specified by the load* constants */
  /* attribute nsDocShellInfoLoadType loadType; */
  nsresult GetLoadType(nsDocShellInfoLoadType *aLoadType);
  nsresult SetLoadType(nsDocShellInfoLoadType aLoadType);

  /** SHEntry for this page */
  /* attribute nsISHEntry SHEntry; */
  nsresult GetSHEntry(nsISHEntry  *aSHEntry);
  nsresult SetSHEntry(nsISHEntry  aSHEntry);

  /** Target for load, like _content, _blank etc. */
  /* attribute wstring target; */
  nsresult GetTarget(PRUnichar * *aTarget);
  nsresult SetTarget(PRUnichar * aTarget);

  /** Post data */
  /* attribute nsIInputStream postDataStream; */
  nsresult GetPostDataStream(nsIInputStream  *aPostDataStream);
  nsresult SetPostDataStream(nsIInputStream  aPostDataStream);

  /** Additional headers */
  /* attribute nsIInputStream headersStream; */
  nsresult GetHeadersStream(nsIInputStream  *aHeadersStream);
  nsresult SetHeadersStream(nsIInputStream  aHeadersStream);

  /** True if the referrer should be sent, false if it shouldn't be
     *  sent, even if it's available. This attribute defaults to true.
     */
  /* attribute boolean sendReferrer; */
  nsresult GetSendReferrer(PRBool *aSendReferrer);
  nsresult SetSendReferrer(PRBool aSendReferrer);

}

