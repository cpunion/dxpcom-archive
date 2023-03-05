/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDocShellHistory.idl
 */

module mozilla.dxpcom.nsIDocShellHistoryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDocShellHistory;


public import mozilla.dxpcom.nsIDocShellHistoryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsISHEntry;

public import mozilla.dxpcom.nsISHEntryD;


/* starting wrapper class:    nsIDocShellHistory */
class nsIDocShellHistoryD : public nsISupportsD {

  static const nsIID IID = NS_IDOCSHELLHISTORY_IID;


  alias nsIDocShellHistory InnerType;

  this(nsIDocShellHistory intr){
    super(intr);
    this.inner = intr;
  }

  nsIDocShellHistory opCast() {
    return inner;
  }

  void opAssign(nsIDocShellHistory value) {
    inner = value;
  }

  /**
   * Get the SHEntry associated with a child docshell
   */
  /* nsISHEntry getChildSHEntry (in long aChildOffset); */
  nsISHEntryD  GetChildSHEntry(PRInt32 aChildOffset){
    nsISHEntry _retval;
    nsresult __result = inner.GetChildSHEntry(aChildOffset, &_retval);
    CheckException(__result);
    return new nsISHEntryD(_retval);
  }

  /**
   * Add a Child SHEntry for a frameset page
   */
  /* void addChildSHEntry (in nsISHEntry aCloneReference, in nsISHEntry aHistoryEntry, in long aChildOffset); */
  void AddChildSHEntry(nsISHEntryD aCloneReference, nsISHEntryD aHistoryEntry, PRInt32 aChildOffset){
    nsresult __result = inner.AddChildSHEntry(aCloneReference ? cast(nsISHEntry)aCloneReference : null, aHistoryEntry ? cast(nsISHEntry)aHistoryEntry : null, aChildOffset);
    CheckException(__result);
  }

  /* attribute boolean useGlobalHistory; */
  PRBool UseGlobalHistory(){
    PRBool value;
    nsresult __result = inner.GetUseGlobalHistory(&value);
    CheckException(__result);
    return value;
  }
  void UseGlobalHistory(PRBool aUseGlobalHistory){
    nsresult __result = inner.SetUseGlobalHistory(aUseGlobalHistory);
    CheckException(__result);
  }

private:
  nsIDocShellHistory inner;

}

