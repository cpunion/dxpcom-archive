/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIXTFStyledElementWrapper.idl
 */

module mozilla.xpcom.nsIXTFStyledElementWrapper;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIXTFElementWrapper;


/* starting interface:    nsIXTFStyledElementWrapper */
const char[] NS_IXTFSTYLEDELEMENTWRAPPER_IID_STR = "814dbfdd-32ff-4734-9aea-b84c925bc9c0";

const nsIID NS_IXTFSTYLEDELEMENTWRAPPER_IID= 
  {0x814dbfdd, 0x32ff, 0x4734, 
    [ 0x9a, 0xea, 0xb8, 0x4c, 0x92, 0x5b, 0xc9, 0xc0 ]};

extern(Windows)
interface nsIXTFStyledElementWrapper : nsIXTFElementWrapper {
  static const char[] IID_STR = NS_IXTFSTYLEDELEMENTWRAPPER_IID_STR;
  static const nsIID IID = NS_IXTFSTYLEDELEMENTWRAPPER_IID;

  /**
   * This sets the name of the class attribute.
   * Should be called only during ::onCreated.
   * Note! nsIXTFAttributeHandler can't be used to handle class attribute.
   */
  /* void setClassAttributeName (in nsIAtom name); */
  nsresult SetClassAttributeName(nsIAtom name);

}

