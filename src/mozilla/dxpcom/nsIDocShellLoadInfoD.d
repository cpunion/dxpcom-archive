/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocShellLoadInfo.idl
 */

module mozilla.dxpcom.nsIDocShellLoadInfoD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDocShellLoadInfo;


public import mozilla.dxpcom.nsIDocShellLoadInfoD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIInputStream;

public import mozilla.dxpcom.nsIInputStreamD;

public import mozilla.xpcom.nsISHEntry;

public import mozilla.dxpcom.nsISHEntryD;


/* starting wrapper class:    nsIDocShellLoadInfo */
class nsIDocShellLoadInfoD : public nsISupportsD {

  static const nsIID IID = NS_IDOCSHELLLOADINFO_IID;


  alias nsIDocShellLoadInfo InnerType;

  this(nsIDocShellLoadInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIDocShellLoadInfo opCast() {
    return inner;
  }

  void opAssign(nsIDocShellLoadInfo value) {
    inner = value;
  }

  /** This is the referrer for the load. */
  /* attribute nsIURI referrer; */
  nsIURID  Referrer(){
    nsIURI value;
    nsresult __result = inner.GetReferrer(&value);
    CheckException(__result);
    return new nsIURID(value);
  }
  void Referrer(nsIURID  aReferrer){
    nsIURI value;
    nsresult __result = inner.SetReferrer(value);
    CheckException(__result);
  }

  /** The owner of the load, that is, the entity responsible for 
     *  causing the load to occur. This should be a nsIPrincipal typically.
     */
  /* attribute nsISupports owner; */
  nsISupportsD  Owner(){
    nsISupports value;
    nsresult __result = inner.GetOwner(&value);
    CheckException(__result);
    return new nsISupportsD(value);
  }
  void Owner(nsISupportsD  aOwner){
    nsISupports value;
    nsresult __result = inner.SetOwner(value);
    CheckException(__result);
  }

  /** If this attribute is true and no owner is specified, copy
     *  the owner from the referring document.
     */
  /* attribute boolean inheritOwner; */
  PRBool InheritOwner(){
    PRBool value;
    nsresult __result = inner.GetInheritOwner(&value);
    CheckException(__result);
    return value;
  }
  void InheritOwner(PRBool aInheritOwner){
    nsresult __result = inner.SetInheritOwner(aInheritOwner);
    CheckException(__result);
  }

  enum { loadNormal = 0 }

  enum { loadNormalReplace = 1 }

  enum { loadHistory = 2 }

  enum { loadReloadNormal = 3 }

  enum { loadReloadBypassCache = 4 }

  enum { loadReloadBypassProxy = 5 }

  enum { loadReloadBypassProxyAndCache = 6 }

  enum { loadLink = 7 }

  enum { loadRefresh = 8 }

  enum { loadReloadCharsetChange = 9 }

  enum { loadBypassHistory = 10 }

  enum { loadStopContent = 11 }

  enum { loadStopContentAndReplace = 12 }

  enum { loadNormalExternal = 13 }

  /** Contains a load type as specified by the load* constants */
  /* attribute nsDocShellInfoLoadType loadType; */
  nsDocShellInfoLoadType LoadType(){
    nsDocShellInfoLoadType value;
    nsresult __result = inner.GetLoadType(&value);
    CheckException(__result);
    return value;
  }
  void LoadType(nsDocShellInfoLoadType aLoadType){
    nsDocShellInfoLoadType value;
    nsresult __result = inner.SetLoadType(value);
    CheckException(__result);
  }

  /** SHEntry for this page */
  /* attribute nsISHEntry SHEntry; */
  nsISHEntryD  SHEntry(){
    nsISHEntry value;
    nsresult __result = inner.GetSHEntry(&value);
    CheckException(__result);
    return new nsISHEntryD(value);
  }
  void SHEntry(nsISHEntryD  aSHEntry){
    nsISHEntry value;
    nsresult __result = inner.SetSHEntry(value);
    CheckException(__result);
  }

  /** Target for load, like _content, _blank etc. */
  /* attribute wstring target; */
  PRUnichar* Target(){
    PRUnichar* value;
    nsresult __result = inner.GetTarget(&value);
    CheckException(__result);
    return value;
  }
  void Target(PRUnichar* aTarget){
    nsresult __result = inner.SetTarget(aTarget);
    CheckException(__result);
  }

  /** Post data */
  /* attribute nsIInputStream postDataStream; */
  nsIInputStreamD  PostDataStream(){
    nsIInputStream value;
    nsresult __result = inner.GetPostDataStream(&value);
    CheckException(__result);
    return new nsIInputStreamD(value);
  }
  void PostDataStream(nsIInputStreamD  aPostDataStream){
    nsIInputStream value;
    nsresult __result = inner.SetPostDataStream(value);
    CheckException(__result);
  }

  /** Additional headers */
  /* attribute nsIInputStream headersStream; */
  nsIInputStreamD  HeadersStream(){
    nsIInputStream value;
    nsresult __result = inner.GetHeadersStream(&value);
    CheckException(__result);
    return new nsIInputStreamD(value);
  }
  void HeadersStream(nsIInputStreamD  aHeadersStream){
    nsIInputStream value;
    nsresult __result = inner.SetHeadersStream(value);
    CheckException(__result);
  }

  /** True if the referrer should be sent, false if it shouldn't be
     *  sent, even if it's available. This attribute defaults to true.
     */
  /* attribute boolean sendReferrer; */
  PRBool SendReferrer(){
    PRBool value;
    nsresult __result = inner.GetSendReferrer(&value);
    CheckException(__result);
    return value;
  }
  void SendReferrer(PRBool aSendReferrer){
    nsresult __result = inner.SetSendReferrer(aSendReferrer);
    CheckException(__result);
  }

private:
  nsIDocShellLoadInfo inner;

}

