/***********************************************************************\
*                               cderr.d                                 *
*                                                                       *
*                       Windows API header module                       *
*                                                                       *
*                 Translated from MinGW Windows headers                 *
*                                                                       *
*                       Placed into public domain                       *
\***********************************************************************/
module win32.cderr;

enum {
	CDERR_DIALOGFAILURE    = 0xFFFF,
	CDERR_GENERALCODES     = 0x0000,
	CDERR_STRUCTSIZE,
	CDERR_INITIALIZATION,
	CDERR_NOTEMPLATE,
	CDERR_NOHINSTANCE,
	CDERR_LOADSTRFAILURE,
	CDERR_FINDRESFAILURE,
	CDERR_LOADRESFAILURE,
	CDERR_LOCKRESFAILURE,
	CDERR_MEMALLOCFAILURE,
	CDERR_MEMLOCKFAILURE,
	CDERR_NOHOOK,
	CDERR_REGISTERMSGFAIL,
	PDERR_PRINTERCODES     = 0x1000,
	PDERR_SETUPFAILURE,
	PDERR_PARSEFAILURE,
	PDERR_RETDEFFAILURE,
	PDERR_LOADDRVFAILURE,
	PDERR_GETDEVMODEFAIL,
	PDERR_INITFAILURE,
	PDERR_NODEVICES,
	PDERR_NODEFAULTPRN,
	PDERR_DNDMMISMATCH,
	PDERR_CREATEICFAILURE,
	PDERR_PRINTERNOTFOUND,
	PDERR_DEFAULTDIFFERENT,
	CFERR_CHOOSEFONTCODES  = 0x2000,
	CFERR_NOFONTS,
	CFERR_MAXLESSTHANMIN,
	FNERR_FILENAMECODES    = 0x3000,
	FNERR_SUBCLASSFAILURE,
	FNERR_INVALIDFILENAME,
	FNERR_BUFFERTOOSMALL,
	FRERR_FINDREPLACECODES = 0x4000,
	FRERR_BUFFERLENGTHZERO,
	CCERR_CHOOSECOLORCODES = 0x5000
}
