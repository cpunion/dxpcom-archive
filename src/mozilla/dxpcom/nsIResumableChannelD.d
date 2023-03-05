/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIResumableChannel.idl
 */

module mozilla.dxpcom.nsIResumableChannelD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIResumableChannel;


public import mozilla.dxpcom.nsIResumableChannelD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIStreamListener;

public import mozilla.dxpcom.nsIStreamListenerD;


/* starting wrapper class:    nsIResumableChannel */
class nsIResumableChannelD : public nsISupportsD {

  static const nsIID IID = NS_IRESUMABLECHANNEL_IID;


  alias nsIResumableChannel InnerType;

  this(nsIResumableChannel intr){
    super(intr);
    this.inner = intr;
  }

  nsIResumableChannel opCast() {
    return inner;
  }

  void opAssign(nsIResumableChannel value) {
    inner = value;
  }

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
  void ResumeAt(PRUint64 startPos, char[] entityID){
    scope auto _entityID = new ACString(entityID);
    nsresult __result = inner.ResumeAt(startPos, cast(nsACString*)_entityID);
    CheckException(__result);
  }

  /**
     * The entity id for this URI. Available after OnStartRequest.
     * @throw NS_ERROR_NOT_RESUMABLE if this load is not resumable.
     */
  /* readonly attribute ACString entityID; */
  char[] EntityID(){
    scope auto value = new ACString();
    nsresult __result = inner.GetEntityID(cast(nsACString*)value);
    CheckException(__result);
    return value.GetString();
  }

private:
  nsIResumableChannel inner;

}

