/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIObserverService.idl
 */

module mozilla.xpcom.nsIObserverService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIObserver; /* forward declaration */

public import mozilla.xpcom.nsISimpleEnumerator; /* forward declaration */


/* starting interface:    nsIObserverService */
const char[] NS_IOBSERVERSERVICE_IID_STR = "d07f5192-e3d1-11d2-8acd-00105a1b8860";

const nsIID NS_IOBSERVERSERVICE_IID= 
  {0xd07f5192, 0xe3d1, 0x11d2, 
    [ 0x8a, 0xcd, 0x00, 0x10, 0x5a, 0x1b, 0x88, 0x60 ]};

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
extern(Windows)
interface nsIObserverService : nsISupports {
  static const char[] IID_STR = NS_IOBSERVERSERVICE_IID_STR;
  static const nsIID IID = NS_IOBSERVERSERVICE_IID;

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
  nsresult AddObserver(nsIObserver anObserver, char *aTopic, PRBool ownsWeak);

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
  nsresult RemoveObserver(nsIObserver anObserver, char *aTopic);

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
  nsresult NotifyObservers(nsISupports aSubject, char *aTopic, PRUnichar *someData);

  /**
     * enumerateObservers
     *
     * Returns an enumeration of all registered listeners.
     *
     * @param aTopic   : The notification topic or subject.
     */
  /* nsISimpleEnumerator enumerateObservers (in string aTopic); */
  nsresult EnumerateObservers(char *aTopic, nsISimpleEnumerator *_retval);

}

