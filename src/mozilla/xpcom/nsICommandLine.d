/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsICommandLine.idl
 */

module mozilla.xpcom.nsICommandLine;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIFile; /* forward declaration */

public import mozilla.xpcom.nsIURI; /* forward declaration */

public import mozilla.xpcom.nsIDOMWindow; /* forward declaration */


/* starting interface:    nsICommandLine */
const char[] NS_ICOMMANDLINE_IID_STR = "bc3173bd-aa46-46a0-9d25-d9867a9659b6";

const nsIID NS_ICOMMANDLINE_IID= 
  {0xbc3173bd, 0xaa46, 0x46a0, 
    [ 0x9d, 0x25, 0xd9, 0x86, 0x7a, 0x96, 0x59, 0xb6 ]};

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
extern(Windows)
interface nsICommandLine : nsISupports {
  static const char[] IID_STR = NS_ICOMMANDLINE_IID_STR;
  static const nsIID IID = NS_ICOMMANDLINE_IID;

  /**
   * Number of arguments in the command line. The application name is not
   * part of the command line.
   */
  /* readonly attribute long length; */
  nsresult GetLength(PRInt32 *aLength);

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
  nsresult GetArgument(PRInt32 aIndex, nsAString * _retval);

  /**
   * Find a command-line flag.
   *
   * @param aFlag          The flag name to locate. Do not include the initial
   *                       hyphen.
   * @param aCaseSensitive Whether to do case-sensitive comparisons.
   * @return               The position of the flag in the command line.
   */
  /* long findFlag (in AString aFlag, in boolean aCaseSensitive); */
  nsresult FindFlag(nsAString * aFlag, PRBool aCaseSensitive, PRInt32 *_retval);

  /**
   * Remove arguments from the command line. This normally occurs after
   * a handler has processed the arguments.
   *
   * @param aStart  Index to begin removing.
   * @param aEnd    Index to end removing, inclusive.
   */
  /* void removeArguments (in long aStart, in long aEnd); */
  nsresult RemoveArguments(PRInt32 aStart, PRInt32 aEnd);

  /**
   * A helper method which will find a flag and remove it in one step.
   *
   * @param aFlag  The flag name to find and remove.
   * @param aCaseSensitive Whether to do case-sensitive comparisons.
   * @return       Whether the flag was found.
   */
  /* boolean handleFlag (in AString aFlag, in boolean aCaseSensitive); */
  nsresult HandleFlag(nsAString * aFlag, PRBool aCaseSensitive, PRBool *_retval);

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
  nsresult HandleFlagWithParam(nsAString * aFlag, PRBool aCaseSensitive, nsAString * _retval);

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
  nsresult GetState(PRUint32 *aState);

  enum { STATE_INITIAL_LAUNCH = 0U };

  enum { STATE_REMOTE_AUTO = 1U };

  enum { STATE_REMOTE_EXPLICIT = 2U };

  /**
   * There may be a command-line handler which performs a default action if
   * there was no explicit action on the command line (open a default browser
   * window, for example). This flag allows the default action to be prevented.
   */
  /* attribute boolean preventDefault; */
  nsresult GetPreventDefault(PRBool *aPreventDefault);
  nsresult SetPreventDefault(PRBool aPreventDefault);

  /**
   * The working directory for this command line. Use this property instead
   * of the working directory for the current process, since a redirected
   * command line may have had a different working directory.
   */
  /* readonly attribute nsIFile workingDirectory; */
  nsresult GetWorkingDirectory(nsIFile  *aWorkingDirectory);

  /**
   * A window to be targeted by this command line. In most cases, this will
   * be null (xremote will sometimes set this attribute).
   */
  /* readonly attribute nsIDOMWindow windowContext; */
  nsresult GetWindowContext(nsIDOMWindow  *aWindowContext);

  /**
   * Resolve a file-path argument into an nsIFile. This method gracefully
   * handles relative or absolute file paths, according to the working
   * directory of this command line.
   *
   * @param aArgument  The command-line argument to resolve.
   */
  /* nsIFile resolveFile (in AString aArgument); */
  nsresult ResolveFile(nsAString * aArgument, nsIFile *_retval);

  /**
   * Resolves a URI argument into a URI. This method has platform-specific
   * logic for converting an absolute URI or a relative file-path into the
   * appropriate URI object; it gracefully handles win32 C:\ paths which would
   * confuse the ioservice if passed directly.
   *
   * @param aArgument  The command-line argument to resolve.
   */
  /* nsIURI resolveURI (in AString aArgument); */
  nsresult ResolveURI(nsAString * aArgument, nsIURI *_retval);

}

