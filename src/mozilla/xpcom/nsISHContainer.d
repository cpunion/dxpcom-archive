/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISHContainer.idl
 */

module mozilla.xpcom.nsISHContainer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIEnumerator;
public import mozilla.xpcom.nsISHEntry;


/* starting interface:    nsISHContainer */
const char[] NS_ISHCONTAINER_IID_STR = "65281ba2-988a-11d3-bdc7-0050040a9b44";

const nsIID NS_ISHCONTAINER_IID= 
  {0x65281ba2, 0x988a, 0x11d3, 
    [ 0xbd, 0xc7, 0x00, 0x50, 0x04, 0x0a, 0x9b, 0x44 ]};

/**
 * The nsISHEntryContainer. The interface to access child entries
 * of an nsISHEntry.
 * 
 */
extern(Windows)
interface nsISHContainer : nsISupports {
  static const char[] IID_STR = NS_ISHCONTAINER_IID_STR;
  static const nsIID IID = NS_ISHCONTAINER_IID;

  /**
     * The current number of nsISHEntries which are immediate children of the 
	 * current SHEntry
     */
  /* readonly attribute long childCount; */
  nsresult GetChildCount(PRInt32 *aChildCount);

  /**
	 * Add a new child SHEntry.  Adds to the end of the list.
	 */
  /* void AddChild (in nsISHEntry child, in long offset); */
  nsresult AddChild(nsISHEntry child, PRInt32 offset);

  /**
	 * Removes a child SHEntry
	 */
  /* void RemoveChild (in nsISHEntry child); */
  nsresult RemoveChild(nsISHEntry child);

  /**
	 * Get child at an index
	 */
  /* nsISHEntry GetChildAt (in long index); */
  nsresult GetChildAt(PRInt32 index, nsISHEntry *_retval);

}

