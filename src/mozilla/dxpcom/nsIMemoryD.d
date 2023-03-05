/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMemory.idl
 */

module mozilla.dxpcom.nsIMemoryD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMemory;


public import mozilla.dxpcom.nsIMemoryD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIMemory */
/**
 *
 * nsIMemory: interface to allocate and deallocate memory. Also provides
 * for notifications in low-memory situations.
 *
 * The frozen exported symbols NS_Alloc, NS_Realloc, and NS_Free
 * provide a more efficient way to access XPCOM memory allocation. Using
 * those symbols is preferred to using the methods on this interface.
 *
 * A client that wishes to be notified of low memory situations (for
 * example, because the client maintains a large memory cache that
 * could be released when memory is tight) should register with the
 * observer service (see nsIObserverService) using the topic 
 * "memory-pressure". There are three specific types of notications 
 * that can occur.  These types will be passed as the |aData| 
 * parameter of the of the "memory-pressure" notification: 
 * 
 * "low-memory"
 * This will be passed as the extra data when the pressure 
 * observer is being asked to flush for low-memory conditions.
 *
 * "heap-minimize"
 * This will be passed as the extra data when the pressure 
 * observer is being asked to flush because of a heap minimize 
 * call.
 *
 * "alloc-failure"
 * This will be passed as the extra data when the pressure 
 * observer has been asked to flush because a malloc() or 
 * realloc() has failed.
 *
 * @status FROZEN
 */
class nsIMemoryD : public nsISupportsD {

  static const nsIID IID = NS_IMEMORY_IID;


  alias nsIMemory InnerType;

  this(nsIMemory intr){
    super(intr);
    this.inner = intr;
  }

  nsIMemory opCast() {
    return inner;
  }

  void opAssign(nsIMemory value) {
    inner = value;
  }

  /**
     * Allocates a block of memory of a particular size. If the memory 
     * cannot be allocated (because of an out-of-memory condition), null
     * is returned.
     *
     * @param size - the size of the block to allocate
     * @result the block of memory
     */
  /* [noscript, notxpcom] voidPtr alloc (in size_t size); */
  void * Alloc(size_t size){
    void * _retval;
    _retval = inner.Alloc(size);

    return _retval;
  }

  /**
     * Reallocates a block of memory to a new size.
     *
     * @param ptr - the block of memory to reallocate
     * @param size - the new size
     * @result the reallocated block of memory
     *
     * If ptr is null, this function behaves like malloc.
     * If s is the size of the block to which ptr points, the first
     * min(s, size) bytes of ptr's block are copied to the new block.
     * If the allocation succeeds, ptr is freed and a pointer to the 
     * new block returned.  If the allocation fails, ptr is not freed
     * and null is returned. The returned value may be the same as ptr.
     */
  /* [noscript, notxpcom] voidPtr realloc (in voidPtr ptr, in size_t newSize); */
  void * Realloc(void * ptr, size_t newSize){
    void * _retval;
    _retval = inner.Realloc(ptr, newSize);

    return _retval;
  }

  /**
     * Frees a block of memory. Null is a permissible value, in which case
     * nothing happens. 
     *
     * @param ptr - the block of memory to free
     */
  /* [noscript, notxpcom] void free (in voidPtr ptr); */
  void Free(void * ptr){
  inner.Free(ptr);

  }

  /**
     * Attempts to shrink the heap.
     * @param immediate - if true, heap minimization will occur
     *   immediately if the call was made on the main thread. If
     *   false, the flush will be scheduled to happen when the app is
     *   idle.
     * @return NS_ERROR_FAILURE if 'immediate' is set an the call
     *   was not on the application's main thread.
     */
  /* void heapMinimize (in boolean immediate); */
  void HeapMinimize(PRBool immediate){
    nsresult __result = inner.HeapMinimize(immediate);
    CheckException(__result);
  }

  /**
     * This predicate can be used to determine if we're in a low-memory
     * situation (what constitutes low-memory is platform dependent). This
     * can be used to trigger the memory pressure observers.
     */
  /* boolean isLowMemory (); */
  PRBool IsLowMemory(){
    PRBool _retval;
    nsresult __result = inner.IsLowMemory(&_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIMemory inner;

}

