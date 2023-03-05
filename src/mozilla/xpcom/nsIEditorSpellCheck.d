/*
 * DO NOT EDIT.  THIS FILE IS GENERATED FROM nsIEditorSpellCheck.idl
 */

module mozilla.xpcom.nsIEditorSpellCheck;


public import mozilla.xpcom.nsrootidl;

public import mozilla.xpcom.nsISupports;

public import mozilla.xpcom.nsIEditor; /* forward declaration */

public import mozilla.xpcom.nsITextServicesFilter; /* forward declaration */


/* starting interface:    nsIEditorSpellCheck */
const char[] NS_IEDITORSPELLCHECK_IID_STR = "6088a862-1229-11d9-941d-c035b2e390c6";

const nsIID NS_IEDITORSPELLCHECK_IID= 
  {0x6088a862, 0x1229, 0x11d9, 
    [ 0x94, 0x1d, 0xc0, 0x35, 0xb2, 0xe3, 0x90, 0xc6 ]};

extern(Windows)
interface nsIEditorSpellCheck : nsISupports {
  static const char[] IID_STR = NS_IEDITORSPELLCHECK_IID_STR;
  static const nsIID IID = NS_IEDITORSPELLCHECK_IID;

  /**
   * Turns on the spell checker for the given editor. enableSelectionChecking
   * set means that we only want to check the current selection in the editor,
   * (this controls the behavior of GetNextMisspelledWord). For inline
   * spellchecking, we don't care about this.
   */
  /* void InitSpellChecker (in nsIEditor editor, in boolean enableSelectionChecking); */
  nsresult InitSpellChecker(nsIEditor editor, PRBool enableSelectionChecking);

  /**
   * When interactively spell checking the document, this will return the
   * value of the next word that is misspelled. This also computes the
   * suggestions which you can get by calling GetSuggestedWord.
   *
   * @see nsISpellChecker::GetNextMisspelledWord
   */
  /* wstring GetNextMisspelledWord (); */
  nsresult GetNextMisspelledWord(PRUnichar **_retval);

  /**
   * Used to get suggestions for the last word that was checked and found to
   * be misspelled. The first call will give you the first (best) suggestion.
   * Subsequent calls will iterate through all the suggestions, allowing you
   * to build a list. When there are no more suggestions, an empty string will
   * be returned.
   *
   * @see nsISpellChecker::GetSuggestedWord
   */
  /* wstring GetSuggestedWord (); */
  nsresult GetSuggestedWord(PRUnichar **_retval);

  /**
   * Check a given word. In spite of the name, this function checks the word
   * you give it, returning true if the word is misspelled. If the word is
   * misspelled, it will compute the suggestions which you can get from
   * GetSuggestedWord().
   *
   * @see nsISpellChecker::CheckCurrentWord
   */
  /* boolean CheckCurrentWord (in wstring suggestedWord); */
  nsresult CheckCurrentWord(PRUnichar *suggestedWord, PRBool *_retval);

  /**
   * Use when modaly checking the document to replace a word.
   *
   * @see nsISpellChecker::CheckCurrentWord
   */
  /* void ReplaceWord (in wstring misspelledWord, in wstring replaceWord, in boolean allOccurrences); */
  nsresult ReplaceWord(PRUnichar *misspelledWord, PRUnichar *replaceWord, PRBool allOccurrences);

  /**
   * @see nsISpellChecker::IgnoreAll
   */
  /* void IgnoreWordAllOccurrences (in wstring word); */
  nsresult IgnoreWordAllOccurrences(PRUnichar *word);

  /**
   * Fills an internal list of words added to the personal dictionary. These
   * words can be retrieved using GetPersonalDictionaryWord()
   *
   * @see nsISpellChecker::GetPersonalDictionary
   * @see GetPersonalDictionaryWord
   */
  /* void GetPersonalDictionary (); */
  nsresult GetPersonalDictionary();

  /**
   * Used after you call GetPersonalDictionary() to iterate through all the
   * words added to the personal dictionary. Will return the empty string when
   * there are no more words.
   */
  /* wstring GetPersonalDictionaryWord (); */
  nsresult GetPersonalDictionaryWord(PRUnichar **_retval);

