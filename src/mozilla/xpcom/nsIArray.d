/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIArray.idl
 */

module mozilla.xpcom.nsIArray;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */


/* starting interface:    nsIArray */
const char[] NS_IARRAY_IID_STR = "114744d9-c369-456e-b55a-52fe52880d2d";

const nsIID NS_IARRAY_IID= 
  {0x114744d9, 0xc369, 0x456e, 
    [ 0xb5, 0x5a, 0x52, 0xfe, 0x52, 0x88, 0x0d, 0x2d ]};

/**
 * nsIArray
 *
 * An indexed collection of elements. Provides basic functionality for
 * retrieving elements at a specific position, searching for
 * elements. Indexes are zero-based, such that the last element in the
 * array is stored at the index length-1.
 *
 * For an array which can be modified, see nsIMutableArray below.
 *
 * Neither interface makes any attempt to protect the individual
 * elements from modification. The convention is that the elements of
 * the array should not be modified. Documentation within a specific
 * interface should describe variations from this convention.
 *
 * It is also convention that if an interface provides access to an
 * nsIArray, that the array should not be QueryInterfaced to an
 * nsIMutableArray for modification. If the interface in question had
 * intended the array to be modified, it would have returned an
 * nsIMutableArray!
 *
 * null is a valid entry in the array, and as such any nsISupports
 * parameters may be null, except where noted.
 *
 * @status UNDER_REVIEW
 */
extern(Windows)
interface nsIArray : nsISupports {
  static const char[] IID_STR = NS_IARRAY_IID_STR;
  static const nsIID IID = NS_IARRAY_IID;

  /**
     * length
     *
     * number of elements in the array.
     */
  /* readonly attribute unsigned long length; */
  nsresult GetLength(PRUint32 *aLength);

  /**
     * queryElementAt()
     *
     * Retrieve a specific element of the array, and QueryInterface it
     * to the specified interface. null is a valid result for
     * this method, but exceptions are thrown in other circumstances
     * 
     * @param index position of element
     * @param uuid the IID of the requested interface
     * @param result the object, QI'd to the requested interface
     *
     * @throws NS_ERROR_NO_INTERFACE when an entry exists at the
     *         specified index, but the requested interface is not
     *         available.
     * @throws NS_ERROR_ILLEGAL_VALUE when index > length-1
     *
     */
  /* void queryElementAt (in unsigned long index, in nsIIDRef uuid, [iid_is (uuid), retval] out nsQIResult result); */
  nsresult QueryElementAt(PRUint32 index, nsIID * uuid, void * *result);

  /**
     * indexOf()
     * 
     * Get the position of a specific element. Note that since null is
     * a valid input, exceptions are used to indicate that an element
     * is not found.
     * 
     * @param startIndex The initial element to search in the array
     *                   To start at the beginning, use 0 as the
     *                   startIndex
     * @param element    The element you are looking for
     * @returns a number >= startIndex which is the position of the
     *          element in the array.
     * @throws NS_ERROR_NOT_FOUND if the element was not in the array.
     */
  /* unsigned long indexOf (in unsigned long startIndex, in nsISupports element); */
  nsresult IndexOf(PRUint32 startIndex, nsISupports element, PRUint32 *_retval);

  /**
     * enumerate the array
     *
     * @returns a new enumerator positioned at the start of the array
     * @throws NS_ERROR_FAILURE if the array is empty (to make it easy
     *         to detect errors)
     */
  /* nsISimpleEnumerator enumerate (); */
  nsresult Enumerate(nsISimpleEnumerator *_retval);

}


/* starting interface:    nsIMutableArray */
const char[] NS_IMUTABLEARRAY_IID_STR = "af059da0-c85b-40ec-af07-ae4bfdc192cc";

const nsIID NS_IMUTABLEARRAY_IID= 
  {0xaf059da0, 0xc85b, 0x40ec, 
    [ 0xaf, 0x07, 0xae, 0x4b, 0xfd, 0xc1, 0x92, 0xcc ]};

/**
 * nsIMutableArray
 * A separate set of methods that will act on the array. Consumers of
 * nsIArray should not QueryInterface to nsIMutableArray unless they
 * own the array.
 *
 * As above, it is legal to add null elements to the array. Note also
 * that null elements can be created as a side effect of
 * insertElementAt(). Conversely, if insertElementAt() is never used,
 * and null elements are never explicitly added to the array, then it
 * is guaranteed that queryElementAt() will never return a null value.
 *
 * Any of these methods may throw NS_ERROR_OUT_OF_MEMORY when the
 * array must grow to complete the call, but the allocation fails.
 *
 * @status UNDER_REVIEW
 */
extern(Windows)
interface nsIMutableArray : nsIArray {
  static const char[] IID_STR = NS_IMUTABLEARRAY_IID_STR;
  static const nsIID IID = NS_IMUTABLEARRAY_IID;

  /**
     * appendElement()
     * 
     * Append an element at the end of the array.
     *
     * @param element The element to append.
     * @param weak    Whether or not to store the element using a weak
     *                reference.
     * @throws NS_ERROR_FAILURE when a weak reference is requested,
     *                          but the element does not support
     *                          nsIWeakReference.
     */
  /* void appendElement (in nsISupports element, in boolean weak); */
  nsresult AppendElement(nsISupports element, PRBool weak);

  /**
     * removeElementAt()
     * 
     * Remove an element at a specific position, moving all elements
     * stored at a higher position down one.
     * To remove a specific element, use indexOf() to find the index
     * first, then call removeElementAt().
     *
     * @param index the position of the item
     *
     */
  /* void removeElementAt (in unsigned long index); */
  nsresult RemoveElementAt(PRUint32 index);

  /**
     * insertElementAt()
     *
     * Insert an element at the given position, moving the element 
     * currently located in that position, and all elements in higher
     * position, up by one.
     *
     * @param element The element to insert
     * @param index   The position in the array:
     *                If the position is lower than the current length
     *                of the array, the elements at that position and
     *                onwards are bumped one position up.
     *                If the position is equal to the current length
     *                of the array, the new element is appended.
     *                An index lower than 0 or higher than the current
     *                length of the array is invalid and will be ignored.
     *
     * @throws NS_ERROR_FAILURE when a weak reference is requested,
     *                          but the element does not support
     *                          nsIWeakReference.
     */
  /* void insertElementAt (in nsISupports element, in unsigned long index, in boolean weak); */
  nsresult InsertElementAt(nsISupports element, PRUint32 index, PRBool weak);

  /**
     * replaceElementAt()
     *
     * Replace the element at the given position.
     *
     * @param element The new element to insert
     * @param index   The position in the array
     *                If the position is lower than the current length
     *                of the array, an existing element will be replaced.
     *                If the position is equal to the current length
     *                of the array, the new element is appended.
     *                If the position is higher than the current length
     *                of the array, empty elements are appended followed
     *                by the new element at the specified position.
     *                An index lower than 0 is invalid and will be ignored.
     *
     * @param weak    Whether or not to store the new element using a weak
     *                reference.
     *
     * @throws NS_ERROR_FAILURE when a weak reference is requested,
     *                          but the element does not support
     *                          nsIWeakReference.
     */
  /* void replaceElementAt (in nsISupports element, in unsigned long index, in boolean weak); */
  nsresult ReplaceElementAt(nsISupports element, PRUint32 index, PRBool weak);

  /**
     * clear()
     *
     * clear the entire array, releasing all stored objects
     */
  /* void clear (); */
  nsresult Clear();

}

