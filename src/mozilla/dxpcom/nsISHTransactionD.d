/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISHTransaction.idl
 */

module mozilla.dxpcom.nsISHTransactionD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISHTransaction;


public import mozilla.dxpcom.nsISHTransactionD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsISHEntry;
public import mozilla.dxpcom.nsISHEntryD;
public import mozilla.xpcom.nsIEnumerator;
public import mozilla.dxpcom.nsIEnumeratorD;


/* starting wrapper class:    nsISHTransaction */
/**
 * The nsISHTransaction.
 */
class nsISHTransactionD : public nsISupportsD {

  static const nsIID IID = NS_ISHTRANSACTION_IID;


  alias nsISHTransaction InnerType;

  this(nsISHTransaction intr){
    super(intr);
    this.inner = intr;
  }

  nsISHTransaction opCast() {
    return inner;
  }

  void opAssign(nsISHTransaction value) {
    inner = value;
  }

  /**
     * The nsISHEntry for the current transaction
     */
  /* attribute nsISHEntry sHEntry; */
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

  /**
	 * The parent of this transaction
	 */
  /* attribute nsISHTransaction prev; */
  nsISHTransactionD  Prev(){
    nsISHTransaction value;
    nsresult __result = inner.GetPrev(&value);
    CheckException(__result);
    return new nsISHTransactionD(value);
  }
  void Prev(nsISHTransactionD  aPrev){
    nsISHTransaction value;
    nsresult __result = inner.SetPrev(value);
    CheckException(__result);
  }

  /**
	 * The legitimate child of this transaction 
	 */
  /* attribute nsISHTransaction next; */
  nsISHTransactionD  Next(){
    nsISHTransaction value;
    nsresult __result = inner.GetNext(&value);
    CheckException(__result);
    return new nsISHTransactionD(value);
  }
  void Next(nsISHTransactionD  aNext){
    nsISHTransaction value;
    nsresult __result = inner.SetNext(value);
    CheckException(__result);
  }

  /**
	 *	Specifies if this transaction should persist.  If not it will be replaced
	 * by new additions to the list.
	 */
  /* attribute boolean persist; */
  PRBool Persist(){
    PRBool value;
    nsresult __result = inner.GetPersist(&value);
    CheckException(__result);
    return value;
  }
  void Persist(PRBool aPersist){
    nsresult __result = inner.SetPersist(aPersist);
    CheckException(__result);
  }

  /**
	 * Create a transaction with parent and History Entry 
	 */
  /* void create (in nsISHEntry aSHEntry, in nsISHTransaction aPrev); */
  void Create(nsISHEntryD aSHEntry, nsISHTransactionD aPrev){
    nsresult __result = inner.Create(aSHEntry ? cast(nsISHEntry)aSHEntry : null, aPrev ? cast(nsISHTransaction)aPrev : null);
    CheckException(__result);
  }

private:
  nsISHTransaction inner;

}

