/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILeakDetector.idl
 */

module mozilla.xpcom.nsILeakDetector;


import mozilla.xpcom.nsrootidl;

import mozilla.xpcom.nsISupports;

import mozilla.xpcom.nsICollection; /* forward declaration */


/* starting interface:    nsILeakDetector */
const char[] NS_ILEAKDETECTOR_IID_STR = "a2ec052c-1dd1-11b2-9c92-84be252fe47e";

const nsIID NS_ILEAKDETECTOR_IID= 
  {0xa2ec052c, 0x1dd1, 0x11b2, 
    [ 0x9c, 0x92, 0x84, 0xbe, 0x25, 0x2f, 0xe4, 0x7e ]};

/**
 * Controls the leak detector.
 */
extern(Windows)
interface nsILeakDetector : nsISupports {
  static const char[] IID_STR = NS_ILEAKDETECTOR_IID_STR;
  static const nsIID IID = NS_ILEAKDETECTOR_IID;

  /* void dumpLeaks (); */
  nsresult DumpLeaks();

  /* void traceObject (in nsISupports object, in PRBool verbose); */
  nsresult TraceObject(nsISupports object, PRBool verbose);

  /* void traceCollection (in nsICollection objects, in PRBool verbose); */
  nsresult TraceCollection(nsICollection objects, PRBool verbose);

  /* void markObject (in nsISupports object, in PRBool marked); */
  nsresult MarkObject(nsISupports object, PRBool marked);

  /* readonly attribute nsISupports services; */
  nsresult GetServices(nsISupports  *aServices);

}

