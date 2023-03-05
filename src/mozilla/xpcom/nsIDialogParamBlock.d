/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDialogParamBlock.idl
 */

module mozilla.xpcom.nsIDialogParamBlock;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIArray;


/* starting interface:    nsIDialogParamBlock */
const char[] NS_IDIALOGPARAMBLOCK_IID_STR = "f76c0901-437a-11d3-b7a0-e35db351b4bc";

const nsIID NS_IDIALOGPARAMBLOCK_IID= 
  {0xf76c0901, 0x437a, 0x11d3, 
    [ 0xb7, 0xa0, 0xe3, 0x5d, 0xb3, 0x51, 0xb4, 0xbc ]};

/**
 * An interface to pass strings, integers and nsISupports to a dialog
 */
extern(Windows)
interface nsIDialogParamBlock : nsISupports {
  static const char[] IID_STR = NS_IDIALOGPARAMBLOCK_IID_STR;
  static const nsIID IID = NS_IDIALOGPARAMBLOCK_IID;

  /** Get or set an interger to pass.
   * Index must be in the range 0..7
   */
  /* PRInt32 GetInt (in PRInt32 inIndex); */
  nsresult GetInt(PRInt32 inIndex, PRInt32 *_retval);

  /* void SetInt (in PRInt32 inIndex, in PRInt32 inInt); */
  nsresult SetInt(PRInt32 inIndex, PRInt32 inInt);

  /** Set the maximum number of strings to pass. Default is 16.
   * Use before setting any string (If you want to change it from the default).
   */
  /* void SetNumberStrings (in PRInt32 inNumStrings); */
  nsresult SetNumberStrings(PRInt32 inNumStrings);

  /** Get or set an string to pass.
    * Index starts at 0
    */
  /* wstring GetString (in PRInt32 inIndex); */
  nsresult GetString(PRInt32 inIndex, PRUnichar **_retval);

  /* void SetString (in PRInt32 inIndex, in wstring inString); */
  nsresult SetString(PRInt32 inIndex, PRUnichar *inString);

  /**
   * A place where you can store an nsIMutableArray to pass nsISupports 
   */
  /* attribute nsIMutableArray objects; */
  nsresult GetObjects(nsIMutableArray  *aObjects);
  nsresult SetObjects(nsIMutableArray  aObjects);

}

