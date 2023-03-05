/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIRDFPurgeableDataSource.idl
 */

module mozilla.xpcom.nsIRDFPurgeableDataSource;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIRDFResource;
public import mozilla.xpcom.nsIRDFNode;


/* starting interface:    nsIRDFPurgeableDataSource */
const char[] NS_IRDFPURGEABLEDATASOURCE_IID_STR = "951700f0-fed0-11d2-bdd9-00104bde6048";

const nsIID NS_IRDFPURGEABLEDATASOURCE_IID= 
  {0x951700f0, 0xfed0, 0x11d2, 
    [ 0xbd, 0xd9, 0x00, 0x10, 0x4b, 0xde, 0x60, 0x48 ]};

extern(Windows)
interface nsIRDFPurgeableDataSource : nsISupports {
  static const char[] IID_STR = NS_IRDFPURGEABLEDATASOURCE_IID_STR;
  static const nsIID IID = NS_IRDFPURGEABLEDATASOURCE_IID;

  /* boolean Mark (in nsIRDFResource aSource, in nsIRDFResource aProperty, in nsIRDFNode aTarget, in boolean aTruthValue); */
  nsresult Mark(nsIRDFResource aSource, nsIRDFResource aProperty, nsIRDFNode aTarget, PRBool aTruthValue, PRBool *_retval);

  /* void Sweep (); */
  nsresult Sweep();

}

