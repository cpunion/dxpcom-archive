/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPKIParamBlock.idl
 */

module mozilla.xpcom.nsIPKIParamBlock;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;


/* starting interface:    nsIPKIParamBlock */
const char[] NS_IPKIPARAMBLOCK_IID_STR = "b6fe3d78-1dd1-11b2-9058-ced9016984c8";

const nsIID NS_IPKIPARAMBLOCK_IID= 
  {0xb6fe3d78, 0x1dd1, 0x11b2, 
    [ 0x90, 0x58, 0xce, 0xd9, 0x01, 0x69, 0x84, 0xc8 ]};

extern(Windows)
interface nsIPKIParamBlock : nsISupports {
  static const char[] IID_STR = NS_IPKIPARAMBLOCK_IID_STR;
  static const nsIID IID = NS_IPKIPARAMBLOCK_IID;

  /* void setISupportAtIndex (in long index, in nsISupports object); */
  nsresult SetISupportAtIndex(PRInt32 index, nsISupports object);

  /* nsISupports getISupportAtIndex (in long index); */
  nsresult GetISupportAtIndex(PRInt32 index, nsISupports *_retval);

}

