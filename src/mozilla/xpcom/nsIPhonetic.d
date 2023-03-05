/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPhonetic.idl
 */

module mozilla.xpcom.nsIPhonetic;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIPhonetic */
const char[] NS_IPHONETIC_IID_STR = "bc6ea726-ab56-46b6-a21a-aa7b76d6818f";

const nsIID NS_IPHONETIC_IID= 
  {0xbc6ea726, 0xab56, 0x46b6, 
    [ 0xa2, 0x1a, 0xaa, 0x7b, 0x76, 0xd6, 0x81, 0x8f ]};

/** 
 * This interface is used to get the phonetic value of the input text.
 * It can be used to get corresponding phonetic value for ideographic text.
 * The interface can be retrieved by calling QI to the interface 
 * which implements the phonetic interface.
 */
extern(Windows)
interface nsIPhonetic : nsISupports {
  static const char[] IID_STR = NS_IPHONETIC_IID_STR;
  static const nsIID IID = NS_IPHONETIC_IID;

  /**
   * phonetic get the phonetic value of the input text
   */
  /* readonly attribute DOMString phonetic; */
  nsresult GetPhonetic(nsAString * aPhonetic);

}

