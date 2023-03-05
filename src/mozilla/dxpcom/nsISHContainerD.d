/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISHContainer.idl
 */

module mozilla.dxpcom.nsISHContainerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISHContainer;


public import mozilla.dxpcom.nsISHContainerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIEnumerator;
public import mozilla.dxpcom.nsIEnumeratorD;
public import mozilla.xpcom.nsISHEntry;
public import mozilla.dxpcom.nsISHEntryD;


/* starting wrapper class:    nsISHContainer */
/**
 * The nsISHEntryContainer. The interface to access child entries
 * of an nsISHEntry.
 * 
 */
class nsISHContainerD : public nsISupportsD {

  static const nsIID IID = NS_ISHCONTAINER_IID;


  alias nsISHContainer InnerType;

  this(nsISHContainer intr){
    super(intr);
    this.inner = intr;
  }

  nsISHContainer opCast() {
    return inner;
  }

  void opAssign(nsISHContainer value) {
    inner = value;
  }

  /**
     * The current number of nsISHEntries which are immediate children of the 
	 * current SHEntry
     */
  /* readonly attribute long childCount; */
  PRInt32 ChildCount(){
    PRInt32 value;
    nsresult __result = inner.GetChildCount(&value);
    CheckException(__result);
    return value;
  }

  /**
	 * Add a new child SHEntry.  Adds to the end of the list.
	 */
  /* void AddChild (in nsISHEntry child, in long offset); */
  void AddChild(nsISHEntryD child, PRInt32 offset){
    nsresult __result = inner.AddChild(child ? cast(nsISHEntry)child : null, offset);
    CheckException(__result);
  }

  /**
	 * Removes a child SHEntry
	 */
  /* void RemoveChild (in nsISHEntry child); */
  void RemoveChild(nsISHEntryD child){
    nsresult __result = inner.RemoveChild(child ? cast(nsISHEntry)child : null);
    CheckException(__result);
  }

  /**
	 * Get child at an index
	 */
  /* nsISHEntry GetChildAt (in long index); */
  nsISHEntryD  GetChildAt(PRInt32 index){
    nsISHEntry _retval;
    nsresult __result = inner.GetChildAt(index, &_retval);
    CheckException(__result);
    return new nsISHEntryD(_retval);
  }

private:
  nsISHContainer inner;

}

