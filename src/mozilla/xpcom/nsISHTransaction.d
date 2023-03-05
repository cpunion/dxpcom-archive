/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISHTransaction.idl
 */

module mozilla.xpcom.nsISHTransaction;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsISHEntry;
public import mozilla.xpcom.nsIEnumerator;


/* starting interface:    nsISHTransaction */
const char[] NS_ISHTRANSACTION_IID_STR = "2edf705f-d252-4971-9f09-71dd0f760dc6";

const nsIID NS_ISHTRANSACTION_IID= 
  {0x2edf705f, 0xd252, 0x4971, 
    [ 0x9f, 0x09, 0x71, 0xdd, 0x0f, 0x76, 0x0d, 0xc6 ]};

/**
 * The nsISHTransaction.
 */
extern(Windows)
interface nsISHTransaction : nsISupports {
  static const char[] IID_STR = NS_ISHTRANSACTION_IID_STR;
  static const nsIID IID = NS_ISHTRANSACTION_IID;

  /**
     * The nsISHEntry for the current transaction
     */
  /* attribute nsISHEntry sHEntry; */
  nsresult GetSHEntry(nsISHEntry  *aSHEntry);
  nsresult SetSHEntry(nsISHEntry  aSHEntry);

  /**
	 * The parent of this transaction
	 */
  /* attribute nsISHTransaction prev; */
  nsresult GetPrev(nsISHTransaction  *aPrev);
  nsresult SetPrev(nsISHTransaction  aPrev);

  /**
	 * The legitimate child of this transaction 
	 */
  /* attribute nsISHTransaction next; */
  nsresult GetNext(nsISHTransaction  *aNext);
  nsresult SetNext(nsISHTransaction  aNext);

  /**
	 *	Specifies if this transaction should persist.  If not it will be replaced
	 * by new additions to the list.
	 */
  /* attribute boolean persist; */
  nsresult GetPersist(PRBool *aPersist);
  nsresult SetPersist(PRBool aPersist);

  /**
	 * Create a transaction with parent and History Entry 
	 */
  /* void create (in nsISHEntry aSHEntry, in nsISHTransaction aPrev); */
  nsresult Create(nsISHEntry aSHEntry, nsISHTransaction aPrev);

}

