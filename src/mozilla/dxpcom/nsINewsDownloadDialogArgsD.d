/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINewsDownloadDialogArgs.idl
 */

module mozilla.dxpcom.nsINewsDownloadDialogArgsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsINewsDownloadDialogArgs;


public import mozilla.dxpcom.nsINewsDownloadDialogArgsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsINewsDownloadDialogArgs */
class nsINewsDownloadDialogArgsD : public nsISupportsD {

  static const nsIID IID = NS_INEWSDOWNLOADDIALOGARGS_IID;


  alias nsINewsDownloadDialogArgs InnerType;

  this(nsINewsDownloadDialogArgs intr){
    super(intr);
    this.inner = intr;
  }

  nsINewsDownloadDialogArgs opCast() {
    return inner;
  }

  void opAssign(nsINewsDownloadDialogArgs value) {
    inner = value;
  }

  /* attribute AString groupName; */
  wchar[] GroupName(){
    scope auto value = new AString();
    nsresult __result = inner.GetGroupName(cast(nsAString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void GroupName(wchar[] aGroupName){
    scope auto value = new AString(aGroupName);
    nsresult __result = inner.SetGroupName(cast(nsAString*)value);
    CheckException(__result);
  }

  /* attribute long articleCount; */
  PRInt32 ArticleCount(){
    PRInt32 value;
    nsresult __result = inner.GetArticleCount(&value);
    CheckException(__result);
    return value;
  }
  void ArticleCount(PRInt32 aArticleCount){
    nsresult __result = inner.SetArticleCount(aArticleCount);
    CheckException(__result);
  }

  /* attribute string serverKey; */
  char* ServerKey(){
    char* value;
    nsresult __result = inner.GetServerKey(&value);
    CheckException(__result);
    return value;
  }
  void ServerKey(char* aServerKey){
    nsresult __result = inner.SetServerKey(aServerKey);
    CheckException(__result);
  }

  /* attribute boolean hitOK; */
  PRBool HitOK(){
    PRBool value;
    nsresult __result = inner.GetHitOK(&value);
    CheckException(__result);
    return value;
  }
  void HitOK(PRBool aHitOK){
    nsresult __result = inner.SetHitOK(aHitOK);
    CheckException(__result);
  }

  /* attribute boolean downloadAll; */
  PRBool DownloadAll(){
    PRBool value;
    nsresult __result = inner.GetDownloadAll(&value);
    CheckException(__result);
    return value;
  }
  void DownloadAll(PRBool aDownloadAll){
    nsresult __result = inner.SetDownloadAll(aDownloadAll);
    CheckException(__result);
  }

private:
  nsINewsDownloadDialogArgs inner;

}

