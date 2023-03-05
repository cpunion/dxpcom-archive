/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEntropyCollector.idl
 */

module mozilla.xpcom.nsIEntropyCollector;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIEntropyCollector */
const char[] NS_IENTROPYCOLLECTOR_IID_STR = "6f883680-ab9d-11d4-9978-00b0d02354a0";

const nsIID NS_IENTROPYCOLLECTOR_IID= 
  {0x6f883680, 0xab9d, 0x11d4, 
    [ 0x99, 0x78, 0x00, 0xb0, 0xd0, 0x23, 0x54, 0xa0 ]};

extern(Windows)
interface nsIEntropyCollector : nsISupports {
  static const char[] IID_STR = NS_IENTROPYCOLLECTOR_IID_STR;
  static const nsIID IID = NS_IENTROPYCOLLECTOR_IID;

  /**
   * Add the following bytes to the pool of data to be used
   * in gathering entropy.
   */
  /* void randomUpdate (in buffer entropy, in long bufLen); */
  nsresult RandomUpdate(void * entropy, PRInt32 bufLen);

}

