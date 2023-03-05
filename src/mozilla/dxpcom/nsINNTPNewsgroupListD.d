/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsINNTPNewsgroupList.idl
 */

module mozilla.dxpcom.nsINNTPNewsgroupListD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsINNTPNewsgroupList;


public import mozilla.dxpcom.nsINNTPNewsgroupListD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIMsgNewsFolder;

public import mozilla.dxpcom.nsIMsgNewsFolderD;

public import mozilla.xpcom.nsINntpUrl;

public import mozilla.dxpcom.nsINntpUrlD;

public import mozilla.xpcom.nsIMsgWindow;

public import mozilla.dxpcom.nsIMsgWindowD;


/* starting wrapper class:    nsINNTPNewsgroupList */
class nsINNTPNewsgroupListD : public nsISupportsD {

  static const nsIID IID = NS_INNTPNEWSGROUPLIST_IID;


  alias nsINNTPNewsgroupList InnerType;

  this(nsINNTPNewsgroupList intr){
    super(intr);
    this.inner = intr;
  }

  nsINNTPNewsgroupList opCast() {
    return inner;
  }

  void opAssign(nsINNTPNewsgroupList value) {
    inner = value;
  }

  /* void initialize (in nsINntpUrl runningURL, in nsIMsgNewsFolder newsFolder); */
  void Initialize(nsINntpUrlD runningURL, nsIMsgNewsFolderD newsFolder){
    nsresult __result = inner.Initialize(runningURL ? cast(nsINntpUrl)runningURL : null, newsFolder ? cast(nsIMsgNewsFolder)newsFolder : null);
    CheckException(__result);
  }

  /* long getRangeOfArtsToDownload (in nsIMsgWindow aMsgWindow, in long first_message, in long last_message, in long maxextra, out long real_first_message, out long real_last_message); */
  PRInt32 GetRangeOfArtsToDownload(nsIMsgWindowD aMsgWindow, PRInt32 first_message, PRInt32 last_message, PRInt32 maxextra, out PRInt32 real_first_message, out PRInt32 real_last_message){
    PRInt32 _retval;
    nsresult __result = inner.GetRangeOfArtsToDownload(aMsgWindow ? cast(nsIMsgWindow)aMsgWindow : null, first_message, last_message, maxextra, &real_first_message, &real_last_message, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void addToKnownArticles (in long first_message, in long last_message); */
  void AddToKnownArticles(PRInt32 first_message, PRInt32 last_message){
    nsresult __result = inner.AddToKnownArticles(first_message, last_message);
    CheckException(__result);
  }

  /* void initXOVER (in long first_message, in long last_message); */
  void InitXOVER(PRInt32 first_message, PRInt32 last_message){
    nsresult __result = inner.InitXOVER(first_message, last_message);
    CheckException(__result);
  }

  /* void processXOVERLINE (in string line, out unsigned long status); */
  void ProcessXOVERLINE(char*line, out PRUint32 status){
    nsresult __result = inner.ProcessXOVERLINE(line, &status);
    CheckException(__result);
  }

  /* void processNonXOVER (in string line); */
  void ProcessNonXOVER(char*line){
    nsresult __result = inner.ProcessNonXOVER(line);
    CheckException(__result);
  }

  /* void resetXOVER (); */
  void ResetXOVER(){
    nsresult __result = inner.ResetXOVER();
    CheckException(__result);
  }

  /* void finishXOVERLINE (in long status, out long newstatus); */
  void FinishXOVERLINE(PRInt32 status, out PRInt32 newstatus){
    nsresult __result = inner.FinishXOVERLINE(status, &newstatus);
    CheckException(__result);
  }

  /* void clearXOVERState (); */
  void ClearXOVERState(){
    nsresult __result = inner.ClearXOVERState();
    CheckException(__result);
  }

  /* attribute boolean getOldMessages; */
  PRBool GetOldMessages(){
    PRBool value;
    nsresult __result = inner.GetGetOldMessages(&value);
    CheckException(__result);
    return value;
  }
  void GetOldMessages(PRBool aGetOldMessages){
    nsresult __result = inner.SetGetOldMessages(aGetOldMessages);
    CheckException(__result);
  }

private:
  nsINNTPNewsgroupList inner;

}

