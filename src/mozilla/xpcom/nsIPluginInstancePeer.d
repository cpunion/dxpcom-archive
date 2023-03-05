/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIPluginInstancePeer.idl
 */

module mozilla.xpcom.nsIPluginInstancePeer;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;
public import mozilla.xpcom.nspluginroot;

public import mozilla.xpcom.nsIOutputStream; /* forward declaration */


/* starting interface:    nsIPluginInstancePeer */
const char[] NS_IPLUGININSTANCEPEER_IID_STR = "4b7cea20-019b-11d2-815b-006008119d7a";

const nsIID NS_IPLUGININSTANCEPEER_IID= 
  {0x4b7cea20, 0x019b, 0x11d2, 
    [ 0x81, 0x5b, 0x00, 0x60, 0x08, 0x11, 0x9d, 0x7a ]};

/**
 * The nsIPluginInstancePeer interface is the set of operations implemented
 * by the browser to support a plugin instance. When a plugin instance is 
 * constructed, a nsIPluginInstancePeer is passed to its initializer 
 * representing the instantiation of the plugin on the page. 
 *
 * Other interfaces may be obtained from nsIPluginInstancePeer by calling
 * QueryInterface, e.g. nsIPluginTagInfo.
 */
extern(Windows)
interface nsIPluginInstancePeer : nsISupports {
  static const char[] IID_STR = NS_IPLUGININSTANCEPEER_IID_STR;
  static const nsIID IID = NS_IPLUGININSTANCEPEER_IID;

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
  nsresult GetValue(nsPluginInstancePeerVariable aVariable, void * aValue);

  /**
     * Returns the MIME type of the plugin instance. 
     *
     * (Corresponds to NPP_New's MIMEType argument.)
     *
   * @param aMIMEType - resulting MIME type
   * @result          - NS_OK if this operation was successful
     */
  /* readonly attribute nsMIMEType MIMEType; */
  nsresult GetMIMEType(nsMIMEType *aMIMEType);

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
  nsresult GetMode(nsPluginMode *aMode);

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
  nsresult NewStream(nsMIMEType aType, char *aTarget, nsIOutputStream *aResult);

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
  nsresult ShowStatus(char *aMessage);

  /**
     * Set the desired size of the window in which the plugin instance lives.
     *
   * @param aWidth  - new window width
   * @param aHeight - new window height
   * @result        - NS_OK if this operation was successful
     */
  /* void setWindowSize (in unsigned long aWidth, in unsigned long aHeight); */
  nsresult SetWindowSize(PRUint32 aWidth, PRUint32 aHeight);

}

