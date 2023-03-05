/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsISOAPAttachments.idl
 */

module mozilla.dxpcom.nsISOAPAttachmentsD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsISOAPAttachments;


public import mozilla.dxpcom.nsISOAPAttachmentsD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsISOAPAttachments */
/**
 * This interface permits attachment of SOAP attachments.
 */
class nsISOAPAttachmentsD : public nsISupportsD {

  static const nsIID IID = NS_ISOAPATTACHMENTS_IID;


  alias nsISOAPAttachments InnerType;

  this(nsISOAPAttachments intr){
    super(intr);
    this.inner = intr;
  }

  nsISOAPAttachments opCast() {
    return inner;
  }

  void opAssign(nsISOAPAttachments value) {
    inner = value;
  }

  /**
   * Get the attachment associated with a particular identifier.
   *
   * @param aIdentifier The identifier of the attachment to be accessed.
   *
   * Appropriate return(s) must be identified.
   */
  /* void getAttachment (in AString aIdentifier); */
  void GetAttachment(wchar[] aIdentifier){
    scope auto _aIdentifier = new AString(aIdentifier);
    nsresult __result = inner.GetAttachment(cast(nsAString*)_aIdentifier);
    CheckException(__result);
  }

  /**
   * Attach an attachment to the message.
   *
   * Appropriate argument(s) must be identified.
   *
   * @return The identifier of the attachment, to be referenced in SOAP encoding
   */
  /* AString attach (); */
  wchar[] Attach(){
    scope auto _retval = new AString;
    nsresult __result = inner.Attach(cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsISOAPAttachments inner;

}

