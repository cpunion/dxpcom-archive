/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginInstancePeer.idl
 */

module mozilla.dxpcom.nsIPluginInstancePeerD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIPluginInstancePeer;


public import mozilla.dxpcom.nsIPluginInstancePeerD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;
public import mozilla.xpcom.nspluginroot;
public import mozilla.dxpcom.nspluginrootD;

public import mozilla.xpcom.nsIOutputStream;

public import mozilla.dxpcom.nsIOutputStreamD;


/* starting wrapper class:    nsIPluginInstancePeer */
/**
 * The nsIPluginInstancePeer interface is the set of operations implemented
 * by the browser to support a plugin instance. When a plugin instance is 
 * constructed, a nsIPluginInstancePeer is passed to its initializer 
 * representing the instantiation of the plugin on the page. 
 *
 * Other interfaces may be obtained from nsIPluginInstancePeer by calling
 * QueryInterface, e.g. nsIPluginTagInfo.
 */
class nsIPluginInstancePeerD : public nsISupportsD {

  static const nsIID IID = NS_IPLUGININSTANCEPEER_IID;


  alias nsIPluginInstancePeer InnerType;

  this(nsIPluginInstancePeer intr){
    super(intr);
    this.inner = intr;
  }

  nsIPluginInstancePeer opCast() {
    return inner;
  }

  void opAssign(nsIPluginInstancePeer value) {
    inner = value;
  }

  /**
   * Returns the value of a variable associated with the plugin manager.
   *
   * (Corresponds to NPN_GetValue.)
   *
   * @param aVariable - the plugin manager variable to get
   * @param aValue    - the address of where to store the resulting value
   * @result          - NS_OK if this operation was successful
   */
  /* void getValue (in nsPluginInstancePeerVariable aVariable, in voidPtr aValue); */
  void GetValue(nsPluginInstancePeerVariable aVariable, void * aValue){
    nsresult __result = inner.GetValue(aVariable, aValue);
    CheckException(__result);
  }

  /**
     * Returns the MIME type of the plugin instance. 
     *
     * (Corresponds to NPP_New's MIMEType argument.)
     *
   * @param aMIMEType - resulting MIME type
   * @result          - NS_OK if this operation was successful
     */
  /* readonly attribute nsMIMEType MIMEType; */
  nsMIMEType MIMEType(){
    nsMIMEType value;
    nsresult __result = inner.GetMIMEType(&value);
    CheckException(__result);
    return value;
  }

  /**
     * Returns the mode of the plugin instance, i.e. whether the plugin is
     * embedded in the html, or full page. 
     *
     * (Corresponds to NPP_New's mode argument.)
     *
   * @param result - the resulting mode
   * @result       - NS_OK if this operation was successful
     */
  /* readonly attribute nsPluginMode mode; */
  nsPluginMode Mode(){
    nsPluginMode value;
    nsresult __result = inner.GetMode(&value);
    CheckException(__result);
    return value;
  }

  /**
     * This operation is called by the plugin instance when it wishes to send
     * a stream of data to the browser. It constructs a new output stream to which
     * the plugin may send the data. When complete, the Close and Release methods
     * should be called on the output stream.
     *
     * (Corresponds to NPN_NewStream.)
     *
   * @param aType   - MIME type of the stream to create
   * @param aTarget - the target window name to receive the data
   * @param aResult - the resulting output stream
   * @result        - NS_OK if this operation was successful
     */
  /* void newStream (in nsMIMEType aType, in string aTarget, out nsIOutputStream aResult); */
  void NewStream(nsMIMEType aType, char*aTarget, out nsIOutputStreamD aResult){
    nsIOutputStream _aResult;
    nsresult __result = inner.NewStream(aType, aTarget, &_aResult);
    CheckException(__result);
    aResult = _aResult ? new nsIOutputStreamD(_aResult) : null;
  }

  /**
     * This operation causes status information to be displayed on the window
     * associated with the plugin instance. 
     *
     * (Corresponds to NPN_Status.)
     *
   * @param aMessage - the status message to display
   * @result         - NS_OK if this operation was successful
     */
  /* void showStatus (in string aMessage); */
  void ShowStatus(char*aMessage){
    nsresult __result = inner.ShowStatus(aMessage);
    CheckException(__result);
  }

  /**
     * Set the desired size of the window in which the plugin instance lives.
     *
   * @param aWidth  - new window width
   * @param aHeight - new window height
   * @result        - NS_OK if this operation was successful
     */
  /* void setWindowSize (in unsigned long aWidth, in unsigned long aHeight); */
  void SetWindowSize(PRUint32 aWidth, PRUint32 aHeight){
    nsresult __result = inner.SetWindowSize(aWidth, aHeight);
    CheckException(__result);
  }

private:
  nsIPluginInstancePeer inner;

}

