/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRecyclingAllocator.idl
 */

module mozilla.xpcom.nsIRecyclingAllocator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIMemory;


/* starting interface:    nsIRecyclingAllocator */
const char[] NS_IRECYCLINGALLOCATOR_IID_STR = "d064a04c-9cee-4319-be31-64d565bccba9";

const nsIID NS_IRECYCLINGALLOCATOR_IID= 
  {0xd064a04c, 0x9cee, 0x4319, 
    [ 0xbe, 0x31, 0x64, 0xd5, 0x65, 0xbc, 0xcb, 0xa9 ]};

/**
 *
 * nsIRecyclingAllocator: A wrapper for the nsRecyclingAllocator
 *
 * Holds allocations and reuses them for subsequent allocs.
 * Thread safe and uses a timer to release freelist.
 *
 * @status UNDER-DEVELOPMENT
 */
extern(Windows)
interface nsIRecyclingAllocator : nsIMemory {
  static const char[] IID_STR = NS_IRECYCLINGALLOCATOR_IID_STR;
  static const nsIID IID = NS_IRECYCLINGALLOCATOR_IID;

  /* void init (in size_t nblocks, in size_t recycleAfter, in string id); */
  nsresult Init(size_t nblocks, size_t recycleAfter, char *id);

}

