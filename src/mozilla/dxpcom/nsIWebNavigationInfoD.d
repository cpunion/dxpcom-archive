/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIWebNavigationInfo.idl
 */

module mozilla.dxpcom.nsIWebNavigationInfoD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsIWebNavigationInfo;


public import mozilla.dxpcom.nsIWebNavigationInfoD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIWebNavigation;

public import mozilla.dxpcom.nsIWebNavigationD;


/* starting wrapper class:    nsIWebNavigationInfo */
/**
 * The nsIWebNavigationInfo interface exposes a way to get information
 * on the capabilities of Gecko webnavigation objects.
 *
 * @status UNDER_REVIEW
 */
class nsIWebNavigationInfoD : public nsISupportsD {

  static const nsIID IID = NS_IWEBNAVIGATIONINFO_IID;


  alias nsIWebNavigationInfo InnerType;

  this(nsIWebNavigationInfo intr){
    super(intr);
    this.inner = intr;
  }

  nsIWebNavigationInfo opCast() {
    return inner;
  }

  void opAssign(nsIWebNavigationInfo value) {
    inner = value;
  }

  /**
   * Returned by isTypeSupported to indicate lack of support for a type.
   * @note this is guaranteed not to change, so that boolean tests can be done
   * on the return value if isTypeSupported to detect whether a type is
   * supported at all.
   */
  enum { UNSUPPORTED = 0U }

  /**
   * Returned by isTypeSupported to indicate that a type is supported as an
   * image.
   */
  enum { IMAGE = 1U }

  /**
   * Returned by isTypeSupported to indicate that a type is supported via an
   * NPAPI ("Netscape 4 API") plug-in.  This is not the value returned for
   * "XPCOM plug-ins".
   */
  enum { PLUGIN = 2U }

  /**
   * @note Other return types may be added here in the future as they become
   * relevant.
   */
/**
   * Returned by isTypeSupported to indicate that a type is supported via some
   * other means.
   */
  enum { OTHER = 32768U }

  /**
   * Query whether aType is supported.
   * @param aType the MIME type in question.
   * @param aWebNav the nsIWebNavigation object for which the request
   *        is being made.  This is allowed to be null.  If it is non-null,
   *        the return value of this method may depend on the exact state of
   *        aWebNav and the values set through nsIWebBrowserSetup; otherwise
   *        the method will assume that the caller is interested in information
   *        about nsIWebNavigation objects in their default state.
   * @return an enum value indicating whether and how aType is supported.
   * @note This method may rescan plugins to ensure that they're properly
   *       registered for the types they support.
   */
  /* unsigned long isTypeSupported (in ACString aType, in nsIWebNavigation aWebNav); */
  PRUint32 IsTypeSupported(char[] aType, nsIWebNavigationD aWebNav){
    scope auto _aType = new ACString(aType);
    PRUint32 _retval;
    nsresult __result = inner.IsTypeSupported(cast(nsACString*)_aType, aWebNav ? cast(nsIWebNavigation)aWebNav : null, &_retval);
    CheckException(__result);
    return _retval;
  }

private:
  nsIWebNavigationInfo inner;

}

