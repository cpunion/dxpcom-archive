/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsILDAPAutoCompFormatter.idl
 */

module mozilla.dxpcom.nsILDAPAutoCompFormatterD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsILDAPAutoCompFormatter;


public import mozilla.dxpcom.nsILDAPAutoCompFormatterD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIXPConnect;
public import mozilla.dxpcom.nsIXPConnectD;

public import mozilla.xpcom.nsIAutoCompleteResults;

import mozilla.dxpcom.nsIAutoCompleteResultsD;

public import mozilla.xpcom.nsILDAPMessage;

public import mozilla.dxpcom.nsILDAPMessageD;


/* starting wrapper class:    nsILDAPAutoCompFormatter */
/**
 * An interface to allow different users of nsILDAPAutoCompleteSession to 
 * format each nsILDAPMessage into an nsIAutoCompleteItem as it sees fit.
 */
class nsILDAPAutoCompFormatterD : public nsISupportsD {

  static const nsIID IID = NS_ILDAPAUTOCOMPFORMATTER_IID;


  alias nsILDAPAutoCompFormatter InnerType;

  this(nsILDAPAutoCompFormatter intr){
    super(intr);
    this.inner = intr;
  }

  nsILDAPAutoCompFormatter opCast() {
    return inner;
  }

  void opAssign(nsILDAPAutoCompFormatter value) {
    inner = value;
  }

  /**
     * Returns an nsIAutoCompleteItem generated from the data in 
     * the given nsILDAPMessage.
     *
     * @param aMessage  message to be formatted
     * @return          resulting nsIAutoCompleteItem
     */
  /* nsIAutoCompleteItem format (in nsILDAPMessage aMessage); */
  nsIAutoCompleteItemD  Format(nsILDAPMessageD aMessage){
    nsIAutoCompleteItem _retval;
    nsresult __result = inner.Format(aMessage ? cast(nsILDAPMessage)aMessage : null, &_retval);
    CheckException(__result);
    return new nsIAutoCompleteItemD(_retval);
  }

  /**
     * Gets a list of all the LDAP attributes that should be requested
     * from the LDAP server when a lookup is done.  This avoids
     * wasting server time, bandwidth, and client time processing
     * unused attributes.
     *
     * Note that this is only required to be called by the
     * nsILDAPAutoCompleteSession implementation when the
     * nsILDAPAutoCompleteSession::formatter IDL attribute is set.  .
     * So if for some reason, the LDAP attributes to be returned by
     * searches has to change (eg because the user changed a
     * preference), the nsILDAPAutoCompleteSession::formatter IDL
     * attribute should be re-set to the same object to force a new
     * getAttributes() call.
     * 
     * @param aCount    number of attributes in the array
     * @param aAttrs    list of LDAP attributes to request
     */
  /* void getAttributes (out unsigned long aCount, [array, size_is (aCount), retval] out string aAttrs); */
  void GetAttributes(out PRUint32 aCount, out char**aAttrs){
    nsresult __result = inner.GetAttributes(&aCount, &aAttrs);
    CheckException(__result);
  }

  /** 
     * This method formats an error condition into an nsIAutoCompleteItem
     * for display to the user.  Specifically, the state that the session
     * was in when the error occured (aState) is formatted into a general
     * error message which is put in the value attribute of the item,
     * and the specific error (aErrorCode) is formatted into another message
     * which is put in an nsISupportsString in the param attribute of the
     * item.
     *
     * @param aState        state of autocomplete session when error occurred
     * @param aErrorCode    specific error encountered
     *
     * @return              newly generated item
     */
  /* nsIAutoCompleteItem formatException (in long aState, in nsresult aErrorCode); */
  nsIAutoCompleteItemD  FormatException(PRInt32 aState, nsresult aErrorCode){
    nsIAutoCompleteItem _retval;
    nsresult __result = inner.FormatException(aState, aErrorCode, &_retval);
    CheckException(__result);
    return new nsIAutoCompleteItemD(_retval);
  }

  /**
     *  Possible states that can be passed in aState to formatException
     */
  enum { STATE_UNBOUND = 0 }

  enum { STATE_INITIALIZING = 1 }

  enum { STATE_BINDING = 2 }

  enum { STATE_BOUND = 3 }

  enum { STATE_SEARCHING = 4 }

private:
  nsILDAPAutoCompFormatter inner;

}

