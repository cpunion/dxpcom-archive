/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICommandLine.idl
 */

module mozilla.dxpcom.nsICommandLineD;

public import mozilla.dxpcom.nsrootidlD;


public import mozilla.xpcom.nsICommandLine;


public import mozilla.dxpcom.nsICommandLineD;

public import mozilla.xpcom.nsISupports;
public import mozilla.dxpcom.nsISupportsD;

public import mozilla.xpcom.nsIFile;

public import mozilla.dxpcom.nsIFileD;

public import mozilla.xpcom.nsIURI;

public import mozilla.dxpcom.nsIURID;

public import mozilla.xpcom.nsIDOMWindow;

public import mozilla.dxpcom.nsIDOMWindowD;


/* starting wrapper class:    nsICommandLine */
/**
 * Represents the command line used to invoke a XUL application. This may be the
 * original command-line of this instance, or a command line remoted from another
 * instance of the application.
 *
 * DEFINITIONS:
 * "arguments" are any values found on the command line.
 * "flags" are switches. In normalized form they are preceded by a single dash.
 * Some flags may take "parameters", e.g. "-url <param>" or "-install-xpi <param>"
 *
 * @status UNDER_REVIEW This interface is intended to be frozen, but isn't frozen
 *                      yet. Please use with care.
 */
class nsICommandLineD : public nsISupportsD {

  static const nsIID IID = NS_ICOMMANDLINE_IID;


  alias nsICommandLine InnerType;

  this(nsICommandLine intr){
    super(intr);
    this.inner = intr;
  }

  nsICommandLine opCast() {
    return inner;
  }

  void opAssign(nsICommandLine value) {
    inner = value;
  }

  /**
   * Number of arguments in the command line. The application name is not
   * part of the command line.
   */
  /* readonly attribute long length; */
  PRInt32 Length(){
    PRInt32 value;
    nsresult __result = inner.GetLength(&value);
    CheckException(__result);
    return value;
  }

