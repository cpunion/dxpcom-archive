/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIDialogParamBlock.idl
 */

module mozilla.dxpcom.nsIDialogParamBlockD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIDialogParamBlock;


public import mozilla.dxpcom.nsIDialogParamBlockD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIArray;

import mozilla.dxpcom.nsIArrayD;


/* starting wrapper class:    nsIDialogParamBlock */
/**
 * An interface to pass strings, integers and nsISupports to a dialog
 */
class nsIDialogParamBlockD : public nsISupportsD {

  static const nsIID IID = NS_IDIALOGPARAMBLOCK_IID;


  alias nsIDialogParamBlock InnerType;

  this(nsIDialogParamBlock intr){
    super(intr);
    this.inner = intr;
  }

  nsIDialogParamBlock opCast() {
    return inner;
  }

  void opAssign(nsIDialogParamBlock value) {
    inner = value;
  }

  /** Get or set an interger to pass.
   * Index must be in the range 0..7
   */
  /* PRInt32 GetInt (in PRInt32 inIndex); */
  PRInt32 GetInt(PRInt32 inIndex){
    PRInt32 _retval;
    nsresult __result = inner.GetInt(inIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void SetInt (in PRInt32 inIndex, in PRInt32 inInt); */
  void SetInt(PRInt32 inIndex, PRInt32 inInt){
    nsresult __result = inner.SetInt(inIndex, inInt);
    CheckException(__result);
  }

  /** Set the maximum number of strings to pass. Default is 16.
   * Use before setting any string (If you want to change it from the default).
   */
  /* void SetNumberStrings (in PRInt32 inNumStrings); */
  void SetNumberStrings(PRInt32 inNumStrings){
    nsresult __result = inner.SetNumberStrings(inNumStrings);
    CheckException(__result);
  }

  /** Get or set an string to pass.
    * Index starts at 0
    */
  /* wstring GetString (in PRInt32 inIndex); */
  PRUnichar* GetString(PRInt32 inIndex){
    PRUnichar* _retval;
    nsresult __result = inner.GetString(inIndex, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* void SetString (in PRInt32 inIndex, in wstring inString); */
  void SetString(PRInt32 inIndex, PRUnichar*inString){
    nsresult __result = inner.SetString(inIndex, inString);
    CheckException(__result);
  }

  /**
   * A place where you can store an nsIMutableArray to pass nsISupports 
   */
  /* attribute nsIMutableArray objects; */
  nsIMutableArrayD  Objects(){
    nsIMutableArray value;
    nsresult __result = inner.GetObjects(&value);
    CheckException(__result);
    return new nsIMutableArrayD(value);
  }
  void Objects(nsIMutableArrayD  aObjects){
    nsIMutableArray value;
    nsresult __result = inner.SetObjects(value);
    CheckException(__result);
  }

private:
  nsIDialogParamBlock inner;

}

