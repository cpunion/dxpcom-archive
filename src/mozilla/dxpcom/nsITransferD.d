/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITransfer.idl
 */

module mozilla.dxpcom.nsITransferD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsITransfer;


public import mozilla.dxpcom.nsITransferD;

public import mozilla.xpcom.nsIWebProgressListener2;
public import mozilla.dxpcom.nsIWebProgressListener2D;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsICancelable;

public import mozilla.dxpcom.nsICancelableD;

public import mozilla.xpcom.nsIMIMEInfo;

public import mozilla.dxpcom.nsIMIMEInfoD;

public import mozilla.xpcom.nsILocalFile;

public import mozilla.dxpcom.nsILocalFileD;


/* starting wrapper class:    nsITransfer */
class nsITransferD : public nsIWebProgressListener2D {

  static const nsIID IID = NS_ITRANSFER_IID;


  alias nsITransfer InnerType;

  this(nsITransfer intr){
    super(intr);
    this.inner = intr;
  }

  nsITransfer opCast() {
    return inner;
  }

  void opAssign(nsITransfer value) {
    inner = value;
  }

  /**
     * Initializes the transfer with certain properties.  This function must
     * be called prior to accessing any properties on this interface.
     *
     * @param aSource The source URI of the transfer. Must not be null.
     *
     * @param aTarget The target URI of the transfer. Must not be null.
     *
     * @param aDisplayName The user-readable description of the transfer.
     *                     Can be empty.
     *
     * @param aMIMEInfo The MIME info associated with the target,
     *                  including MIME type and helper app when appropriate.
     *                  This parameter is optional.
     *
     * @param startTime Time when the download started (ie, when the first
     *                  response from the server was received)
     *                  XXX presumably wbp and exthandler do this differently
     *
     * @param aTempFile The location of a temporary file; i.e. a file in which
     *                  the received data will be stored, but which is not
     *                  equal to the target file. (will be moved to the real
     *                  target by the caller, when the download is finished)
     *                  May be null.
     *
     * @param aCancelable An object that can be used to abort the download.
     *                    Must not be null.
     *                    Implementations are expected to hold a strong
     *                    reference to this object until the download is
     *                    finished, at which point they should release the
     *                    reference.
     */
  /* void init (in nsIURI aSource, in nsIURI aTarget, in AString aDisplayName, in nsIMIMEInfo aMIMEInfo, in PRTime startTime, in nsILocalFile aTempFile, in nsICancelable aCancelable); */
  void Init(nsIURID aSource, nsIURID aTarget, wchar[] aDisplayName, nsIMIMEInfoD aMIMEInfo, PRTime startTime, nsILocalFileD aTempFile, nsICancelableD aCancelable){
    scope auto _aDisplayName = new AString(aDisplayName);
    nsresult __result = inner.Init(aSource ? cast(nsIURI)aSource : null, aTarget ? cast(nsIURI)aTarget : null, cast(nsAString*)_aDisplayName, aMIMEInfo ? cast(nsIMIMEInfo)aMIMEInfo : null, startTime, aTempFile ? cast(nsILocalFile)aTempFile : null, aCancelable ? cast(nsICancelable)aCancelable : null);
    CheckException(__result);
  }

private:
  nsITransfer inner;

}

