/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebBrowserSetup.idl
 */

module mozilla.dxpcom.nsIWebBrowserSetupD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWebBrowserSetup;


public import mozilla.dxpcom.nsIWebBrowserSetupD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;


/* starting wrapper class:    nsIWebBrowserSetup */
/**
 * The nsIWebBrowserSetup interface allows certain properties of a new browser
 * object to set before the browser window is opened.
 *
 * @note Unless stated otherwise, settings are presumed to be enabled by
 *       default.
 *
 * @status FROZEN
 */
class nsIWebBrowserSetupD : public nsISupportsD {

  static const nsIID IID = NS_IWEBBROWSERSETUP_IID;


  alias nsIWebBrowserSetup InnerType;

  this(nsIWebBrowserSetup intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebBrowserSetup opCast() {
    return inner;
  }

  void opAssign(nsIWebBrowserSetup value) {
    inner = value;
  }

  /**
     * Boolean. Enables/disables plugin support for this browser.
     *
     * @see setProperty
     */
  enum { SETUP_ALLOW_PLUGINS = 1U }

  /**
     * Boolean. Enables/disables Javascript support for this browser.
     *
     * @see setProperty
     */
  enum { SETUP_ALLOW_JAVASCRIPT = 2U }

  /**
     * Boolean. Enables/disables meta redirect support for this browser.
     * Meta redirect timers will be ignored if this option is disabled.
     *
     * @see setProperty
     */
  enum { SETUP_ALLOW_META_REDIRECTS = 3U }

  /**
     * Boolean. Enables/disables subframes within the browser
     *
     * @see setProperty
     */
  enum { SETUP_ALLOW_SUBFRAMES = 4U }

  /**
     * Boolean. Enables/disables image loading for this browser
     * window. If you disable the images, load a page, then enable the images,
     * the page will *not* automatically load the images for the previously
     * loaded page. This flag controls the state of a webBrowser at load time 
     * and does not automatically re-load a page when the state is toggled. 
     * Reloading must be done by hand, or by walking through the DOM tree and 
     * re-setting the src attributes.
     *
     * @see setProperty
     */
  enum { SETUP_ALLOW_IMAGES = 5U }

  /**
     * Boolean. Enables/disables whether the document as a whole gets focus before
     * traversing the document's content, or after traversing its content.
     *
     * NOTE: this property is obsolete and now has no effect
     *
     * @see setProperty
     */
  enum { SETUP_FOCUS_DOC_BEFORE_CONTENT = 6U }

  /**
     * Boolean. Enables/disables the use of global history in the browser. Visited
     * URLs will not be recorded in the global history when it is disabled.
     *
     * @see setProperty
     */
  enum { SETUP_USE_GLOBAL_HISTORY = 256U }

  /**
     * Boolean. A value of PR_TRUE makes the browser a chrome wrapper.
     * Default is PR_FALSE.
     *
     * @since mozilla1.0
     *
     * @see setProperty
     */
  enum { SETUP_IS_CHROME_WRAPPER = 7U }

  /**
     * Sets an integer or boolean property on the new web browser object.
     * Only PR_TRUE and PR_FALSE are legal boolean values.
     *
     * @param aId The identifier of the property to be set.
     * @param aValue The value of the property.
     */
  /* void setProperty (in unsigned long aId, in unsigned long aValue); */
  void SetProperty(PRUint32 aId, PRUint32 aValue){
    nsresult __result = inner.SetProperty(aId, aValue);
    CheckException(__result);
  }

private:
  nsIWebBrowserSetup inner;

}

