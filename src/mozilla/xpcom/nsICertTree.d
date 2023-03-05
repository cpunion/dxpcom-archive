/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICertTree.idl
 */

module mozilla.xpcom.nsICertTree;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsITreeView;

public import mozilla.xpcom.nsINSSCertCache; /* forward declaration */

public import mozilla.xpcom.nsIX509Cert; /* forward declaration */


/* starting interface:    nsICertTree */
const char[] NS_ICERTTREE_IID_STR = "4ea60761-31d6-491d-9e34-4b53a26c416c";

const nsIID NS_ICERTTREE_IID= 
  {0x4ea60761, 0x31d6, 0x491d, 
    [ 0x9e, 0x34, 0x4b, 0x53, 0xa2, 0x6c, 0x41, 0x6c ]};

extern(Windows)
interface nsICertTree : nsITreeView {
  static const char[] IID_STR = NS_ICERTTREE_IID_STR;
  static const nsIID IID = NS_ICERTTREE_IID;

  /* void loadCerts (in unsigned long type); */
  nsresult LoadCerts(PRUint32 type);

  /* void loadCertsFromCache (in nsINSSCertCache cache, in unsigned long type); */
  nsresult LoadCertsFromCache(nsINSSCertCache cache, PRUint32 type);

  /* nsIX509Cert getCert (in unsigned long index); */
  nsresult GetCert(PRUint32 index, nsIX509Cert *_retval);

  /* void removeCert (in unsigned long index); */
  nsresult RemoveCert(PRUint32 index);

}

