/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM mozISqlDataSource.idl
 */

module mozilla.xpcom.mozISqlDataSource;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIRDFResource; /* forward declaration */


/* starting interface:    mozISqlDataSource */
const char[] MOZISQLDATASOURCE_IID_STR = "3c0a954f-b595-46a4-932c-3660f55e2e10";

const nsIID MOZISQLDATASOURCE_IID= 
  {0x3c0a954f, 0xb595, 0x46a4, 
    [ 0x93, 0x2c, 0x36, 0x60, 0xf5, 0x5e, 0x2e, 0x10 ]};

/**
 * @status UNDER_REVIEW
 */
extern(Windows)
interface mozISqlDataSource : nsISupports {
  static const char[] IID_STR = MOZISQLDATASOURCE_IID_STR;
  static const nsIID IID = MOZISQLDATASOURCE_IID;

  /**
   * Retrieve the RDF resource associated with the specified row.
   *
   * @param aRowIndex   The row index.
   */
  /* nsIRDFResource getResourceAtIndex (in long aRowIndex); */
  nsresult GetResourceAtIndex(PRInt32 aRowIndex, nsIRDFResource *_retval);

  /**
   * Retrieve the index associated with specified RDF resource.
   *
   * @param aResource   The resource.
   */
  /* long getIndexOfResource (in nsIRDFResource aResource); */
  nsresult GetIndexOfResource(nsIRDFResource aResource, PRInt32 *_retval);

}

