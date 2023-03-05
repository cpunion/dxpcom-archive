/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRecyclingAllocator.idl
 */

module mozilla.dxpcom.nsIRecyclingAllocatorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIRecyclingAllocator;


public import mozilla.dxpcom.nsIRecyclingAllocatorD;

public import mozilla.xpcom.nsIMemory;
public import mozilla.dxpcom.nsIMemoryD;


/* starting wrapper class:    nsIRecyclingAllocator */
/**
 *
 * nsIRecyclingAllocator: A wrapper for the nsRecyclingAllocator
 *
 * Holds allocations and reuses them for subsequent allocs.
 * Thread safe and uses a timer to release freelist.
 *
 * @status UNDER-DEVELOPMENT
 */
class nsIRecyclingAllocatorD : public nsIMemoryD {

  static const nsIID IID = NS_IRECYCLINGALLOCATOR_IID;


  alias nsIRecyclingAllocator InnerType;

  this(nsIRecyclingAllocator intr){
    super(intr);
    this.inner = intr;
  }

  nsIRecyclingAllocator opCast() {
    return inner;
  }

  void opAssign(nsIRecyclingAllocator value) {
    inner = value;
  }

  /* void init (in size_t nblocks, in size_t recycleAfter, in string id); */
  void Init(size_t nblocks, size_t recycleAfter, char*id){
    nsresult __result = inner.Init(nblocks, recycleAfter, id);
    CheckException(__result);
  }

private:
  nsIRecyclingAllocator inner;

}