  /**
   * Adds a word to the current personal dictionary.
   *
   * @see nsISpellChecker::AddWordToDictionary
   */
  /* void AddWordToDictionary (in wstring word); */
  nsresult AddWordToDictionary(PRUnichar *word);

  /**
   * Removes a word from the current personal dictionary.
   *
   * @see nsISpellChecker::RemoveWordFromPersonalDictionary
   */
  /* void RemoveWordFromDictionary (in wstring word); */
  nsresult RemoveWordFromDictionary(PRUnichar *word);

  /**
   * Retrieves a list of the currently available dictionaries. The strings will
   * typically be language IDs, like "en-US".
   *
   * @see mozISpellCheckingEngine::GetDictionaryList
   */
  /* void GetDictionaryList ([array, size_is (count)] out wstring dictionaryList, out PRUint32 count); */
  nsresult GetDictionaryList(PRUnichar ***dictionaryList, PRUint32 *count);

  /**
   * @see nsISpellChecker::GetCurrentDictionary
   */
  /* wstring GetCurrentDictionary (); */
  nsresult GetCurrentDictionary(PRUnichar **_retval);

  /**
   * @see nsISpellChecker::SetCurrentDictionary
   */
  /* void SetCurrentDictionary (in wstring dictionary); */
  nsresult SetCurrentDictionary(PRUnichar *dictionary);

  /**
   * Call this to free up the spell checking object. It will also save the
   * current selected language as the default for future use.
   *
   * If you have called CanSpellCheck but not InitSpellChecker, you can still
   * call this function to clear the cached spell check object, and no
   * preference saving will happen.
   */
  /* void UninitSpellChecker (); */
  nsresult UninitSpellChecker();

  /**
   * Used to filter the content (for example, to skip blockquotes in email from
   * spellchecking. Call this before calling InitSpellChecker; calling it
   * after initialization will have no effect.
   *
   * @see nsITextServicesDocument::setFilter
   */
  /* void setFilter (in nsITextServicesFilter filter); */
  nsresult SetFilter(nsITextServicesFilter filter);

  /**
   * Like CheckCurrentWord, checks the word you give it, returning true if it's
   * misspelled. This is faster than CheckCurrentWord because it does not
   * compute any suggestions.
   *
   * Watch out: this does not clear any suggestions left over from previous
   * calls to CheckCurrentWord, so there may be suggestions, but they will be
   * invalid.
   */
  /* boolean CheckCurrentWordNoSuggest (in wstring suggestedWord); */
  nsresult CheckCurrentWordNoSuggest(PRUnichar *suggestedWord, PRBool *_retval);

}


/* starting interface:    nsIEditorSpellCheck_MOZILLA_1_8_BRANCH */
const char[] NS_IEDITORSPELLCHECK_MOZILLA_1_8_BRANCH_IID_STR = "0455cf88-c679-40c3-8e9f-ff4554ee9559";

const nsIID NS_IEDITORSPELLCHECK_MOZILLA_1_8_BRANCH_IID= 
  {0x0455cf88, 0xc679, 0x40c3, 
    [ 0x8e, 0x9f, 0xff, 0x45, 0x54, 0xee, 0x95, 0x59 ]};

/**
 * This contains enhancements made to this interface on the trunk. Here, it is
 * on a separate interface to avoid changing interfaces on the branch.
 */
extern(Windows)
interface nsIEditorSpellCheck_MOZILLA_1_8_BRANCH : nsIEditorSpellCheck {
  static const char[] IID_STR = NS_IEDITORSPELLCHECK_MOZILLA_1_8_BRANCH_IID_STR;
  static const nsIID IID = NS_IEDITORSPELLCHECK_MOZILLA_1_8_BRANCH_IID;

  /**
   * Returns true if we can enable spellchecking. If there are no available
   * dictionaries, this will return false.
   */
  /* boolean CanSpellCheck (); */
  nsresult CanSpellCheck(PRBool *_retval);

  /**
   * Call to save the currently selected dictionary as the default. The
   * function UninitSpellChecker will also do this, but that function may
   * not be called in some situations. This function allows the caller to force
   * the default right now.
   */
  /* void saveDefaultDictionary (); */
  nsresult SaveDefaultDictionary();

}

