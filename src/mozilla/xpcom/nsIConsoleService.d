/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIConsoleService.idl
 */

module mozilla.xpcom.nsIConsoleService;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nsIConsoleListener;
public import mozilla.xpcom.nsIConsoleMessage;


/* starting interface:    nsIConsoleService */
const char[] NS_ICONSOLESERVICE_IID_STR = "a647f184-1dd1-11b2-a9d1-8537b201161b";

const nsIID NS_ICONSOLESERVICE_IID= 
  {0xa647f184, 0x1dd1, 0x11b2, 
    [ 0xa9, 0xd1, 0x85, 0x37, 0xb2, 0x01, 0x16, 0x1b ]};

extern(Windows)
interface nsIConsoleService : nsISupports {
  static const char[] IID_STR = NS_ICONSOLESERVICE_IID_STR;
  static const nsIID IID = NS_ICONSOLESERVICE_IID;

  /* void logMessage (in nsIConsoleMessage message); */
  nsresult LogMessage(nsIConsoleMessage message);

  /**
     * Convenience method for logging simple messages.
     */
  /* void logStringMessage (in wstring message); */
  nsresult LogStringMessage(PRUnichar *message);

  /**
     * Get an array of all the messages logged so far.  If no messages
     * are logged, this function will return a count of 0, but still
     * will allocate one word for messages, so as to show up as a
     * 0-length array when called from script.
     */
  /* void getMessageArray ([array, size_is (count)] out nsIConsoleMessage messages, out PRUint32 count); */
  nsresult GetMessageArray(nsIConsoleMessage **messages, PRUint32 *count);

  /**
     * To guard against stack overflows from listeners that could log
     * messages (it's easy to do this inadvertently from listeners
     * implemented in JavaScript), we don't call any listeners when
     * another error is already being logged.
     */
  /* void registerListener (in nsIConsoleListener listener); */
  nsresult RegisterListener(nsIConsoleListener listener);

  /**
     * Each registered listener should also be unregistered.
     */
  /* void unregisterListener (in nsIConsoleListener listener); */
  nsresult UnregisterListener(nsIConsoleListener listener);

}


/* starting interface:    nsIConsoleService_MOZILLA_1_8_BRANCH */
const char[] NS_ICONSOLESERVICE_MOZILLA_1_8_BRANCH_IID_STR = "3c3f3e30-ebd5-11da-8ad9-0800200c9a66";

const nsIID NS_ICONSOLESERVICE_MOZILLA_1_8_BRANCH_IID= 
  {0x3c3f3e30, 0xebd5, 0x11da, 
    [ 0x8a, 0xd9, 0x08, 0x00, 0x20, 0x0c, 0x9a, 0x66 ]};

/**
 * Temporary interface for Gecko 1.8.1.
 *
 * @status TEMPORARY
 */
extern(Windows)
interface nsIConsoleService_MOZILLA_1_8_BRANCH : nsIConsoleService {
  static const char[] IID_STR = NS_ICONSOLESERVICE_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = NS_ICONSOLESERVICE_MOZILLA_1_8_BRANCH_IID;

  /**
     * Clear the message buffer (e.g. for privacy reasons).
     */
  /* void reset (); */
  nsresult Reset();

}

