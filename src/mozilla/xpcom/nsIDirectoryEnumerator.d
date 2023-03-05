/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDirectoryEnumerator.idl
 */

module mozilla.xpcom.nsIDirectoryEnumerator;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFile; /* forward declaration */


/* starting interface:    nsIDirectoryEnumerator */
const char[] NS_IDIRECTORYENUMERATOR_IID_STR = "31f7f4ae-6916-4f2d-a81e-926a4e3022ee";

const nsIID NS_IDIRECTORYENUMERATOR_IID= 
  {0x31f7f4ae, 0x6916, 0x4f2d, 
    [ 0xa8, 0x1e, 0x92, 0x6a, 0x4e, 0x30, 0x22, 0xee ]};

/**
 * This interface provides a means for enumerating the contents of a directory.
 * It is similar to nsISimpleEnumerator except the retrieved entries are QI'ed 
 * to nsIFile, and there is a mechanism for closing the directory when the 
 * enumeration is complete.
 * 
 * @status UNDER_REVIEW
 */
extern(Windows)
interface nsIDirectoryEnumerator : nsISupports {
  static const char[] IID_STR = NS_IDIRECTORYENUMERATOR_IID_STR;
  static const nsIID IID = NS_IDIRECTORYENUMERATOR_IID;

  /**
   * Retrieves the next file in the sequence. The "nextFile" element is the 
   * first element upon the first call. This attribute is null if there is no 
   * next element.
   */
  /* readonly attribute nsIFile nextFile; */
  nsresult GetNextFile(nsIFile  *aNextFile);

  /**
   * Closes the directory being enumerated, releasing the system resource.
   * @throws NS_OK if the call succeeded and the directory was closed.
   *         NS_ERROR_FAILURE if the directory close failed. 
   *         It is safe to call this function many times. 
   */
  /* void close (); */
  nsresult Close();

}

