/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIResumableChannel.idl
 */

module mozilla.xpcom.nsIResumableChannel;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIStreamListener; /* forward declaration */


/* starting interface:    nsIResumableChannel */
const char[] NS_IRESUMABLECHANNEL_IID_STR = "4ad136fa-83af-4a22-a76e-503642c0f4a8";

const nsIID NS_IRESUMABLECHANNEL_IID= 
  {0x4ad136fa, 0x83af, 0x4a22, 
    [ 0xa7, 0x6e, 0x50, 0x36, 0x42, 0xc0, 0xf4, 0xa8 ]};

extern(Windows)
interface nsIResumableChannel : nsISupports {
  static const char[] IID_STR = NS_IRESUMABLECHANNEL_IID_STR;
  static const nsIID IID = NS_IRESUMABLECHANNEL_IID;

  /**
     * Prepare this channel for resuming. The request will not start until
     * asyncOpen or open is called. Calling resumeAt after open or asyncOpen
     * has been called has undefined behaviour.
     *
     * @param startPos the starting offset, in bytes, to use to download
     * @param entityID information about the file, to match before obtaining
     *  the file. Pass an empty string to use anything.
     *
     * During OnStartRequest, this channel will have a status of
     *  NS_ERROR_NOT_RESUMABLE if the file cannot be resumed, eg because the
     *  server doesn't support this. This error may occur even if startPos
     *  is 0, so that the front end can warn the user.
     * Similarly, the status of this channel during OnStartRequest may be
     *  NS_ERROR_ENTITY_CHANGED, which indicates that the entity has changed,
     *  as indicated by a changed entityID.
     * In both of these cases, no OnDataAvailable will be called, and
     *  OnStopRequest will immediately follow with the same status code.
     */
  /* void resumeAt (in unsigned long long startPos, in ACString entityID); */
  nsresult ResumeAt(PRUint64 startPos, nsACString * entityID);

  /**
     * The entity id for this URI. Available after OnStartRequest.
     * @throw NS_ERROR_NOT_RESUMABLE if this load is not resumable.
     */
  /* readonly attribute ACString entityID; */
  nsresult GetEntityID(nsACString * aEntityID);

}

