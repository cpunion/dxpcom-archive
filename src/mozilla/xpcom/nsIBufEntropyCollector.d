/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIBufEntropyCollector.idl
 */

module mozilla.xpcom.nsIBufEntropyCollector;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIEntropyCollector;


/* starting interface:    nsIBufEntropyCollector */
const char[] NS_IBUFENTROPYCOLLECTOR_IID_STR = "485b87a8-5dd7-4b8d-8ea8-dee53201f899";

const nsIID NS_IBUFENTROPYCOLLECTOR_IID= 
  {0x485b87a8, 0x5dd7, 0x4b8d, 
    [ 0x8e, 0xa8, 0xde, 0xe5, 0x32, 0x01, 0xf8, 0x99 ]};

extern(Windows)
interface nsIBufEntropyCollector : nsIEntropyCollector {
  static const char[] IID_STR = NS_IBUFENTROPYCOLLECTOR_IID_STR;
  static const nsIID IID = NS_IBUFENTROPYCOLLECTOR_IID;

  /**
   * Forward the entropy collected so far to |collector| and then
   * continue forwarding new entropy as it arrives.
   */
  /* void forwardTo (in nsIEntropyCollector collector); */
  nsresult ForwardTo(nsIEntropyCollector collector);

  /**
   * No longer forward to a (possibly) previously remembered collector.
   * Do buffering again.
   */
  /* void dontForward (); */
  nsresult DontForward();

}

