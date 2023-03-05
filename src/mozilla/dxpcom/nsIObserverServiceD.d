/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIObserverService.idl
 */

module mozilla.dxpcom.nsIObserverServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIObserverService;


public import mozilla.dxpcom.nsIObserverServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIObserver;

public import mozilla.dxpcom.nsIObserverD;

public import mozilla.xpcom.nsISimpleEnumerator;

public import mozilla.dxpcom.nsISimpleEnumeratorD;


/* starting wrapper class:    nsIObserverService */
/**
 * nsIObserverService
 * 
 * Service allows a client listener (nsIObserver) to register and unregister for 
 * notifications of specific string referenced topic. Service also provides a 
 * way to notify registered listeners and a way to enumerate registered client 
 * listeners.
 * 
 * @status FROZEN
 */
class nsIObserverServiceD : public nsISupportsD {

  static const nsIID IID = NS_IOBSERVERSERVICE_IID;


  alias nsIObserverService InnerType;

  this(nsIObserverService intr){
    super(intr);
    this.inner = intr;
  }

  nsIObserverService opCast() {
    return inner;
  }

  void opAssign(nsIObserverService value) {
    inner = value;
  }

  /**
     * AddObserver
     *
     * Registers a given listener for a notifications regarding the specified
     * topic.
     *
     * @param anObserve : The interface pointer which will receive notifications.
     * @param aTopic    : The notification topic or subject.
     * @param ownsWeak  : If set to false, the nsIObserverService will hold a 
     *                    strong reference to |anObserver|.  If set to true and 
     *                    |anObserver| supports the nsIWeakReference interface,
     *                    a weak reference will be held.  Otherwise an error will be
     *                    returned.
     */
  /* void addObserver (in nsIObserver anObserver, in string aTopic, in boolean ownsWeak); */
  void AddObserver(nsIObserverD anObserver, char*aTopic, PRBool ownsWeak){
    nsresult __result = inner.AddObserver(anObserver ? cast(nsIObserver)anObserver : null, aTopic, ownsWeak);
    CheckException(__result);
  }

  /**
     * removeObserver
     *
     * Unregisters a given listener from notifications regarding the specified
     * topic.
     *
     * @param anObserver : The interface pointer which will stop recieving
     *                     notifications.
     * @param aTopic     : The notification topic or subject.
     */
  /* void removeObserver (in nsIObserver anObserver, in string aTopic); */
  void RemoveObserver(nsIObserverD anObserver, char*aTopic){
    nsresult __result = inner.RemoveObserver(anObserver ? cast(nsIObserver)anObserver : null, aTopic);
    CheckException(__result);
  }

  /**
     * notifyObservers
     *
     * Notifies all registered listeners of the given topic.
     *
     * @param aSubject : Notification specific interface pointer.
     * @param aTopic   : The notification topic or subject.
     * @param someData : Notification specific wide string.
     */
  /* void notifyObservers (in nsISupports aSubject, in string aTopic, in wstring someData); */
  void NotifyObservers(nsISupportsD aSubject, char*aTopic, PRUnichar*someData){
    nsresult __result = inner.NotifyObservers(aSubject ? cast(nsISupports)aSubject : null, aTopic, someData);
    CheckException(__result);
  }

  /**
     * enumerateObservers
     *
     * Returns an enumeration of all registered listeners.
     *
     * @param aTopic   : The notification topic or subject.
     */
  /* nsISimpleEnumerator enumerateObservers (in string aTopic); */
  nsISimpleEnumeratorD  EnumerateObservers(char*aTopic){
    nsISimpleEnumerator _retval;
    nsresult __result = inner.EnumerateObservers(aTopic, &_retval);
    CheckException(__result);
    return new nsISimpleEnumeratorD(_retval);
  }

private:
  nsIObserverService inner;

}

