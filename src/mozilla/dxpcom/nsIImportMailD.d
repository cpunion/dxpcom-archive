/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIImportMail.idl
 */

module mozilla.dxpcom.nsIImportMailD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIImportMail;


public import mozilla.dxpcom.nsIImportMailD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFileSpec;

public import mozilla.dxpcom.nsIFileSpecD;

public import mozilla.xpcom.nsISupportsArray;

public import mozilla.dxpcom.nsISupportsArrayD;

public import mozilla.xpcom.nsIImportMailboxDescriptor;

public import mozilla.dxpcom.nsIImportMailboxDescriptorD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;


/* starting wrapper class:    nsIImportMail */
class nsIImportMailD : public nsISupportsD {

  static const nsIID IID = NS_IIMPORTMAIL_IID;


  alias nsIImportMail InnerType;

  this(nsIImportMail intr){
    super(intr);
    this.inner = intr;
  }

  nsIImportMail opCast() {
    return inner;
  }

  void opAssign(nsIImportMail value) {
    inner = value;
  }

  /* void GetDefaultLocation (out nsIFileSpec location, out boolean found, out boolean userVerify); */
  void GetDefaultLocation(out nsIFileSpecD location, out PRBool found, out PRBool userVerify){
    nsIFileSpec _location;
    nsresult __result = inner.GetDefaultLocation(&_location, &found, &userVerify);
    CheckException(__result);
    location = _location ? new nsIFileSpecD(_location) : null;
  }

  /* nsISupportsArray FindMailboxes (in nsIFileSpec location); */
  nsISupportsArrayD  FindMailboxes(nsIFileSpecD location){
    nsISupportsArray _retval;
    nsresult __result = inner.FindMailboxes(location ? cast(nsIFileSpec)location : null, &_retval);
    CheckException(__result);
    return new nsISupportsArrayD(_retval);
  }

  /* void ImportMailbox (in nsIImportMailboxDescriptor source, in nsIFileSpec destination, out wstring errorLog, out wstring successLog, out boolean fatalError); */
  void ImportMailbox(nsIImportMailboxDescriptorD source, nsIFileSpecD destination, out PRUnichar*errorLog, out PRUnichar*successLog, out PRBool fatalError){
    nsresult __result = inner.ImportMailbox(source ? cast(nsIImportMailboxDescriptor)source : null, destination ? cast(nsIFileSpec)destination : null, &errorLog, &successLog, &fatalError);
    CheckException(__result);
  }

  /* unsigned long GetImportProgress (); */
  PRUint32 GetImportProgress(){
    PRUint32 _retval;
    nsresult __result = inner.GetImportProgress(&_retval);
    CheckException(__result);
    return _retval;
  }

  /* AString translateFolderName (in AString aFolderName); */
  wchar[] TranslateFolderName(wchar[] aFolderName){
    scope auto _aFolderName = new AString(aFolderName);
    scope auto _retval = new AString;
    nsresult __result = inner.TranslateFolderName(cast(nsAString*)_aFolderName, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

private:
  nsIImportMail inner;

}

