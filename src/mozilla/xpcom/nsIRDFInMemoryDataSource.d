/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFInMemoryDataSource.idl
 */

module mozilla.xpcom.nsIRDFInMemoryDataSource;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIRDFResource;
public import mozilla.xpcom.nsIRDFNode;


/* starting interface:    nsIRDFInMemoryDataSource */
const char[] NS_IRDFINMEMORYDATASOURCE_IID_STR = "17c4e0aa-1dd2-11b2-8029-bf6f668de500";

const nsIID NS_IRDFINMEMORYDATASOURCE_IID= 
  {0x17c4e0aa, 0x1dd2, 0x11b2, 
    [ 0x80, 0x29, 0xbf, 0x6f, 0x66, 0x8d, 0xe5, 0x00 ]};

extern(Windows)
interface nsIRDFInMemoryDataSource : nsISupports {
  static const char[] IID_STR = NS_IRDFINMEMORYDATASOURCE_IID_STR;
  static const nsIID IID = NS_IRDFINMEMORYDATASOURCE_IID;

  /* void EnsureFastContainment (in nsIRDFResource aSource); */
  nsresult EnsureFastContainment(nsIRDFResource aSource);

}

