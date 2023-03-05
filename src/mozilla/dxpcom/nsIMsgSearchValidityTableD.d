/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIMsgSearchValidityTable.idl
 */

module mozilla.dxpcom.nsIMsgSearchValidityTableD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIMsgSearchValidityTable;


public import mozilla.dxpcom.nsIMsgSearchValidityTableD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsMsgSearchCore;
public import mozilla.dxpcom.nsMsgSearchCoreD;

public import mozilla.xpcom.nsISupportsArray;

public import mozilla.dxpcom.nsISupportsArrayD;


/* starting wrapper class:    nsIMsgSearchValidityTable */
class nsIMsgSearchValidityTableD : public nsISupportsD {

  static const nsIID IID = NS_IMSGSEARCHVALIDITYTABLE_IID;


  alias nsIMsgSearchValidityTable InnerType;

  this(nsIMsgSearchValidityTable intr){
    super(intr);
    this.inner = intr;
  }

  nsIMsgSearchValidityTable opCast() {
    return inner;
  }

  void opAssign(nsIMsgSearchValidityTable value) {
    inner = value;
  }

  /* void setAvailable (in nsMsgSearchAttribValue attrib, in nsMsgSearchOpValue op, in boolean active); */
  void SetAvailable(nsMsgSearchAttribValue attrib, nsMsgSearchOpValue op, PRBool active){
    nsresult __result = inner.SetAvailable(attrib, op, active);
    CheckException(__result);
  }

  /* void setEnabled (in nsMsgSearchAttribValue attrib, in nsMsgSearchOpValue op, in boolean enabled); */
  void SetEnabled(nsMsgSearchAttribValue attrib, nsMsgSearchOpValue op, PRBool enabled){
    nsresult __result = inner.SetEnabled(attrib, op, enabled);
    CheckException(__result);
  }

  /* void setValidButNotShown (in nsMsgSearchAttribValue attrib, in nsMsgSearchOpValue op, in boolean valid); */
  void SetValidButNotShown(nsMsgSearchAttribValue attrib, nsMsgSearchOpValue op, PRBool valid){
    nsresult __result = inner.SetValidButNotShown(attrib, op, valid);
    CheckException(__result);
  }

  /* boolean getAvailable (in nsMsgSearchAttribValue attrib, in nsMsgSearchOpValue op); */
  PRBool GetAvailable(nsMsgSearchAttribValue attrib, nsMsgSearchOpValue op){
    PRBool _retval;
    nsresult __result = inner.GetAvailable(attrib, op, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean getEnabled (in nsMsgSearchAttribValue attrib, in nsMsgSearchOpValue op); */
  PRBool GetEnabled(nsMsgSearchAttribValue attrib, nsMsgSearchOpValue op){
    PRBool _retval;
    nsresult __result = inner.GetEnabled(attrib, op, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* boolean getValidButNotShown (in nsMsgSearchAttribValue attrib, in nsMsgSearchOpValue op); */
  PRBool GetValidButNotShown(nsMsgSearchAttribValue attrib, nsMsgSearchOpValue op){
    PRBool _retval;
    nsresult __result = inner.GetValidButNotShown(attrib, op, &_retval);
    CheckException(__result);
    return _retval;
  }

  /* [noscript] void validateTerms (in nsISupportsArray terms); */
  void ValidateTerms(nsISupportsArrayD terms){
    nsresult __result = inner.ValidateTerms(terms ? cast(nsISupportsArray)terms : null);
    CheckException(__result);
  }

  /* readonly attribute long numAvailAttribs; */
  PRInt32 NumAvailAttribs(){
    PRInt32 value;
    nsresult __result = inner.GetNumAvailAttribs(&value);
    CheckException(__result);
    return value;
  }

  /* void getAvailableAttributes (out unsigned long length, [array, size_is (length), retval] out nsMsgSearchAttribValue attrs); */
  void GetAvailableAttributes(out PRUint32 length, out nsMsgSearchAttribValue *attrs){
    nsresult __result = inner.GetAvailableAttributes(&length, &attrs);
    CheckException(__result);
  }

  /* void getAvailableOperators (in nsMsgSearchAttribValue attrib, out unsigned long length, [array, size_is (length), retval] out nsMsgSearchOpValue operators); */
  void GetAvailableOperators(nsMsgSearchAttribValue attrib, out PRUint32 length, out nsMsgSearchOpValue *operators){
    nsresult __result = inner.GetAvailableOperators(attrib, &length, &operators);
    CheckException(__result);
  }

  /* void setDefaultAttrib (in nsMsgSearchAttribValue defaultAttrib); */
  void SetDefaultAttrib(nsMsgSearchAttribValue defaultAttrib){
    nsresult __result = inner.SetDefaultAttrib(defaultAttrib);
    CheckException(__result);
  }

private:
  nsIMsgSearchValidityTable inner;

}

