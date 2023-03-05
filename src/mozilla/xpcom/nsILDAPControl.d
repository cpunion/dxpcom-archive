/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPControl.idl
 */

module mozilla.xpcom.nsILDAPControl;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsILDAPBERValue; /* forward declaration */


/* starting interface:    nsILDAPControl */
const char[] NS_ILDAPCONTROL_IID_STR = "3a7ceb8e-482a-4a4f-9aa4-26b9a69a3595";

const nsIID NS_ILDAPCONTROL_IID= 
  {0x3a7ceb8e, 0x482a, 0x4a4f, 
    [ 0x9a, 0xa4, 0x26, 0xb9, 0xa6, 0x9a, 0x35, 0x95 ]};

/**
 * XPCOM representation of the C SDK LDAPControl structure.
 */
extern(Windows)
interface nsILDAPControl : nsISupports {
  static const char[] IID_STR = NS_ILDAPCONTROL_IID_STR;
  static const nsIID IID = NS_ILDAPCONTROL_IID;

  /**
   * Control type, represented as a string.
   *
   * @exceptions   none
   */
  /* attribute ACString oid; */
  nsresult GetOid(nsACString * aOid);
  nsresult SetOid(nsACString * aOid);

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
  nsresult GetValue(nsILDAPBERValue  *aValue);
  nsresult SetValue(nsILDAPBERValue  aValue);

  /**
   * Should the client or server abort if the control is not understood?
   * Should be set to false for server controls used in abandon and unbind
   * operations, since those have no server response.
   *
   * @exceptions   none
   */
  /* attribute boolean isCritical; */
  nsresult GetIsCritical(PRBool *aIsCritical);
  nsresult SetIsCritical(PRBool aIsCritical);

}

