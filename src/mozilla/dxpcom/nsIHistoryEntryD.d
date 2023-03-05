/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIHistoryEntry.idl
 */

module mozilla.dxpcom.nsIHistoryEntryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIHistoryEntry;


public import mozilla.dxpcom.nsIHistoryEntryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;


/* starting wrapper class:    nsIHistoryEntry */
class nsIHistoryEntryD : public nsISupportsD {

  static const nsIID IID = NS_IHISTORYENTRY_IID;


  alias nsIHistoryEntry InnerType;

  this(nsIHistoryEntry intr){
    super(intr);
    this.inner = intr;
  }

  nsIHistoryEntry opCast() {
    return inner;
  }

  void opAssign(nsIHistoryEntry value) {
    inner = value;
  }

  /** 
     * A readonly property that returns the URI
     * of the current entry. The object returned is
     * of type nsIURI
     */
  /* readonly attribute nsIURI URI; */
  nsIURID  URI(){
    nsIURI value;
    nsresult __result = inner.GetURI(&value);
    CheckException(__result);
    return new nsIURID(value);
  }

  /** 
     * A readonly property that returns the title
     * of the current entry.  The object returned
     * is a encoded string
     */
  /* readonly attribute wstring title; */
  PRUnichar* Title(){
    PRUnichar* value;
    nsresult __result = inner.GetTitle(&value);
    CheckException(__result);
    return value;
  }

  /** 
     * A readonly property that returns a boolean
     * flag which indicates if the entry was created as a 
     * result of a subframe navigation. This flag will be
     * 'false' when a frameset page is visited for
     * the first time. This flag will be 'true' for all
     * history entries created as a result of a subframe
     * navigation.
     */
  /* readonly attribute boolean isSubFrame; */
  PRBool IsSubFrame(){
    PRBool value;
    nsresult __result = inner.GetIsSubFrame(&value);
    CheckException(__result);
    return value;
  }

private:
  nsIHistoryEntry inner;

}

