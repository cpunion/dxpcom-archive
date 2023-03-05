/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIConsoleService.idl
 */

module mozilla.dxpcom.nsIConsoleServiceD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIConsoleService;


public import mozilla.dxpcom.nsIConsoleServiceD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nsIConsoleListener;
public import mozilla.dxpcom.nsIConsoleListenerD;
public import mozilla.xpcom.nsIConsoleMessage;
public import mozilla.dxpcom.nsIConsoleMessageD;


/* starting wrapper class:    nsIConsoleService */
class nsIConsoleServiceD : public nsISupportsD {

  static const nsIID IID = NS_ICONSOLESERVICE_IID;


  alias nsIConsoleService InnerType;

  this(nsIConsoleService intr){
    super(intr);
    this.inner = intr;
  }

  nsIConsoleService opCast() {
    return inner;
  }

  void opAssign(nsIConsoleService value) {
    inner = value;
  }

  /* void logMessage (in nsIConsoleMessage message); */
  void LogMessage(nsIConsoleMessageD message){
    nsresult __result = inner.LogMessage(message ? cast(nsIConsoleMessage)message : null);
    CheckException(__result);
  }

  /**
     * Convenience method for logging simple messages.
     */
  /* void logStringMessage (in wstring message); */
  void LogStringMessage(PRUnichar*message){
    nsresult __result = inner.LogStringMessage(message);
    CheckException(__result);
  }

  /**
     * Get an array of all the messages logged so far.  If no messages
     * are logged, this function will return a count of 0, but still
     * will allocate one word for messages, so as to show up as a
     * 0-length array when called from script.
     */
  /* void getMessageArray ([array, size_is (count)] out nsIConsoleMessage messages, out PRUint32 count); */
  void GetMessageArray(out nsIConsoleMessageD *messages, out PRUint32 count){
    nsIConsoleMessage _messages;
    nsresult __result = inner.GetMessageArray(&_messages, &count);
    CheckException(__result);
    messages = _messages ? new nsIConsoleMessageD(_messages) : null;
  }

  /**
     * To guard against stack overflows from listeners that could log
     * messages (it's easy to do this inadvertently from listeners
     * implemented in JavaScript), we don't call any listeners when
     * another error is already being logged.
     */
  /* void registerListener (in nsIConsoleListener listener); */
  void RegisterListener(nsIConsoleListenerD listener){
    nsresult __result = inner.RegisterListener(listener ? cast(nsIConsoleListener)listener : null);
    CheckException(__result);
  }

  /**
     * Each registered listener should also be unregistered.
     */
  /* void unregisterListener (in nsIConsoleListener listener); */
  void UnregisterListener(nsIConsoleListenerD listener){
    nsresult __result = inner.UnregisterListener(listener ? cast(nsIConsoleListener)listener : null);
    CheckException(__result);
  }

private:
  nsIConsoleService inner;

}


/* starting wrapper class:    nsIConsoleService_MOZILLA_1_8_BRANCH */
/**
 * Temporary interface for Gecko 1.8.1.
 *
 * @status TEMPORARY
 */
class nsIConsoleService_MOZILLA_1_8_BRANCHD : public nsIConsoleServiceD {

  static const nsIID IID = NS_ICONSOLESERVICE_MOZILLA_1_8_BRANCH_IID;


  alias nsIConsoleService_MOZILLA_1_8_BRANCH InnerType;

  this(nsIConsoleService_MOZILLA_1_8_BRANCH intr){
    super(intr);
    this.inner = intr;
  }

  nsIConsoleService_MOZILLA_1_8_BRANCH opCast() {
    return inner;
  }

  void opAssign(nsIConsoleService_MOZILLA_1_8_BRANCH value) {
    inner = value;
  }

  /**
     * Clear the message buffer (e.g. for privacy reasons).
     */
  /* void reset (); */
  void Reset(){
    nsresult __result = inner.Reset();
    CheckException(__result);
  }

private:
  nsIConsoleService_MOZILLA_1_8_BRANCH inner;

}

