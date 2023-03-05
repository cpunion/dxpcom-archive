/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsITransfer.idl
 */

module mozilla.xpcom.nsITransfer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsIWebProgressListener2;

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsICancelable; /* forward declaration */

public import mozilla.xpcom.nsIMIMEInfo; /* forward declaration */

public import mozilla.xpcom.nsILocalFile; /* forward declaration */


/* starting interface:    nsITransfer */
const char[] NS_ITRANSFER_IID_STR = "23c51569-e9a1-4a92-adeb-3723db82ef7c";

const nsIID NS_ITRANSFER_IID= 
  {0x23c51569, 0xe9a1, 0x4a92, 
    [ 0xad, 0xeb, 0x37, 0x23, 0xdb, 0x82, 0xef, 0x7c ]};

extern(Windows)
interface nsITransfer : nsIWebProgressListener2 {
  static const char[] IID_STR = NS_ITRANSFER_IID_STR;
  static const nsIID IID = NS_ITRANSFER_IID;

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
  nsresult Init(nsIURI aSource, nsIURI aTarget, nsAString * aDisplayName, nsIMIMEInfo aMIMEInfo, PRTime startTime, nsILocalFile aTempFile, nsICancelable aCancelable);

}