  /**
   * Get an argument from the array of command-line arguments.
   *
   * On windows, flags of the form /flag are normalized to -flag. /flag:param
   * are normalized to -flag param.
   *
   * On *nix and mac flags of the form --flag are normalized to -flag. --flag=param
   * are normalized to the form -flag param.
   *
   * @param aIndex The argument to retrieve. This index is 0-based, and does
   *               not include the application name.
   * @return       The indexth argument.
   * @throws       NS_ERROR_INVALID_ARG if aIndex is out of bounds.
   */
  /* AString getArgument (in long aIndex); */
  wchar[] GetArgument(PRInt32 aIndex){
    scope auto _retval = new AString;
    nsresult __result = inner.GetArgument(aIndex, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * Find a command-line flag.
   *
   * @param aFlag          The flag name to locate. Do not include the initial
   *                       hyphen.
   * @param aCaseSensitive Whether to do case-sensitive comparisons.
   * @return               The position of the flag in the command line.
   */
  /* long findFlag (in AString aFlag, in boolean aCaseSensitive); */
  PRInt32 FindFlag(wchar[] aFlag, PRBool aCaseSensitive){
    scope auto _aFlag = new AString(aFlag);
    PRInt32 _retval;
    nsresult __result = inner.FindFlag(cast(nsAString*)_aFlag, aCaseSensitive, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Remove arguments from the command line. This normally occurs after
   * a handler has processed the arguments.
   *
   * @param aStart  Index to begin removing.
   * @param aEnd    Index to end removing, inclusive.
   */
  /* void removeArguments (in long aStart, in long aEnd); */
  void RemoveArguments(PRInt32 aStart, PRInt32 aEnd){
    nsresult __result = inner.RemoveArguments(aStart, aEnd);
    CheckException(__result);
  }

  /**
   * A helper method which will find a flag and remove it in one step.
   *
   * @param aFlag  The flag name to find and remove.
   * @param aCaseSensitive Whether to do case-sensitive comparisons.
   * @return       Whether the flag was found.
   */
  /* boolean handleFlag (in AString aFlag, in boolean aCaseSensitive); */
  PRBool HandleFlag(wchar[] aFlag, PRBool aCaseSensitive){
    scope auto _aFlag = new AString(aFlag);
    PRBool _retval;
    nsresult __result = inner.HandleFlag(cast(nsAString*)_aFlag, aCaseSensitive, &_retval);
    CheckException(__result);
    return _retval;
  }

  /**
   * Find a flag with a parameter and remove both. This is a helper
   * method that combines "findFlag" and "removeArguments" in one step.
   *
   * @return   null (a void astring) if the flag is not found. The parameter value
   *           if found. Note that null and the empty string are not the same.
   * @throws   NS_ERROR_INVALID_ARG if the flag exists without a parameter
   *
   * @param aFlag The flag name to find and remove.
   * @param aCaseSensitive Whether to do case-sensitive flag search.
   */
  /* AString handleFlagWithParam (in AString aFlag, in boolean aCaseSensitive); */
  wchar[] HandleFlagWithParam(wchar[] aFlag, PRBool aCaseSensitive){
    scope auto _aFlag = new AString(aFlag);
    scope auto _retval = new AString;
    nsresult __result = inner.HandleFlagWithParam(cast(nsAString*)_aFlag, aCaseSensitive, cast(nsAString*)_retval);
    CheckException(__result);
    return _retval.GetString();
  }

  /**
   * The type of command line being processed.
   *
   * STATE_INITIAL_LAUNCH  is the first launch of the application instance.
   * STATE_REMOTE_AUTO     is a remote command line automatically redirected to
   *                       this instance.
   * STATE_REMOTE_EXPLICIT is a remote command line explicitly redirected to
   *                       this instance using xremote/windde/appleevents.
   */
  /* readonly attribute unsigned long state; */
  PRUint32 State(){
    PRUint32 value;
    nsresult __result = inner.GetState(&value);
    CheckException(__result);
    return value;
  }

  enum { STATE_INITIAL_LAUNCH = 0U }

  enum { STATE_REMOTE_AUTO = 1U }

  enum { STATE_REMOTE_EXPLICIT = 2U }

  /**
   * There may be a command-line handler which performs a default action if
   * there was no explicit action on the command line (open a default browser
   * window, for example). This flag allows the default action to be prevented.
   */
  /* attribute boolean preventDefault; */
  PRBool PreventDefault(){
    PRBool value;
    nsresult __result = inner.GetPreventDefault(&value);
    CheckException(__result);
    return value;
  }
  void PreventDefault(PRBool aPreventDefault){
    nsresult __result = inner.SetPreventDefault(aPreventDefault);
    CheckException(__result);
  }

  /**
   * The working directory for this command line. Use this property instead
   * of the working directory for the current process, since a redirected
   * command line may have had a different working directory.
   */
  /* readonly attribute nsIFile workingDirectory; */
  nsIFileD  WorkingDirectory(){
    nsIFile value;
    nsresult __result = inner.GetWorkingDirectory(&value);
    CheckException(__result);
    return new nsIFileD(value);
  }

  /**
   * A window to be targeted by this command line. In most cases, this will
   * be null (xremote will sometimes set this attribute).
   */
  /* readonly attribute nsIDOMWindow windowContext; */
  nsIDOMWindowD  WindowContext(){
    nsIDOMWindow value;
    nsresult __result = inner.GetWindowContext(&value);
    CheckException(__result);
    return new nsIDOMWindowD(value);
  }

  /**
   * Resolve a file-path argument into an nsIFile. This method gracefully
   * handles relative or absolute file paths, according to the working
   * directory of this command line.
   *
   * @param aArgument  The command-line argument to resolve.
   */
  /* nsIFile resolveFile (in AString aArgument); */
  nsIFileD  ResolveFile(wchar[] aArgument){
    scope auto _aArgument = new AString(aArgument);
    nsIFile _retval;
    nsresult __result = inner.ResolveFile(cast(nsAString*)_aArgument, &_retval);
    CheckException(__result);
    return new nsIFileD(_retval);
  }

  /**
   * Resolves a URI argument into a URI. This method has platform-specific
   * logic for converting an absolute URI or a relative file-path into the
   * appropriate URI object; it gracefully handles win32 C:\ paths which would
   * confuse the ioservice if passed directly.
   *
   * @param aArgument  The command-line argument to resolve.
   */
  /* nsIURI resolveURI (in AString aArgument); */
  nsIURID  ResolveURI(wchar[] aArgument){
    scope auto _aArgument = new AString(aArgument);
    nsIURI _retval;
    nsresult __result = inner.ResolveURI(cast(nsAString*)_aArgument, &_retval);
    CheckException(__result);
    return new nsIURID(_retval);
  }

private:
  nsICommandLine inner;

}

