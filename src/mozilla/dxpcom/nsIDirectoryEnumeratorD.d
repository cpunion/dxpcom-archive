/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDirectoryEnumerator.idl
 */

module mozilla.dxpcom.nsIDirectoryEnumeratorD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDirectoryEnumerator;


public import mozilla.dxpcom.nsIDirectoryEnumeratorD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;


/* starting wrapper class:    nsIDirectoryEnumerator */
/**
 * This interface provides a means for enumerating the contents of a directory.
 * It is similar to nsISimpleEnumerator except the retrieved entries are QI'ed 
 * to nsIFile, and there is a mechanism for closing the directory when the 
 * enumeration is complete.
 * 
 * @status UNDER_REVIEW
 */
class nsIDirectoryEnumeratorD : public nsISupportsD {

  static const nsIID IID = NS_IDIRECTORYENUMERATOR_IID;


  alias nsIDirectoryEnumerator InnerType;

  this(nsIDirectoryEnumerator intr){
    super(intr);
    this.inner = intr;
  }

  nsIDirectoryEnumerator opCast() {
    return inner;
  }

  void opAssign(nsIDirectoryEnumerator value) {
    inner = value;
  }

  /**
   * Retrieves the next file in the sequence. The "nextFile" element is the 
   * first element upon the first call. This attribute is null if there is no 
   * next element.
   */
  /* readonly attribute nsIFile nextFile; */
  nsIFileD  NextFile(){
    nsIFile value;
    nsresult __result = inner.GetNextFile(&value);
    CheckException(__result);
    return new nsIFileD(value);
  }

  /**
   * Closes the directory being enumerated, releasing the system resource.
   * @throws NS_OK if the call succeeded and the directory was closed.
   *         NS_ERROR_FAILURE if the directory close failed. 
   *         It is safe to call this function many times. 
   */
  /* void close (); */
  void Close(){
    nsresult __result = inner.Close();
    CheckException(__result);
  }

private:
  nsIDirectoryEnumerator inner;

}

