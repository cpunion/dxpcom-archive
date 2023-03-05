/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPControl.idl
 */

module mozilla.dxpcom.nsILDAPControlD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILDAPControl;


public import mozilla.dxpcom.nsILDAPControlD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsILDAPBERValue;

public import mozilla.dxpcom.nsILDAPBERValueD;


/* starting wrapper class:    nsILDAPControl */
/**
 * XPCOM representation of the C SDK LDAPControl structure.
 */
class nsILDAPControlD : public nsISupportsD {

  static const nsIID IID = NS_ILDAPCONTROL_IID;


  alias nsILDAPControl InnerType;

  this(nsILDAPControl intr){
    super(intr);
    this.inner = intr;
  }

  nsILDAPControl opCast() {
    return inner;
  }

  void opAssign(nsILDAPControl value) {
    inner = value;
  }

  /**
   * Control type, represented as a string.
   *
   * @exceptions   none
   */
  /* attribute ACString oid; */
  char[] Oid(){
    scope auto value = new ACString();
    nsresult __result = inner.GetOid(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }
  void Oid(char[] aOid){
    scope auto value = new ACString(aOid);
    nsresult __result = inner.SetOid(cast(nsACString*)value);
    CheckException(__result);
  }

  /**
   * The data associated with a control, if any.  To specify that no data 
   * is to be associated with the control, don't set this at all (which
   * is equivalent to setting it to null).  
   *
   * @note Specifying a zero-length value is not currently supported.  At some
   * date, setting this to an nsILDAPBERValue which has not had any of the
   * set methods called will be the appropriate way to do that.
   *
   * @exceptions   none
   */
  /* attribute nsILDAPBERValue value; */
  nsILDAPBERValueD  Value(){
    nsILDAPBERValue value;
    nsresult __result = inner.GetValue(&value);
    CheckException(__result);
    return new nsILDAPBERValueD(value);
  }
  void Value(nsILDAPBERValueD  aValue){
    nsILDAPBERValue value;
    nsresult __result = inner.SetValue(value);
    CheckException(__result);
  }

  /**
   * Should the client or server abort if the control is not understood?
   * Should be set to false for server controls used in abandon and unbind
   * operations, since those have no server response.
   *
   * @exceptions   none
   */
  /* attribute boolean isCritical; */
  PRBool IsCritical(){
    PRBool value;
    nsresult __result = inner.GetIsCritical(&value);
    CheckException(__result);
    return value;
  }
  void IsCritical(PRBool aIsCritical){
    nsresult __result = inner.SetIsCritical(aIsCritical);
    CheckException(__result);
  }

private:
  nsILDAPControl inner;

}

