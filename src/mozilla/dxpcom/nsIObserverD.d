/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIObserver.idl
 */

module mozilla.dxpcom.nsIObserverD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIObserver;


public import mozilla.dxpcom.nsIObserverD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIObserver */
/**
 * This interface is implemented by an object that wants
 * to observe an event corresponding to a topic.
 *
 * @status FROZEN
 */
class nsIObserverD : public nsISupportsD {

  static const nsIID IID = NS_IOBSERVER_IID;


  alias nsIObserver InnerType;

  this(nsIObserver intr){
    super(intr);
    this.inner = intr;
  }

  nsIObserver opCast() {
    return inner;
  }

  void opAssign(nsIObserver value) {
    inner = value;
  }

  /**
    * Observe will be called when there is a notification for the
    * topic |aTopic|.  This assumes that the object implementing
    * this interface has been registered with an observer service
    * such as the nsIObserverService. 
    *
    * If you expect multiple topics/subjects, the impl is 
    * responsible for filtering.
    *
    * You should not modify, add, remove, or enumerate 
    * notifications in the implemention of observe. 
    *
    * @param aSubject : Notification specific interface pointer.
    * @param aTopic   : The notification topic or subject.
    * @param aData    : Notification specific wide string.
    *                    subject event.
    */
  /* void observe (in nsISupports aSubject, in string aTopic, in wstring aData); */
  void Observe(nsISupportsD aSubject, char*aTopic, PRUnichar*aData){
    nsresult __result = inner.Observe(aSubject ? cast(nsISupports)aSubject : null, aTopic, aData);
    CheckException(__result);
  }

private:
  nsIObserver inner;

}

