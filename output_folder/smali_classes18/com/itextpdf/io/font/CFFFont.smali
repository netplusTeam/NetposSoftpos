.class public Lcom/itextpdf/io/font/CFFFont;
.super Ljava/lang/Object;
.source "CFFFont.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/itextpdf/io/font/CFFFont$Font;,
        Lcom/itextpdf/io/font/CFFFont$MarkerItem;,
        Lcom/itextpdf/io/font/CFFFont$DictNumberItem;,
        Lcom/itextpdf/io/font/CFFFont$StringItem;,
        Lcom/itextpdf/io/font/CFFFont$UInt8Item;,
        Lcom/itextpdf/io/font/CFFFont$UInt16Item;,
        Lcom/itextpdf/io/font/CFFFont$UInt32Item;,
        Lcom/itextpdf/io/font/CFFFont$UInt24Item;,
        Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;,
        Lcom/itextpdf/io/font/CFFFont$SubrMarkerItem;,
        Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;,
        Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;,
        Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;,
        Lcom/itextpdf/io/font/CFFFont$RangeItem;,
        Lcom/itextpdf/io/font/CFFFont$OffsetItem;,
        Lcom/itextpdf/io/font/CFFFont$Item;
    }
.end annotation


# static fields
.field static final operatorNames:[Ljava/lang/String;

.field static final standardStrings:[Ljava/lang/String;


# instance fields
.field protected arg_count:I

.field protected args:[Ljava/lang/Object;

.field protected buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

.field protected fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

.field protected gsubrIndexOffset:I

.field protected gsubrOffsets:[I

.field protected key:Ljava/lang/String;

.field protected nameIndexOffset:I

.field protected nameOffsets:[I

.field nextIndexOffset:I

.field private offSize:I

.field rasFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

.field protected stringIndexOffset:I

.field protected stringOffsets:[I

.field protected topdictIndexOffset:I

.field protected topdictOffsets:[I


# direct methods
.method static constructor <clinit>()V
    .locals 71

    .line 54
    const-string/jumbo v0, "version"

    const-string v1, "Notice"

    const-string v2, "FullName"

    const-string v3, "FamilyName"

    const-string v4, "Weight"

    const-string v5, "FontBBox"

    const-string v6, "BlueValues"

    const-string v7, "OtherBlues"

    const-string v8, "FamilyBlues"

    const-string v9, "FamilyOtherBlues"

    const-string v10, "StdHW"

    const-string v11, "StdVW"

    const-string v12, "UNKNOWN_12"

    const-string v13, "UniqueID"

    const-string v14, "XUID"

    const-string v15, "charset"

    const-string v16, "Encoding"

    const-string v17, "CharStrings"

    const-string v18, "Private"

    const-string v19, "Subrs"

    const-string v20, "defaultWidthX"

    const-string v21, "nominalWidthX"

    const-string v22, "UNKNOWN_22"

    const-string v23, "UNKNOWN_23"

    const-string v24, "UNKNOWN_24"

    const-string v25, "UNKNOWN_25"

    const-string v26, "UNKNOWN_26"

    const-string v27, "UNKNOWN_27"

    const-string v28, "UNKNOWN_28"

    const-string v29, "UNKNOWN_29"

    const-string v30, "UNKNOWN_30"

    const-string v31, "UNKNOWN_31"

    const-string v32, "Copyright"

    const-string v33, "isFixedPitch"

    const-string v34, "ItalicAngle"

    const-string v35, "UnderlinePosition"

    const-string v36, "UnderlineThickness"

    const-string v37, "PaintType"

    const-string v38, "CharstringType"

    const-string v39, "FontMatrix"

    const-string v40, "StrokeWidth"

    const-string v41, "BlueScale"

    const-string v42, "BlueShift"

    const-string v43, "BlueFuzz"

    const-string v44, "StemSnapH"

    const-string v45, "StemSnapV"

    const-string v46, "ForceBold"

    const-string v47, "UNKNOWN_12_15"

    const-string v48, "UNKNOWN_12_16"

    const-string v49, "LanguageGroup"

    const-string v50, "ExpansionFactor"

    const-string v51, "initialRandomSeed"

    const-string v52, "SyntheticBase"

    const-string v53, "PostScript"

    const-string v54, "BaseFontName"

    const-string v55, "BaseFontBlend"

    const-string v56, "UNKNOWN_12_24"

    const-string v57, "UNKNOWN_12_25"

    const-string v58, "UNKNOWN_12_26"

    const-string v59, "UNKNOWN_12_27"

    const-string v60, "UNKNOWN_12_28"

    const-string v61, "UNKNOWN_12_29"

    const-string v62, "ROS"

    const-string v63, "CIDFontVersion"

    const-string v64, "CIDFontRevision"

    const-string v65, "CIDFontType"

    const-string v66, "CIDCount"

    const-string v67, "UIDBase"

    const-string v68, "FDArray"

    const-string v69, "FDSelect"

    const-string v70, "FontName"

    filled-new-array/range {v0 .. v70}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/itextpdf/io/font/CFFFont;->operatorNames:[Ljava/lang/String;

    .line 75
    const/16 v0, 0x187

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, ".notdef"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string/jumbo v2, "space"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "exclam"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string/jumbo v2, "quotedbl"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "numbersign"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "dollar"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "percent"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "ampersand"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v2, "quoteright"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "parenleft"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "parenright"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "asterisk"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "plus"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "comma"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "hyphen"

    aput-object v2, v0, v1

    const/16 v1, 0xf

    const-string v2, "period"

    aput-object v2, v0, v1

    const/16 v1, 0x10

    const-string/jumbo v2, "slash"

    aput-object v2, v0, v1

    const/16 v1, 0x11

    const-string/jumbo v2, "zero"

    aput-object v2, v0, v1

    const/16 v1, 0x12

    const-string v2, "one"

    aput-object v2, v0, v1

    const/16 v1, 0x13

    const-string/jumbo v2, "two"

    aput-object v2, v0, v1

    const/16 v1, 0x14

    const-string/jumbo v2, "three"

    aput-object v2, v0, v1

    const/16 v1, 0x15

    const-string v2, "four"

    aput-object v2, v0, v1

    const/16 v1, 0x16

    const-string v2, "five"

    aput-object v2, v0, v1

    const/16 v1, 0x17

    const-string/jumbo v2, "six"

    aput-object v2, v0, v1

    const/16 v1, 0x18

    const-string/jumbo v2, "seven"

    aput-object v2, v0, v1

    const/16 v1, 0x19

    const-string v2, "eight"

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    const-string v2, "nine"

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    const-string v2, "colon"

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    const-string/jumbo v2, "semicolon"

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    const-string v2, "less"

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    const-string v2, "equal"

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    const-string v2, "greater"

    aput-object v2, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v2, "question"

    aput-object v2, v0, v1

    const/16 v1, 0x21

    const-string v2, "at"

    aput-object v2, v0, v1

    const/16 v1, 0x22

    const-string v2, "A"

    aput-object v2, v0, v1

    const/16 v1, 0x23

    const-string v2, "B"

    aput-object v2, v0, v1

    const/16 v1, 0x24

    const-string v2, "C"

    aput-object v2, v0, v1

    const/16 v1, 0x25

    const-string v2, "D"

    aput-object v2, v0, v1

    const/16 v1, 0x26

    const-string v2, "E"

    aput-object v2, v0, v1

    const/16 v1, 0x27

    const-string v2, "F"

    aput-object v2, v0, v1

    const/16 v1, 0x28

    const-string v2, "G"

    aput-object v2, v0, v1

    const/16 v1, 0x29

    const-string v2, "H"

    aput-object v2, v0, v1

    const/16 v1, 0x2a

    const-string v2, "I"

    aput-object v2, v0, v1

    const/16 v1, 0x2b

    const-string v2, "J"

    aput-object v2, v0, v1

    const/16 v1, 0x2c

    const-string v2, "K"

    aput-object v2, v0, v1

    const/16 v1, 0x2d

    const-string v2, "L"

    aput-object v2, v0, v1

    const/16 v1, 0x2e

    const-string v2, "M"

    aput-object v2, v0, v1

    const/16 v1, 0x2f

    const-string v2, "N"

    aput-object v2, v0, v1

    const/16 v1, 0x30

    const-string v2, "O"

    aput-object v2, v0, v1

    const/16 v1, 0x31

    const-string v2, "P"

    aput-object v2, v0, v1

    const/16 v1, 0x32

    const-string v2, "Q"

    aput-object v2, v0, v1

    const/16 v1, 0x33

    const-string v2, "R"

    aput-object v2, v0, v1

    const/16 v1, 0x34

    const-string v2, "S"

    aput-object v2, v0, v1

    const/16 v1, 0x35

    const-string v2, "T"

    aput-object v2, v0, v1

    const/16 v1, 0x36

    const-string v2, "U"

    aput-object v2, v0, v1

    const/16 v1, 0x37

    const-string v2, "V"

    aput-object v2, v0, v1

    const/16 v1, 0x38

    const-string v2, "W"

    aput-object v2, v0, v1

    const/16 v1, 0x39

    const-string v2, "X"

    aput-object v2, v0, v1

    const/16 v1, 0x3a

    const-string v2, "Y"

    aput-object v2, v0, v1

    const/16 v1, 0x3b

    const-string v2, "Z"

    aput-object v2, v0, v1

    const/16 v1, 0x3c

    const-string v2, "bracketleft"

    aput-object v2, v0, v1

    const/16 v1, 0x3d

    const-string v2, "backslash"

    aput-object v2, v0, v1

    const/16 v1, 0x3e

    const-string v2, "bracketright"

    aput-object v2, v0, v1

    const/16 v1, 0x3f

    const-string v2, "asciicircum"

    aput-object v2, v0, v1

    const/16 v1, 0x40

    const-string/jumbo v2, "underscore"

    aput-object v2, v0, v1

    const/16 v1, 0x41

    const-string/jumbo v2, "quoteleft"

    aput-object v2, v0, v1

    const/16 v1, 0x42

    const-string v2, "a"

    aput-object v2, v0, v1

    const/16 v1, 0x43

    const-string v2, "b"

    aput-object v2, v0, v1

    const/16 v1, 0x44

    const-string v2, "c"

    aput-object v2, v0, v1

    const/16 v1, 0x45

    const-string v2, "d"

    aput-object v2, v0, v1

    const/16 v1, 0x46

    const-string v2, "e"

    aput-object v2, v0, v1

    const/16 v1, 0x47

    const-string v2, "f"

    aput-object v2, v0, v1

    const/16 v1, 0x48

    const-string v2, "g"

    aput-object v2, v0, v1

    const/16 v1, 0x49

    const-string v2, "h"

    aput-object v2, v0, v1

    const/16 v1, 0x4a

    const-string v2, "i"

    aput-object v2, v0, v1

    const/16 v1, 0x4b

    const-string v2, "j"

    aput-object v2, v0, v1

    const/16 v1, 0x4c

    const-string v2, "k"

    aput-object v2, v0, v1

    const/16 v1, 0x4d

    const-string v2, "l"

    aput-object v2, v0, v1

    const/16 v1, 0x4e

    const-string v2, "m"

    aput-object v2, v0, v1

    const/16 v1, 0x4f

    const-string v2, "n"

    aput-object v2, v0, v1

    const/16 v1, 0x50

    const-string v2, "o"

    aput-object v2, v0, v1

    const/16 v1, 0x51

    const-string v2, "p"

    aput-object v2, v0, v1

    const/16 v1, 0x52

    const-string/jumbo v2, "q"

    aput-object v2, v0, v1

    const/16 v1, 0x53

    const-string/jumbo v2, "r"

    aput-object v2, v0, v1

    const/16 v1, 0x54

    const-string/jumbo v2, "s"

    aput-object v2, v0, v1

    const/16 v1, 0x55

    const-string/jumbo v2, "t"

    aput-object v2, v0, v1

    const/16 v1, 0x56

    const-string/jumbo v2, "u"

    aput-object v2, v0, v1

    const/16 v1, 0x57

    const-string/jumbo v2, "v"

    aput-object v2, v0, v1

    const/16 v1, 0x58

    const-string/jumbo v2, "w"

    aput-object v2, v0, v1

    const/16 v1, 0x59

    const-string/jumbo v2, "x"

    aput-object v2, v0, v1

    const/16 v1, 0x5a

    const-string/jumbo v2, "y"

    aput-object v2, v0, v1

    const/16 v1, 0x5b

    const-string/jumbo v2, "z"

    aput-object v2, v0, v1

    const/16 v1, 0x5c

    const-string v2, "braceleft"

    aput-object v2, v0, v1

    const/16 v1, 0x5d

    const-string v2, "bar"

    aput-object v2, v0, v1

    const/16 v1, 0x5e

    const-string v2, "braceright"

    aput-object v2, v0, v1

    const/16 v1, 0x5f

    const-string v2, "asciitilde"

    aput-object v2, v0, v1

    const/16 v1, 0x60

    const-string v2, "exclamdown"

    aput-object v2, v0, v1

    const/16 v1, 0x61

    const-string v2, "cent"

    aput-object v2, v0, v1

    const/16 v1, 0x62

    const-string/jumbo v2, "sterling"

    aput-object v2, v0, v1

    const/16 v1, 0x63

    const-string v2, "fraction"

    aput-object v2, v0, v1

    const/16 v1, 0x64

    const-string/jumbo v2, "yen"

    aput-object v2, v0, v1

    const/16 v1, 0x65

    const-string v2, "florin"

    aput-object v2, v0, v1

    const/16 v1, 0x66

    const-string/jumbo v2, "section"

    aput-object v2, v0, v1

    const/16 v1, 0x67

    const-string v2, "currency"

    aput-object v2, v0, v1

    const/16 v1, 0x68

    const-string/jumbo v2, "quotesingle"

    aput-object v2, v0, v1

    const/16 v1, 0x69

    const-string/jumbo v2, "quotedblleft"

    aput-object v2, v0, v1

    const/16 v1, 0x6a

    const-string v2, "guillemotleft"

    aput-object v2, v0, v1

    const/16 v1, 0x6b

    const-string v2, "guilsinglleft"

    aput-object v2, v0, v1

    const/16 v1, 0x6c

    const-string v2, "guilsinglright"

    aput-object v2, v0, v1

    const/16 v1, 0x6d

    const-string v2, "fi"

    aput-object v2, v0, v1

    const/16 v1, 0x6e

    const-string v2, "fl"

    aput-object v2, v0, v1

    const/16 v1, 0x6f

    const-string v2, "endash"

    aput-object v2, v0, v1

    const/16 v1, 0x70

    const-string v2, "dagger"

    aput-object v2, v0, v1

    const/16 v1, 0x71

    const-string v2, "daggerdbl"

    aput-object v2, v0, v1

    const/16 v1, 0x72

    const-string v2, "periodcentered"

    aput-object v2, v0, v1

    const/16 v1, 0x73

    const-string v2, "paragraph"

    aput-object v2, v0, v1

    const/16 v1, 0x74

    const-string v2, "bullet"

    aput-object v2, v0, v1

    const/16 v1, 0x75

    const-string/jumbo v2, "quotesinglbase"

    aput-object v2, v0, v1

    const/16 v1, 0x76

    const-string/jumbo v2, "quotedblbase"

    aput-object v2, v0, v1

    const/16 v1, 0x77

    const-string/jumbo v2, "quotedblright"

    aput-object v2, v0, v1

    const/16 v1, 0x78

    const-string v2, "guillemotright"

    aput-object v2, v0, v1

    const/16 v1, 0x79

    const-string v2, "ellipsis"

    aput-object v2, v0, v1

    const/16 v1, 0x7a

    const-string v2, "perthousand"

    aput-object v2, v0, v1

    const/16 v1, 0x7b

    const-string/jumbo v2, "questiondown"

    aput-object v2, v0, v1

    const/16 v1, 0x7c

    const-string v2, "grave"

    aput-object v2, v0, v1

    const/16 v1, 0x7d

    const-string v2, "acute"

    aput-object v2, v0, v1

    const/16 v1, 0x7e

    const-string v2, "circumflex"

    aput-object v2, v0, v1

    const/16 v1, 0x7f

    const-string/jumbo v2, "tilde"

    aput-object v2, v0, v1

    const/16 v1, 0x80

    const-string v2, "macron"

    aput-object v2, v0, v1

    const/16 v1, 0x81

    const-string v2, "breve"

    aput-object v2, v0, v1

    const/16 v1, 0x82

    const-string v2, "dotaccent"

    aput-object v2, v0, v1

    const/16 v1, 0x83

    const-string v2, "dieresis"

    aput-object v2, v0, v1

    const/16 v1, 0x84

    const-string/jumbo v2, "ring"

    aput-object v2, v0, v1

    const/16 v1, 0x85

    const-string v2, "cedilla"

    aput-object v2, v0, v1

    const/16 v1, 0x86

    const-string v2, "hungarumlaut"

    aput-object v2, v0, v1

    const/16 v1, 0x87

    const-string v2, "ogonek"

    aput-object v2, v0, v1

    const/16 v1, 0x88

    const-string v2, "caron"

    aput-object v2, v0, v1

    const/16 v1, 0x89

    const-string v2, "emdash"

    aput-object v2, v0, v1

    const/16 v1, 0x8a

    const-string v2, "AE"

    aput-object v2, v0, v1

    const/16 v1, 0x8b

    const-string v2, "ordfeminine"

    aput-object v2, v0, v1

    const/16 v1, 0x8c

    const-string v2, "Lslash"

    aput-object v2, v0, v1

    const/16 v1, 0x8d

    const-string v2, "Oslash"

    aput-object v2, v0, v1

    const/16 v1, 0x8e

    const-string v2, "OE"

    aput-object v2, v0, v1

    const/16 v1, 0x8f

    const-string v2, "ordmasculine"

    aput-object v2, v0, v1

    const/16 v1, 0x90

    const-string v2, "ae"

    aput-object v2, v0, v1

    const/16 v1, 0x91

    const-string v2, "dotlessi"

    aput-object v2, v0, v1

    const/16 v1, 0x92

    const-string v2, "lslash"

    aput-object v2, v0, v1

    const/16 v1, 0x93

    const-string v2, "oslash"

    aput-object v2, v0, v1

    const/16 v1, 0x94

    const-string v2, "oe"

    aput-object v2, v0, v1

    const/16 v1, 0x95

    const-string v2, "germandbls"

    aput-object v2, v0, v1

    const/16 v1, 0x96

    const-string v2, "onesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x97

    const-string v2, "logicalnot"

    aput-object v2, v0, v1

    const/16 v1, 0x98

    const-string v2, "mu"

    aput-object v2, v0, v1

    const/16 v1, 0x99

    const-string/jumbo v2, "trademark"

    aput-object v2, v0, v1

    const/16 v1, 0x9a

    const-string v2, "Eth"

    aput-object v2, v0, v1

    const/16 v1, 0x9b

    const-string v2, "onehalf"

    aput-object v2, v0, v1

    const/16 v1, 0x9c

    const-string v2, "plusminus"

    aput-object v2, v0, v1

    const/16 v1, 0x9d

    const-string v2, "Thorn"

    aput-object v2, v0, v1

    const/16 v1, 0x9e

    const-string v2, "onequarter"

    aput-object v2, v0, v1

    const/16 v1, 0x9f

    const-string v2, "divide"

    aput-object v2, v0, v1

    const/16 v1, 0xa0

    const-string v2, "brokenbar"

    aput-object v2, v0, v1

    const/16 v1, 0xa1

    const-string v2, "degree"

    aput-object v2, v0, v1

    const/16 v1, 0xa2

    const-string/jumbo v2, "thorn"

    aput-object v2, v0, v1

    const/16 v1, 0xa3

    const-string/jumbo v2, "threequarters"

    aput-object v2, v0, v1

    const/16 v1, 0xa4

    const-string/jumbo v2, "twosuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xa5

    const-string/jumbo v2, "registered"

    aput-object v2, v0, v1

    const/16 v1, 0xa6

    const-string v2, "minus"

    aput-object v2, v0, v1

    const/16 v1, 0xa7

    const-string v2, "eth"

    aput-object v2, v0, v1

    const/16 v1, 0xa8

    const-string v2, "multiply"

    aput-object v2, v0, v1

    const/16 v1, 0xa9

    const-string/jumbo v2, "threesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xaa

    const-string v2, "copyright"

    aput-object v2, v0, v1

    const/16 v1, 0xab

    const-string v2, "Aacute"

    aput-object v2, v0, v1

    const/16 v1, 0xac

    const-string v2, "Acircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xad

    const-string v2, "Adieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xae

    const-string v2, "Agrave"

    aput-object v2, v0, v1

    const/16 v1, 0xaf

    const-string v2, "Aring"

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "Atilde"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "Ccedilla"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string v2, "Eacute"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string v2, "Ecircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "Edieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "Egrave"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "Iacute"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "Icircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "Idieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "Igrave"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "Ntilde"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "Oacute"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "Ocircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "Odieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string v2, "Ograve"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string v2, "Otilde"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "Scaron"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "Uacute"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "Ucircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "Udieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "Ugrave"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "Yacute"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "Ydieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "Zcaron"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "aacute"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "acircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "adieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "agrave"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "aring"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "atilde"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "ccedilla"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "eacute"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "ecircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "edieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "egrave"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "iacute"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "icircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "idieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "igrave"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "ntilde"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "oacute"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "ocircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "odieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "ograve"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "otilde"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string/jumbo v2, "scaron"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string/jumbo v2, "uacute"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string/jumbo v2, "ucircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string/jumbo v2, "udieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string/jumbo v2, "ugrave"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string/jumbo v2, "yacute"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string/jumbo v2, "ydieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string/jumbo v2, "zcaron"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "exclamsmall"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "Hungarumlautsmall"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "dollaroldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "dollarsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "ampersandsmall"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "Acutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "parenleftsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "parenrightsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string/jumbo v2, "twodotenleader"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "onedotenleader"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string/jumbo v2, "zerooldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "oneoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string/jumbo v2, "twooldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string/jumbo v2, "threeoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "fouroldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "fiveoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string/jumbo v2, "sixoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string/jumbo v2, "sevenoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "eightoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "nineoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string v2, "commasuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string/jumbo v2, "threequartersemdash"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string v2, "periodsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string/jumbo v2, "questionsmall"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string v2, "asuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string v2, "bsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string v2, "centsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x100

    const-string v2, "dsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x101

    const-string v2, "esuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x102

    const-string v2, "isuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x103

    const-string v2, "lsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x104

    const-string v2, "msuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x105

    const-string v2, "nsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x106

    const-string v2, "osuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x107

    const-string/jumbo v2, "rsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x108

    const-string/jumbo v2, "ssuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x109

    const-string/jumbo v2, "tsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x10a

    const-string v2, "ff"

    aput-object v2, v0, v1

    const/16 v1, 0x10b

    const-string v2, "ffi"

    aput-object v2, v0, v1

    const/16 v1, 0x10c

    const-string v2, "ffl"

    aput-object v2, v0, v1

    const/16 v1, 0x10d

    const-string v2, "parenleftinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x10e

    const-string v2, "parenrightinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x10f

    const-string v2, "Circumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x110

    const-string v2, "hyphensuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x111

    const-string v2, "Gravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x112

    const-string v2, "Asmall"

    aput-object v2, v0, v1

    const/16 v1, 0x113

    const-string v2, "Bsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x114

    const-string v2, "Csmall"

    aput-object v2, v0, v1

    const/16 v1, 0x115

    const-string v2, "Dsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x116

    const-string v2, "Esmall"

    aput-object v2, v0, v1

    const/16 v1, 0x117

    const-string v2, "Fsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x118

    const-string v2, "Gsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x119

    const-string v2, "Hsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11a

    const-string v2, "Ismall"

    aput-object v2, v0, v1

    const/16 v1, 0x11b

    const-string v2, "Jsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11c

    const-string v2, "Ksmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11d

    const-string v2, "Lsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11e

    const-string v2, "Msmall"

    aput-object v2, v0, v1

    const/16 v1, 0x11f

    const-string v2, "Nsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x120

    const-string v2, "Osmall"

    aput-object v2, v0, v1

    const/16 v1, 0x121

    const-string v2, "Psmall"

    aput-object v2, v0, v1

    const/16 v1, 0x122

    const-string v2, "Qsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x123

    const-string v2, "Rsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x124

    const-string v2, "Ssmall"

    aput-object v2, v0, v1

    const/16 v1, 0x125

    const-string v2, "Tsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x126

    const-string v2, "Usmall"

    aput-object v2, v0, v1

    const/16 v1, 0x127

    const-string v2, "Vsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x128

    const-string v2, "Wsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x129

    const-string v2, "Xsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x12a

    const-string v2, "Ysmall"

    aput-object v2, v0, v1

    const/16 v1, 0x12b

    const-string v2, "Zsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x12c

    const-string v2, "colonmonetary"

    aput-object v2, v0, v1

    const/16 v1, 0x12d

    const-string v2, "onefitted"

    aput-object v2, v0, v1

    const/16 v1, 0x12e

    const-string/jumbo v2, "rupiah"

    aput-object v2, v0, v1

    const/16 v1, 0x12f

    const-string v2, "Tildesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x130

    const-string v2, "exclamdownsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x131

    const-string v2, "centoldstyle"

    aput-object v2, v0, v1

    const/16 v1, 0x132

    const-string v2, "Lslashsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x133

    const-string v2, "Scaronsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x134

    const-string v2, "Zcaronsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x135

    const-string v2, "Dieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x136

    const-string v2, "Brevesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x137

    const-string v2, "Caronsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x138

    const-string v2, "Dotaccentsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x139

    const-string v2, "Macronsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x13a

    const-string v2, "figuredash"

    aput-object v2, v0, v1

    const/16 v1, 0x13b

    const-string v2, "hypheninferior"

    aput-object v2, v0, v1

    const/16 v1, 0x13c

    const-string v2, "Ogoneksmall"

    aput-object v2, v0, v1

    const/16 v1, 0x13d

    const-string v2, "Ringsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x13e

    const-string v2, "Cedillasmall"

    aput-object v2, v0, v1

    const/16 v1, 0x13f

    const-string/jumbo v2, "questiondownsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x140

    const-string v2, "oneeighth"

    aput-object v2, v0, v1

    const/16 v1, 0x141

    const-string/jumbo v2, "threeeighths"

    aput-object v2, v0, v1

    const/16 v1, 0x142

    const-string v2, "fiveeighths"

    aput-object v2, v0, v1

    const/16 v1, 0x143

    const-string/jumbo v2, "seveneighths"

    aput-object v2, v0, v1

    const/16 v1, 0x144

    const-string v2, "onethird"

    aput-object v2, v0, v1

    const/16 v1, 0x145

    const-string/jumbo v2, "twothirds"

    aput-object v2, v0, v1

    const/16 v1, 0x146

    const-string/jumbo v2, "zerosuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x147

    const-string v2, "foursuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x148

    const-string v2, "fivesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x149

    const-string/jumbo v2, "sixsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x14a

    const-string/jumbo v2, "sevensuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x14b

    const-string v2, "eightsuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x14c

    const-string v2, "ninesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0x14d

    const-string/jumbo v2, "zeroinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x14e

    const-string v2, "oneinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x14f

    const-string/jumbo v2, "twoinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x150

    const-string/jumbo v2, "threeinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x151

    const-string v2, "fourinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x152

    const-string v2, "fiveinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x153

    const-string/jumbo v2, "sixinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x154

    const-string/jumbo v2, "seveninferior"

    aput-object v2, v0, v1

    const/16 v1, 0x155

    const-string v2, "eightinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x156

    const-string v2, "nineinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x157

    const-string v2, "centinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x158

    const-string v2, "dollarinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x159

    const-string v2, "periodinferior"

    aput-object v2, v0, v1

    const/16 v1, 0x15a

    const-string v2, "commainferior"

    aput-object v2, v0, v1

    const/16 v1, 0x15b

    const-string v2, "Agravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x15c

    const-string v2, "Aacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x15d

    const-string v2, "Acircumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x15e

    const-string v2, "Atildesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x15f

    const-string v2, "Adieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x160

    const-string v2, "Aringsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x161

    const-string v2, "AEsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x162

    const-string v2, "Ccedillasmall"

    aput-object v2, v0, v1

    const/16 v1, 0x163

    const-string v2, "Egravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x164

    const-string v2, "Eacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x165

    const-string v2, "Ecircumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x166

    const-string v2, "Edieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x167

    const-string v2, "Igravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x168

    const-string v2, "Iacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x169

    const-string v2, "Icircumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16a

    const-string v2, "Idieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16b

    const-string v2, "Ethsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16c

    const-string v2, "Ntildesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16d

    const-string v2, "Ogravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16e

    const-string v2, "Oacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x16f

    const-string v2, "Ocircumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x170

    const-string v2, "Otildesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x171

    const-string v2, "Odieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x172

    const-string v2, "OEsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x173

    const-string v2, "Oslashsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x174

    const-string v2, "Ugravesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x175

    const-string v2, "Uacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x176

    const-string v2, "Ucircumflexsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x177

    const-string v2, "Udieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x178

    const-string v2, "Yacutesmall"

    aput-object v2, v0, v1

    const/16 v1, 0x179

    const-string v2, "Thornsmall"

    aput-object v2, v0, v1

    const/16 v1, 0x17a

    const-string v2, "Ydieresissmall"

    aput-object v2, v0, v1

    const/16 v1, 0x17b

    const-string v2, "001.000"

    aput-object v2, v0, v1

    const/16 v1, 0x17c

    const-string v2, "001.001"

    aput-object v2, v0, v1

    const/16 v1, 0x17d

    const-string v2, "001.002"

    aput-object v2, v0, v1

    const/16 v1, 0x17e

    const-string v2, "001.003"

    aput-object v2, v0, v1

    const/16 v1, 0x17f

    const-string v2, "Black"

    aput-object v2, v0, v1

    const/16 v1, 0x180

    const-string v2, "Bold"

    aput-object v2, v0, v1

    const/16 v1, 0x181

    const-string v2, "Book"

    aput-object v2, v0, v1

    const/16 v1, 0x182

    const-string v2, "Light"

    aput-object v2, v0, v1

    const/16 v1, 0x183

    const-string v2, "Medium"

    aput-object v2, v0, v1

    const/16 v1, 0x184

    const-string v2, "Regular"

    aput-object v2, v0, v1

    const/16 v1, 0x185

    const-string v2, "Roman"

    aput-object v2, v0, v1

    const/16 v1, 0x186

    const-string v2, "Semibold"

    aput-object v2, v0, v1

    sput-object v0, Lcom/itextpdf/io/font/CFFFont;->standardStrings:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>([B)V
    .locals 11
    .param p1, "cff"    # [B

    .line 1041
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 259
    const/16 v0, 0x30

    new-array v0, v0, [Ljava/lang/Object;

    iput-object v0, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    .line 260
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    .line 1039
    new-instance v1, Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-direct {v1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;-><init>()V

    iput-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->rasFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    .line 1043
    new-instance v1, Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFont;->rasFactory:Lcom/itextpdf/io/source/RandomAccessSourceFactory;

    invoke-virtual {v2, p1}, Lcom/itextpdf/io/source/RandomAccessSourceFactory;->createSource([B)Lcom/itextpdf/io/source/IRandomAccessSource;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;-><init>(Lcom/itextpdf/io/source/IRandomAccessSource;)V

    iput-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 1044
    invoke-virtual {p0, v0}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 1047
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v1

    .line 1048
    .local v1, "major":I
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v2

    .line 1052
    .local v2, "minor":I
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v3

    .line 1054
    .local v3, "hdrSize":I
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v4

    iput v4, p0, Lcom/itextpdf/io/font/CFFFont;->offSize:I

    .line 1060
    iput v3, p0, Lcom/itextpdf/io/font/CFFFont;->nameIndexOffset:I

    .line 1061
    invoke-virtual {p0, v3}, Lcom/itextpdf/io/font/CFFFont;->getIndex(I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/io/font/CFFFont;->nameOffsets:[I

    .line 1062
    array-length v5, v4

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    aget v4, v4, v5

    iput v4, p0, Lcom/itextpdf/io/font/CFFFont;->topdictIndexOffset:I

    .line 1063
    invoke-virtual {p0, v4}, Lcom/itextpdf/io/font/CFFFont;->getIndex(I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/io/font/CFFFont;->topdictOffsets:[I

    .line 1064
    array-length v5, v4

    sub-int/2addr v5, v6

    aget v4, v4, v5

    iput v4, p0, Lcom/itextpdf/io/font/CFFFont;->stringIndexOffset:I

    .line 1065
    invoke-virtual {p0, v4}, Lcom/itextpdf/io/font/CFFFont;->getIndex(I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/io/font/CFFFont;->stringOffsets:[I

    .line 1066
    array-length v5, v4

    sub-int/2addr v5, v6

    aget v4, v4, v5

    iput v4, p0, Lcom/itextpdf/io/font/CFFFont;->gsubrIndexOffset:I

    .line 1067
    invoke-virtual {p0, v4}, Lcom/itextpdf/io/font/CFFFont;->getIndex(I)[I

    move-result-object v4

    iput-object v4, p0, Lcom/itextpdf/io/font/CFFFont;->gsubrOffsets:[I

    .line 1069
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFont;->nameOffsets:[I

    array-length v4, v4

    sub-int/2addr v4, v6

    new-array v4, v4, [Lcom/itextpdf/io/font/CFFFont$Font;

    iput-object v4, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    .line 1083
    const/4 v4, 0x0

    .local v4, "j":I
    :goto_0
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->nameOffsets:[I

    array-length v5, v5

    sub-int/2addr v5, v6

    if-ge v4, v5, :cond_1

    .line 1084
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    new-instance v7, Lcom/itextpdf/io/font/CFFFont$Font;

    invoke-direct {v7, p0}, Lcom/itextpdf/io/font/CFFFont$Font;-><init>(Lcom/itextpdf/io/font/CFFFont;)V

    aput-object v7, v5, v4

    .line 1085
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->nameOffsets:[I

    aget v5, v5, v4

    invoke-virtual {p0, v5}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 1086
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v4

    const-string v7, ""

    iput-object v7, v5, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    .line 1087
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->nameOffsets:[I

    aget v5, v5, v4

    .local v5, "k":I
    :goto_1
    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFont;->nameOffsets:[I

    add-int/lit8 v8, v4, 0x1

    aget v7, v7, v8

    if-ge v5, v7, :cond_0

    .line 1088
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v8, v8, v4

    iget-object v9, v8, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v9

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v8, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    .line 1087
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1083
    .end local v5    # "k":I
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1112
    .end local v4    # "j":I
    :cond_1
    const/4 v4, 0x0

    .restart local v4    # "j":I
    :goto_2
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->topdictOffsets:[I

    array-length v7, v5

    sub-int/2addr v7, v6

    if-ge v4, v7, :cond_10

    .line 1113
    aget v5, v5, v4

    invoke-virtual {p0, v5}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 1114
    :cond_2
    :goto_3
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getPosition()I

    move-result v5

    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFont;->topdictOffsets:[I

    add-int/lit8 v8, v4, 0x1

    aget v7, v7, v8

    const-string v8, "Private"

    if-ge v5, v7, :cond_a

    .line 1115
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getDictItem()V

    .line 1116
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    const-string v7, "FullName"

    if-ne v5, v7, :cond_3

    .line 1118
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v4

    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v0

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    int-to-char v7, v7

    invoke-virtual {p0, v7}, Lcom/itextpdf/io/font/CFFFont;->getString(C)Ljava/lang/String;

    move-result-object v7

    iput-object v7, v5, Lcom/itextpdf/io/font/CFFFont$Font;->fullName:Ljava/lang/String;

    goto :goto_3

    .line 1120
    :cond_3
    const-string v7, "ROS"

    if-ne v5, v7, :cond_4

    .line 1121
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v4

    iput-boolean v6, v5, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    goto :goto_3

    .line 1122
    :cond_4
    if-ne v5, v8, :cond_5

    .line 1123
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v4

    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v0

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v5, Lcom/itextpdf/io/font/CFFFont$Font;->privateLength:I

    .line 1124
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v4

    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v6

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v5, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    goto :goto_3

    .line 1126
    :cond_5
    const-string v7, "charset"

    if-ne v5, v7, :cond_6

    .line 1127
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v4

    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v0

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v5, Lcom/itextpdf/io/font/CFFFont$Font;->charsetOffset:I

    goto :goto_3

    .line 1137
    :cond_6
    const-string v7, "CharStrings"

    if-ne v5, v7, :cond_7

    .line 1138
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v4

    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v0

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v5, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffset:I

    .line 1141
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getPosition()I

    move-result v5

    .line 1142
    .local v5, "p":I
    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v7, v7, v4

    iget v8, v7, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffset:I

    invoke-virtual {p0, v8}, Lcom/itextpdf/io/font/CFFFont;->getIndex(I)[I

    move-result-object v8

    iput-object v8, v7, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffsets:[I

    .line 1143
    invoke-virtual {p0, v5}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 1144
    .end local v5    # "p":I
    goto/16 :goto_3

    :cond_7
    const-string v7, "FDArray"

    if-ne v5, v7, :cond_8

    .line 1145
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v4

    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v0

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v5, Lcom/itextpdf/io/font/CFFFont$Font;->fdarrayOffset:I

    goto/16 :goto_3

    .line 1146
    :cond_8
    const-string v7, "FDSelect"

    if-ne v5, v7, :cond_9

    .line 1147
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v4

    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v0

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v5, Lcom/itextpdf/io/font/CFFFont$Font;->fdselectOffset:I

    goto/16 :goto_3

    .line 1148
    :cond_9
    const-string v7, "CharstringType"

    if-ne v5, v7, :cond_2

    .line 1149
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v4

    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v0

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iput v7, v5, Lcom/itextpdf/io/font/CFFFont$Font;->CharstringType:I

    goto/16 :goto_3

    .line 1153
    :cond_a
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    if-ltz v5, :cond_c

    .line 1155
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    invoke-virtual {p0, v5}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 1156
    :cond_b
    :goto_4
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getPosition()I

    move-result v5

    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v7, v7, v4

    iget v7, v7, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    iget-object v9, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v9, v9, v4

    iget v9, v9, Lcom/itextpdf/io/font/CFFFont$Font;->privateLength:I

    add-int/2addr v7, v9

    if-ge v5, v7, :cond_c

    .line 1157
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getDictItem()V

    .line 1158
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    const-string v7, "Subrs"

    if-ne v5, v7, :cond_b

    .line 1161
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v4

    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v7, v7, v0

    check-cast v7, Ljava/lang/Integer;

    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    move-result v7

    iget-object v9, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v9, v9, v4

    iget v9, v9, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    add-int/2addr v7, v9

    iput v7, v5, Lcom/itextpdf/io/font/CFFFont$Font;->privateSubrs:I

    goto :goto_4

    .line 1166
    :cond_c
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/itextpdf/io/font/CFFFont$Font;->fdarrayOffset:I

    if-ltz v5, :cond_f

    .line 1167
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v4

    iget v5, v5, Lcom/itextpdf/io/font/CFFFont$Font;->fdarrayOffset:I

    invoke-virtual {p0, v5}, Lcom/itextpdf/io/font/CFFFont;->getIndex(I)[I

    move-result-object v5

    .line 1169
    .local v5, "fdarrayOffsets":[I
    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v7, v7, v4

    array-length v9, v5

    sub-int/2addr v9, v6

    new-array v9, v9, [I

    iput-object v9, v7, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    .line 1170
    iget-object v7, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v7, v7, v4

    array-length v9, v5

    sub-int/2addr v9, v6

    new-array v9, v9, [I

    iput-object v9, v7, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateLengths:[I

    .line 1174
    const/4 v7, 0x0

    .local v7, "k":I
    :goto_5
    array-length v9, v5

    sub-int/2addr v9, v6

    if-ge v7, v9, :cond_f

    .line 1175
    aget v9, v5, v7

    invoke-virtual {p0, v9}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 1176
    :cond_d
    :goto_6
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getPosition()I

    move-result v9

    add-int/lit8 v10, v7, 0x1

    aget v10, v5, v10

    if-ge v9, v10, :cond_e

    .line 1177
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getDictItem()V

    .line 1178
    iget-object v9, p0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    if-ne v9, v8, :cond_d

    .line 1179
    iget-object v9, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v9, v9, v4

    iget-object v9, v9, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateLengths:[I

    iget-object v10, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v10, v10, v0

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v9, v7

    .line 1180
    iget-object v9, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v9, v9, v4

    iget-object v9, v9, Lcom/itextpdf/io/font/CFFFont$Font;->fdprivateOffsets:[I

    iget-object v10, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aget-object v10, v10, v6

    check-cast v10, Ljava/lang/Integer;

    invoke-virtual {v10}, Ljava/lang/Integer;->intValue()I

    move-result v10

    aput v10, v9, v7

    goto :goto_6

    .line 1174
    :cond_e
    add-int/lit8 v7, v7, 0x1

    goto :goto_5

    .line 1112
    .end local v5    # "fdarrayOffsets":[I
    .end local v7    # "k":I
    :cond_f
    add-int/lit8 v4, v4, 0x1

    goto/16 :goto_2

    .line 1187
    .end local v4    # "j":I
    :cond_10
    return-void
.end method


# virtual methods
.method ReadEncoding(I)V
    .locals 1
    .param p1, "nextIndexOffset"    # I

    .line 1193
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 1194
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v0

    .line 1195
    .local v0, "format":I
    return-void
.end method

.method public exists(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fontName"    # Ljava/lang/String;

    .line 972
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 973
    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    return v1

    .line 972
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 974
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getCID(Ljava/lang/String;)[B
    .locals 30
    .param p1, "fontName"    # Ljava/lang/String;

    .line 688
    move-object/from16 v0, p0

    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 689
    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    move-object/from16 v3, p1

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    .line 688
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    move-object/from16 v3, p1

    .line 690
    :goto_1
    iget-object v2, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    array-length v2, v2

    if-ne v1, v2, :cond_2

    const/4 v2, 0x0

    return-object v2

    .line 692
    :cond_2
    new-instance v2, Ljava/util/LinkedList;

    invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V

    .line 696
    .local v2, "l":Ljava/util/LinkedList;, "Ljava/util/LinkedList<Lcom/itextpdf/io/font/CFFFont$Item;>;"
    const/4 v4, 0x0

    invoke-virtual {v0, v4}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 698
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v5

    .line 699
    .local v5, "major":I
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v6

    .line 700
    .local v6, "minor":I
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v7

    .line 701
    .local v7, "hdrSize":I
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v8

    .line 702
    .local v8, "offSize":I
    iput v7, v0, Lcom/itextpdf/io/font/CFFFont;->nextIndexOffset:I

    .line 704
    new-instance v9, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v10, v0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-direct {v9, v10, v4, v7}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v2, v9}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 706
    const/4 v9, -0x1

    .local v9, "nglyphs":I
    const/4 v10, -0x1

    .line 707
    .local v10, "nstrings":I
    iget-object v11, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v11, v11, v1

    iget-boolean v11, v11, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    if-nez v11, :cond_3

    .line 709
    iget-object v11, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v11, v11, v1

    iget v11, v11, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffset:I

    invoke-virtual {v0, v11}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 710
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFont;->getCard16()C

    move-result v9

    .line 711
    iget v11, v0, Lcom/itextpdf/io/font/CFFFont;->stringIndexOffset:I

    invoke-virtual {v0, v11}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 712
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFont;->getCard16()C

    move-result v11

    sget-object v12, Lcom/itextpdf/io/font/CFFFont;->standardStrings:[Ljava/lang/String;

    array-length v12, v12

    add-int v10, v11, v12

    .line 719
    :cond_3
    new-instance v11, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    const/4 v12, 0x1

    invoke-direct {v11, v12}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 721
    new-instance v11, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    invoke-direct {v11, v12}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 723
    new-instance v11, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    invoke-direct {v11, v12}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 724
    new-instance v11, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    iget-object v13, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v13, v13, v1

    iget-object v13, v13, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int/2addr v13, v12

    int-to-char v13, v13

    invoke-direct {v11, v13}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 725
    new-instance v11, Lcom/itextpdf/io/font/CFFFont$StringItem;

    iget-object v13, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v13, v13, v1

    iget-object v13, v13, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    invoke-direct {v11, v13}, Lcom/itextpdf/io/font/CFFFont$StringItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 730
    new-instance v11, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    invoke-direct {v11, v12}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 732
    new-instance v11, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/4 v13, 0x2

    invoke-direct {v11, v13}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 734
    new-instance v11, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    invoke-direct {v11, v12}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 735
    new-instance v11, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    invoke-direct {v11, v13}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(I)V

    .line 736
    .local v11, "topdictIndex1Ref":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 737
    new-instance v14, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;

    invoke-direct {v14}, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;-><init>()V

    .line 738
    .local v14, "topdictBase":Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;
    invoke-virtual {v2, v14}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 750
    new-instance v15, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v15}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    .line 751
    .local v15, "charsetRef":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    new-instance v16, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct/range {v16 .. v16}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    move-object/from16 v17, v16

    .line 752
    .local v17, "charstringsRef":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    new-instance v16, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct/range {v16 .. v16}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    move-object/from16 v18, v16

    .line 753
    .local v18, "fdarrayRef":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    new-instance v16, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct/range {v16 .. v16}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    move-object/from16 v19, v16

    .line 755
    .local v19, "fdselectRef":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    iget-object v13, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v13, v13, v1

    iget-boolean v13, v13, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    if-nez v13, :cond_4

    .line 758
    new-instance v13, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    invoke-direct {v13, v10}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v2, v13}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 759
    new-instance v13, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    add-int/lit8 v12, v10, 0x1

    invoke-direct {v13, v12}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v2, v13}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 760
    new-instance v12, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    invoke-direct {v12, v4}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v2, v12}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 761
    new-instance v12, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v13, 0xc

    invoke-direct {v12, v13}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v12}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 762
    new-instance v12, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v13, 0x1e

    invoke-direct {v12, v13}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v12}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 765
    new-instance v12, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    invoke-direct {v12, v9}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v2, v12}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 766
    new-instance v12, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v13, 0xc

    invoke-direct {v12, v13}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v12}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 767
    new-instance v12, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v13, 0x22

    invoke-direct {v12, v13}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v12}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 774
    :cond_4
    move-object/from16 v12, v18

    .end local v18    # "fdarrayRef":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    .local v12, "fdarrayRef":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    invoke-virtual {v2, v12}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 775
    new-instance v13, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v4, 0xc

    invoke-direct {v13, v4}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v13}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 776
    new-instance v13, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v4, 0x24

    invoke-direct {v13, v4}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v13}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 779
    move-object/from16 v4, v19

    .end local v19    # "fdselectRef":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    .local v4, "fdselectRef":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 780
    new-instance v13, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v3, 0xc

    invoke-direct {v13, v3}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v13}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 781
    new-instance v3, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v13, 0x25

    invoke-direct {v3, v13}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 784
    invoke-virtual {v2, v15}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 785
    new-instance v3, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v13, 0xf

    invoke-direct {v3, v13}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 788
    move-object/from16 v3, v17

    .end local v17    # "charstringsRef":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    .local v3, "charstringsRef":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 789
    new-instance v13, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    move/from16 v17, v5

    .end local v5    # "major":I
    .local v17, "major":I
    const/16 v5, 0x11

    invoke-direct {v13, v5}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v13}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 791
    iget-object v5, v0, Lcom/itextpdf/io/font/CFFFont;->topdictOffsets:[I

    aget v5, v5, v1

    invoke-virtual {v0, v5}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 792
    :goto_2
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFont;->getPosition()I

    move-result v5

    iget-object v13, v0, Lcom/itextpdf/io/font/CFFFont;->topdictOffsets:[I

    add-int/lit8 v19, v1, 0x1

    aget v13, v13, v19

    if-ge v5, v13, :cond_b

    .line 793
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFont;->getPosition()I

    move-result v5

    .line 794
    .local v5, "p1":I
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFont;->getDictItem()V

    .line 795
    invoke-virtual/range {p0 .. p0}, Lcom/itextpdf/io/font/CFFFont;->getPosition()I

    move-result v13

    .line 796
    .local v13, "p2":I
    move/from16 v19, v6

    .end local v6    # "minor":I
    .local v19, "minor":I
    iget-object v6, v0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    move/from16 v21, v7

    .end local v7    # "hdrSize":I
    .local v21, "hdrSize":I
    const-string v7, "Encoding"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_a

    iget-object v6, v0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    .line 797
    const-string v7, "Private"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_9

    iget-object v6, v0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    .line 798
    const-string v7, "FDSelect"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_8

    iget-object v6, v0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    .line 799
    const-string v7, "FDArray"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_7

    iget-object v6, v0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    .line 800
    const-string v7, "charset"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_6

    iget-object v6, v0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    .line 801
    const-string v7, "CharStrings"

    invoke-virtual {v7, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5

    move/from16 v22, v8

    goto :goto_3

    .line 806
    :cond_5
    new-instance v6, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v7, v0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move/from16 v22, v8

    .end local v8    # "offSize":I
    .local v22, "offSize":I
    sub-int v8, v13, v5

    invoke-direct {v6, v7, v5, v8}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    goto :goto_3

    .line 800
    .end local v22    # "offSize":I
    .restart local v8    # "offSize":I
    :cond_6
    move/from16 v22, v8

    .end local v8    # "offSize":I
    .restart local v22    # "offSize":I
    goto :goto_3

    .line 799
    .end local v22    # "offSize":I
    .restart local v8    # "offSize":I
    :cond_7
    move/from16 v22, v8

    .end local v8    # "offSize":I
    .restart local v22    # "offSize":I
    goto :goto_3

    .line 798
    .end local v22    # "offSize":I
    .restart local v8    # "offSize":I
    :cond_8
    move/from16 v22, v8

    .end local v8    # "offSize":I
    .restart local v22    # "offSize":I
    goto :goto_3

    .line 797
    .end local v22    # "offSize":I
    .restart local v8    # "offSize":I
    :cond_9
    move/from16 v22, v8

    .end local v8    # "offSize":I
    .restart local v22    # "offSize":I
    goto :goto_3

    .line 796
    .end local v22    # "offSize":I
    .restart local v8    # "offSize":I
    :cond_a
    move/from16 v22, v8

    .line 808
    .end local v5    # "p1":I
    .end local v8    # "offSize":I
    .end local v13    # "p2":I
    .restart local v22    # "offSize":I
    :goto_3
    move/from16 v6, v19

    move/from16 v7, v21

    move/from16 v8, v22

    goto :goto_2

    .line 810
    .end local v19    # "minor":I
    .end local v21    # "hdrSize":I
    .end local v22    # "offSize":I
    .restart local v6    # "minor":I
    .restart local v7    # "hdrSize":I
    .restart local v8    # "offSize":I
    :cond_b
    move/from16 v19, v6

    move/from16 v21, v7

    move/from16 v22, v8

    .end local v6    # "minor":I
    .end local v7    # "hdrSize":I
    .end local v8    # "offSize":I
    .restart local v19    # "minor":I
    .restart local v21    # "hdrSize":I
    .restart local v22    # "offSize":I
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;

    invoke-direct {v5, v11, v14}, Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 816
    iget-object v5, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    if-eqz v5, :cond_c

    .line 817
    iget v5, v0, Lcom/itextpdf/io/font/CFFFont;->stringIndexOffset:I

    invoke-virtual {v0, v5}, Lcom/itextpdf/io/font/CFFFont;->getEntireIndexRange(I)Lcom/itextpdf/io/font/CFFFont$RangeItem;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    move/from16 v23, v10

    move-object/from16 v25, v11

    move-object/from16 v26, v14

    goto/16 :goto_6

    .line 819
    :cond_c
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v7, v7, v1

    iget-object v7, v7, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v7, "-OneRange"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 820
    .local v5, "fdFontName":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x7f

    if-le v7, v8, :cond_d

    .line 821
    const/4 v7, 0x0

    invoke-virtual {v5, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 822
    :cond_d
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "AdobeIdentity"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 824
    .local v7, "extraStrings":Ljava/lang/String;
    iget-object v8, v0, Lcom/itextpdf/io/font/CFFFont;->stringOffsets:[I

    array-length v13, v8

    const/16 v20, 0x1

    add-int/lit8 v13, v13, -0x1

    aget v13, v8, v13

    const/16 v18, 0x0

    aget v8, v8, v18

    sub-int/2addr v13, v8

    .line 826
    .local v13, "origStringsLen":I
    add-int/lit8 v8, v8, -0x1

    .line 829
    .local v8, "stringsBaseOffset":I
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v23

    add-int v6, v13, v23

    move/from16 v23, v10

    .end local v10    # "nstrings":I
    .local v23, "nstrings":I
    const/16 v10, 0xff

    if-gt v6, v10, :cond_e

    const/4 v6, 0x1

    .local v6, "stringsIndexOffSize":B
    goto :goto_4

    .line 830
    .end local v6    # "stringsIndexOffSize":B
    :cond_e
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v13

    const v10, 0xffff

    if-gt v6, v10, :cond_f

    const/4 v6, 0x2

    .restart local v6    # "stringsIndexOffSize":B
    goto :goto_4

    .line 831
    .end local v6    # "stringsIndexOffSize":B
    :cond_f
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v6, v13

    const v10, 0xffffff

    if-gt v6, v10, :cond_10

    const/4 v6, 0x3

    .restart local v6    # "stringsIndexOffSize":B
    goto :goto_4

    .line 832
    .end local v6    # "stringsIndexOffSize":B
    :cond_10
    const/4 v6, 0x4

    .line 835
    .restart local v6    # "stringsIndexOffSize":B
    :goto_4
    new-instance v10, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    move-object/from16 v25, v11

    .end local v11    # "topdictIndex1Ref":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    .local v25, "topdictIndex1Ref":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    iget-object v11, v0, Lcom/itextpdf/io/font/CFFFont;->stringOffsets:[I

    array-length v11, v11

    const/16 v20, 0x1

    add-int/lit8 v11, v11, -0x1

    const/16 v24, 0x3

    add-int/lit8 v11, v11, 0x3

    int-to-char v11, v11

    invoke-direct {v10, v11}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 837
    new-instance v10, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    int-to-char v11, v6

    invoke-direct {v10, v11}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 838
    iget-object v10, v0, Lcom/itextpdf/io/font/CFFFont;->stringOffsets:[I

    array-length v11, v10

    move-object/from16 v26, v14

    const/4 v14, 0x0

    .end local v14    # "topdictBase":Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;
    .local v26, "topdictBase":Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;
    :goto_5
    if-ge v14, v11, :cond_11

    aget v27, v10, v14

    .line 839
    .local v27, "stringOffset":I
    move-object/from16 v28, v10

    new-instance v10, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    move/from16 v29, v11

    sub-int v11, v27, v8

    invoke-direct {v10, v6, v11}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(II)V

    invoke-virtual {v2, v10}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 838
    .end local v27    # "stringOffset":I
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v10, v28

    move/from16 v11, v29

    goto :goto_5

    .line 841
    :cond_11
    iget-object v10, v0, Lcom/itextpdf/io/font/CFFFont;->stringOffsets:[I

    array-length v11, v10

    const/4 v14, 0x1

    sub-int/2addr v11, v14

    aget v10, v10, v11

    sub-int/2addr v10, v8

    .line 844
    .local v10, "currentStringsOffset":I
    const-string v11, "Adobe"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    .line 845
    new-instance v11, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    invoke-direct {v11, v6, v10}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(II)V

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 846
    const-string v11, "Identity"

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    .line 847
    new-instance v11, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    invoke-direct {v11, v6, v10}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(II)V

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 848
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    add-int/2addr v10, v11

    .line 849
    new-instance v11, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    invoke-direct {v11, v6, v10}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(II)V

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 851
    new-instance v11, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v14, v0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    move-object/from16 v27, v5

    .end local v5    # "fdFontName":Ljava/lang/String;
    .local v27, "fdFontName":Ljava/lang/String;
    iget-object v5, v0, Lcom/itextpdf/io/font/CFFFont;->stringOffsets:[I

    const/16 v18, 0x0

    aget v5, v5, v18

    invoke-direct {v11, v14, v5, v13}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v2, v11}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 852
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$StringItem;

    invoke-direct {v5, v7}, Lcom/itextpdf/io/font/CFFFont$StringItem;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 857
    .end local v6    # "stringsIndexOffSize":B
    .end local v7    # "extraStrings":Ljava/lang/String;
    .end local v8    # "stringsBaseOffset":I
    .end local v10    # "currentStringsOffset":I
    .end local v13    # "origStringsLen":I
    .end local v27    # "fdFontName":Ljava/lang/String;
    :goto_6
    iget v5, v0, Lcom/itextpdf/io/font/CFFFont;->gsubrIndexOffset:I

    invoke-virtual {v0, v5}, Lcom/itextpdf/io/font/CFFFont;->getEntireIndexRange(I)Lcom/itextpdf/io/font/CFFFont$RangeItem;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 861
    iget-object v5, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v1

    iget-boolean v5, v5, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    if-eqz v5, :cond_12

    goto/16 :goto_7

    .line 865
    :cond_12
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v5, v4}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 867
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/4 v6, 0x3

    invoke-direct {v5, v6}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 869
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 872
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    const/4 v6, 0x0

    invoke-direct {v5, v6}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 874
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    invoke-direct {v5, v6}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 877
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    int-to-char v6, v9

    invoke-direct {v5, v6}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 882
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v5, v15}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 884
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/4 v6, 0x2

    invoke-direct {v5, v6}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 887
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 889
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    add-int/lit8 v6, v9, -0x1

    int-to-char v6, v6

    invoke-direct {v5, v6}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 894
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v5, v12}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 895
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt16Item;

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Lcom/itextpdf/io/font/CFFFont$UInt16Item;-><init>(C)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 897
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    invoke-direct {v5, v6}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 899
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    invoke-direct {v5, v6}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 901
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;

    invoke-direct {v5, v6}, Lcom/itextpdf/io/font/CFFFont$IndexOffsetItem;-><init>(I)V

    .line 902
    .local v5, "privateIndex1Ref":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 903
    new-instance v6, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;

    invoke-direct {v6}, Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;-><init>()V

    .line 904
    .local v6, "privateBase":Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;
    invoke-virtual {v2, v6}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 913
    new-instance v7, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;

    iget-object v8, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/itextpdf/io/font/CFFFont$Font;->privateLength:I

    invoke-direct {v7, v8}, Lcom/itextpdf/io/font/CFFFont$DictNumberItem;-><init>(I)V

    invoke-virtual {v2, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 914
    new-instance v7, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;

    invoke-direct {v7}, Lcom/itextpdf/io/font/CFFFont$DictOffsetItem;-><init>()V

    .line 915
    .local v7, "privateRef":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    invoke-virtual {v2, v7}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 917
    new-instance v8, Lcom/itextpdf/io/font/CFFFont$UInt8Item;

    const/16 v10, 0x12

    invoke-direct {v8, v10}, Lcom/itextpdf/io/font/CFFFont$UInt8Item;-><init>(C)V

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 919
    new-instance v8, Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;

    invoke-direct {v8, v5, v6}, Lcom/itextpdf/io/font/CFFFont$IndexMarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;)V

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 923
    new-instance v8, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v8, v7}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 927
    new-instance v8, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v10, v0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget-object v11, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v11, v11, v1

    iget v11, v11, Lcom/itextpdf/io/font/CFFFont$Font;->privateOffset:I

    iget-object v13, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v13, v13, v1

    iget v13, v13, Lcom/itextpdf/io/font/CFFFont$Font;->privateLength:I

    invoke-direct {v8, v10, v11, v13}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 928
    iget-object v8, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/itextpdf/io/font/CFFFont$Font;->privateSubrs:I

    if-ltz v8, :cond_13

    .line 930
    iget-object v8, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v8, v8, v1

    iget v8, v8, Lcom/itextpdf/io/font/CFFFont$Font;->privateSubrs:I

    invoke-virtual {v0, v8}, Lcom/itextpdf/io/font/CFFFont;->getEntireIndexRange(I)Lcom/itextpdf/io/font/CFFFont$RangeItem;

    move-result-object v8

    invoke-virtual {v2, v8}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 936
    .end local v5    # "privateIndex1Ref":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    .end local v6    # "privateBase":Lcom/itextpdf/io/font/CFFFont$IndexBaseItem;
    .end local v7    # "privateRef":Lcom/itextpdf/io/font/CFFFont$OffsetItem;
    :cond_13
    :goto_7
    new-instance v5, Lcom/itextpdf/io/font/CFFFont$MarkerItem;

    invoke-direct {v5, v3}, Lcom/itextpdf/io/font/CFFFont$MarkerItem;-><init>(Lcom/itextpdf/io/font/CFFFont$OffsetItem;)V

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 937
    iget-object v5, v0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v5, v5, v1

    iget v5, v5, Lcom/itextpdf/io/font/CFFFont$Font;->charstringsOffset:I

    invoke-virtual {v0, v5}, Lcom/itextpdf/io/font/CFFFont;->getEntireIndexRange(I)Lcom/itextpdf/io/font/CFFFont$RangeItem;

    move-result-object v5

    invoke-virtual {v2, v5}, Ljava/util/LinkedList;->addLast(Ljava/lang/Object;)V

    .line 941
    const/4 v5, 0x1

    new-array v5, v5, [I

    .line 942
    .local v5, "currentOffset":[I
    const/4 v6, 0x0

    aput v6, v5, v6

    .line 944
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_8
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_14

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/io/font/CFFFont$Item;

    .line 945
    .local v7, "item":Lcom/itextpdf/io/font/CFFFont$Item;
    invoke-virtual {v7, v5}, Lcom/itextpdf/io/font/CFFFont$Item;->increment([I)V

    .line 946
    .end local v7    # "item":Lcom/itextpdf/io/font/CFFFont$Item;
    goto :goto_8

    .line 948
    :cond_14
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_9
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_15

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/itextpdf/io/font/CFFFont$Item;

    .line 949
    .restart local v7    # "item":Lcom/itextpdf/io/font/CFFFont$Item;
    invoke-virtual {v7}, Lcom/itextpdf/io/font/CFFFont$Item;->xref()V

    .line 950
    .end local v7    # "item":Lcom/itextpdf/io/font/CFFFont$Item;
    goto :goto_9

    .line 952
    :cond_15
    const/4 v6, 0x0

    aget v6, v5, v6

    .line 953
    .local v6, "size":I
    new-array v7, v6, [B

    .line 955
    .local v7, "b":[B
    invoke-virtual {v2}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :goto_a
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_16

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcom/itextpdf/io/font/CFFFont$Item;

    .line 956
    .local v10, "item":Lcom/itextpdf/io/font/CFFFont$Item;
    invoke-virtual {v10, v7}, Lcom/itextpdf/io/font/CFFFont$Item;->emit([B)V

    .line 957
    .end local v10    # "item":Lcom/itextpdf/io/font/CFFFont$Item;
    goto :goto_a

    .line 959
    :cond_16
    return-object v7
.end method

.method getCard16()C
    .locals 3

    .line 175
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readChar()C

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 176
    :catch_0
    move-exception v0

    .line 177
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "I/O exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method getCard8()C
    .locals 3

    .line 165
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readByte()B

    move-result v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 166
    .local v0, "i":B
    and-int/lit16 v1, v0, 0xff

    int-to-char v1, v1

    return v1

    .line 168
    .end local v0    # "i":B
    :catch_0
    move-exception v0

    .line 169
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "I/O exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method protected getDictItem()V
    .locals 11

    .line 263
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget v1, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    const/4 v2, 0x0

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    aput-object v2, v1, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 264
    .end local v0    # "i":I
    :cond_0
    const/4 v0, 0x0

    iput v0, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    .line 265
    iput-object v2, p0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    .line 266
    const/4 v0, 0x0

    .line 268
    .local v0, "gotKey":Z
    :goto_1
    if-nez v0, :cond_e

    .line 269
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v1

    .line 270
    .local v1, "b0":C
    const/16 v2, 0x1d

    const/4 v3, 0x1

    if-ne v1, v2, :cond_1

    .line 271
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getInt()I

    move-result v2

    .line 272
    .local v2, "item":I
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    iget v5, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 273
    iget v4, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    .line 275
    goto :goto_1

    .line 277
    .end local v2    # "item":I
    :cond_1
    const/16 v2, 0x1c

    if-ne v1, v2, :cond_2

    .line 278
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getShort()S

    move-result v2

    .line 279
    .local v2, "item":S
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    iget v5, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    .line 280
    iget v4, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    add-int/2addr v4, v3

    iput v4, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    .line 282
    goto :goto_1

    .line 284
    .end local v2    # "item":S
    :cond_2
    const/16 v2, 0x20

    if-lt v1, v2, :cond_3

    const/16 v4, 0xf6

    if-gt v1, v4, :cond_3

    .line 285
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    iget v4, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    add-int/lit16 v5, v1, -0x8b

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v2, v4

    .line 286
    iget v2, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    add-int/2addr v2, v3

    iput v2, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    .line 288
    goto :goto_1

    .line 290
    :cond_3
    const/16 v4, 0xf7

    if-lt v1, v4, :cond_4

    const/16 v4, 0xfa

    if-gt v1, v4, :cond_4

    .line 291
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v2

    .line 292
    .local v2, "b1":C
    add-int/lit16 v4, v1, -0xf7

    mul-int/lit16 v4, v4, 0x100

    add-int/2addr v4, v2

    add-int/lit8 v4, v4, 0x6c

    int-to-short v4, v4

    .line 293
    .local v4, "item":S
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    iget v6, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 294
    iget v5, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    .line 296
    goto :goto_1

    .line 298
    .end local v2    # "b1":C
    .end local v4    # "item":S
    :cond_4
    const/16 v4, 0xfb

    if-lt v1, v4, :cond_5

    const/16 v4, 0xfe

    if-gt v1, v4, :cond_5

    .line 299
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v2

    .line 300
    .restart local v2    # "b1":C
    add-int/lit16 v4, v1, -0xfb

    neg-int v4, v4

    mul-int/lit16 v4, v4, 0x100

    sub-int/2addr v4, v2

    add-int/lit8 v4, v4, -0x6c

    int-to-short v4, v4

    .line 301
    .restart local v4    # "item":S
    iget-object v5, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    iget v6, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    .line 302
    iget v5, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    add-int/2addr v5, v3

    iput v5, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    .line 304
    goto/16 :goto_1

    .line 306
    .end local v2    # "b1":C
    .end local v4    # "item":S
    :cond_5
    const/16 v4, 0x1e

    if-ne v1, v4, :cond_b

    .line 307
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, ""

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 308
    .local v2, "item":Ljava/lang/StringBuilder;
    const/4 v4, 0x0

    .line 309
    .local v4, "done":Z
    const/4 v5, 0x0

    .line 310
    .local v5, "buffer":C
    const/4 v6, 0x0

    .line 311
    .local v6, "avail":B
    const/4 v7, 0x0

    .line 312
    .local v7, "nibble":I
    :goto_2
    if-nez v4, :cond_a

    .line 314
    if-nez v6, :cond_6

    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v5

    const/4 v6, 0x2

    .line 315
    :cond_6
    if-ne v6, v3, :cond_7

    div-int/lit8 v7, v5, 0x10

    add-int/lit8 v8, v6, -0x1

    int-to-byte v6, v8

    .line 316
    :cond_7
    const/4 v8, 0x2

    if-ne v6, v8, :cond_8

    rem-int/lit8 v7, v5, 0x10

    add-int/lit8 v8, v6, -0x1

    int-to-byte v6, v8

    .line 317
    :cond_8
    packed-switch v7, :pswitch_data_0

    .line 324
    :pswitch_0
    if-ltz v7, :cond_9

    const/16 v8, 0x9

    if-gt v7, v8, :cond_9

    .line 325
    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 322
    :pswitch_1
    const/4 v4, 0x1

    goto :goto_2

    .line 321
    :pswitch_2
    const-string v8, "-"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 320
    :pswitch_3
    const-string v8, "E-"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 319
    :pswitch_4
    const-string v8, "E"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 318
    :pswitch_5
    const-string v8, "."

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 327
    :cond_9
    const-string v8, "<NIBBLE ERROR: "

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const/16 v9, 0x3e

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 328
    const/4 v4, 0x1

    .line 330
    goto :goto_2

    .line 333
    :cond_a
    iget-object v8, p0, Lcom/itextpdf/io/font/CFFFont;->args:[Ljava/lang/Object;

    iget v9, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    aput-object v10, v8, v9

    .line 334
    iget v8, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    add-int/2addr v8, v3

    iput v8, p0, Lcom/itextpdf/io/font/CFFFont;->arg_count:I

    .line 336
    goto/16 :goto_1

    .line 338
    .end local v2    # "item":Ljava/lang/StringBuilder;
    .end local v4    # "done":Z
    .end local v5    # "buffer":C
    .end local v6    # "avail":B
    .end local v7    # "nibble":I
    :cond_b
    const/16 v3, 0x15

    if-gt v1, v3, :cond_d

    .line 339
    const/4 v0, 0x1

    .line 340
    const/16 v3, 0xc

    if-eq v1, v3, :cond_c

    sget-object v2, Lcom/itextpdf/io/font/CFFFont;->operatorNames:[Ljava/lang/String;

    aget-object v2, v2, v1

    iput-object v2, p0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    goto/16 :goto_1

    .line 341
    :cond_c
    sget-object v3, Lcom/itextpdf/io/font/CFFFont;->operatorNames:[Ljava/lang/String;

    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v4

    add-int/2addr v4, v2

    aget-object v2, v3, v4

    iput-object v2, p0, Lcom/itextpdf/io/font/CFFFont;->key:Ljava/lang/String;

    .line 345
    goto/16 :goto_1

    .line 347
    .end local v1    # "b0":C
    :cond_d
    goto/16 :goto_1

    .line 348
    :cond_e
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0xa
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected getEntireIndexRange(I)Lcom/itextpdf/io/font/CFFFont$RangeItem;
    .locals 6
    .param p1, "indexOffset"    # I

    .line 658
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 659
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard16()C

    move-result v0

    .line 660
    .local v0, "count":I
    if-nez v0, :cond_0

    .line 661
    new-instance v1, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const/4 v3, 0x2

    invoke-direct {v1, v2, p1, v3}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    return-object v1

    .line 663
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v1

    .line 664
    .local v1, "indexOffSize":I
    add-int/lit8 v2, p1, 0x2

    add-int/lit8 v2, v2, 0x1

    mul-int v3, v0, v1

    add-int/2addr v2, v3

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 665
    invoke-virtual {p0, v1}, Lcom/itextpdf/io/font/CFFFont;->getOffset(I)I

    move-result v2

    add-int/lit8 v2, v2, -0x1

    .line 666
    .local v2, "size":I
    new-instance v3, Lcom/itextpdf/io/font/CFFFont$RangeItem;

    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    add-int/lit8 v5, v0, 0x1

    mul-int/2addr v5, v1

    add-int/lit8 v5, v5, 0x3

    add-int/2addr v5, v2

    invoke-direct {v3, v4, p1, v5}, Lcom/itextpdf/io/font/CFFFont$RangeItem;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;II)V

    return-object v3
.end method

.method getIndex(I)[I
    .locals 6
    .param p1, "nextIndexOffset"    # I

    .line 229
    invoke-virtual {p0, p1}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 230
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard16()C

    move-result v0

    .line 231
    .local v0, "count":I
    add-int/lit8 v1, v0, 0x1

    new-array v1, v1, [I

    .line 233
    .local v1, "offsets":[I
    if-nez v0, :cond_0

    .line 234
    const/4 v2, 0x0

    const/4 v3, -0x1

    aput v3, v1, v2

    .line 236
    add-int/lit8 p1, p1, 0x2

    .line 237
    return-object v1

    .line 240
    :cond_0
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v2

    .line 242
    .local v2, "indexOffSize":I
    const/4 v3, 0x0

    .local v3, "j":I
    :goto_0
    if-gt v3, v0, :cond_1

    .line 244
    add-int/lit8 v4, p1, 0x2

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v5, v0, 0x1

    mul-int/2addr v5, v2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, -0x1

    .line 252
    invoke-virtual {p0, v2}, Lcom/itextpdf/io/font/CFFFont;->getOffset(I)I

    move-result v5

    add-int/2addr v4, v5

    aput v4, v1, v3

    .line 242
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 255
    .end local v3    # "j":I
    :cond_1
    return-object v1
.end method

.method getInt()I
    .locals 3

    .line 208
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readInt()I

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 209
    :catch_0
    move-exception v0

    .line 210
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "I/O exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getNames()[Ljava/lang/String;
    .locals 4

    .line 979
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    array-length v0, v0

    new-array v0, v0, [Ljava/lang/String;

    .line 980
    .local v0, "names":[Ljava/lang/String;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    array-length v3, v2

    if-ge v1, v3, :cond_0

    .line 981
    aget-object v2, v2, v1

    iget-object v2, v2, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    aput-object v2, v0, v1

    .line 980
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 982
    .end local v1    # "i":I
    :cond_0
    return-object v0
.end method

.method getOffset(I)I
    .locals 3
    .param p1, "offSize"    # I

    .line 182
    const/4 v0, 0x0

    .line 183
    .local v0, "offset":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, p1, :cond_0

    .line 184
    mul-int/lit16 v0, v0, 0x100

    .line 185
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v2

    add-int/2addr v0, v2

    .line 183
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 187
    .end local v1    # "i":I
    :cond_0
    return v0
.end method

.method getPosition()I
    .locals 3

    .line 216
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->getPosition()J

    move-result-wide v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    long-to-int v0, v0

    return v0

    .line 217
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "I/O exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method getShort()S
    .locals 3

    .line 200
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShort()S

    move-result v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return v0

    .line 201
    :catch_0
    move-exception v0

    .line 202
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "I/O exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public getString(C)Ljava/lang/String;
    .locals 6
    .param p1, "sid"    # C

    .line 149
    sget-object v0, Lcom/itextpdf/io/font/CFFFont;->standardStrings:[Ljava/lang/String;

    array-length v1, v0

    if-ge p1, v1, :cond_0

    aget-object v0, v0, p1

    return-object v0

    .line 150
    :cond_0
    array-length v1, v0

    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFont;->stringOffsets:[I

    array-length v2, v2

    add-int/2addr v1, v2

    add-int/lit8 v1, v1, -0x1

    if-lt p1, v1, :cond_1

    const/4 v0, 0x0

    return-object v0

    .line 151
    :cond_1
    array-length v0, v0

    sub-int v0, p1, v0

    .line 153
    .local v0, "j":I
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getPosition()I

    move-result v1

    .line 154
    .local v1, "p":I
    iget-object v2, p0, Lcom/itextpdf/io/font/CFFFont;->stringOffsets:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 155
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    .line 156
    .local v2, "s":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/itextpdf/io/font/CFFFont;->stringOffsets:[I

    aget v3, v3, v0

    .local v3, "k":I
    :goto_0
    iget-object v4, p0, Lcom/itextpdf/io/font/CFFFont;->stringOffsets:[I

    add-int/lit8 v5, v0, 0x1

    aget v4, v4, v5

    if-ge v3, v4, :cond_2

    .line 157
    invoke-virtual {p0}, Lcom/itextpdf/io/font/CFFFont;->getCard8()C

    move-result v4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    .line 156
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 159
    .end local v3    # "k":I
    :cond_2
    invoke-virtual {p0, v1}, Lcom/itextpdf/io/font/CFFFont;->seek(I)V

    .line 160
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public isCID(Ljava/lang/String;)Z
    .locals 3
    .param p1, "fontName"    # Ljava/lang/String;

    .line 965
    const/4 v0, 0x0

    .local v0, "j":I
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 966
    aget-object v1, v1, v0

    iget-object v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->name:Ljava/lang/String;

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/itextpdf/io/font/CFFFont;->fonts:[Lcom/itextpdf/io/font/CFFFont$Font;

    aget-object v1, v1, v0

    iget-boolean v1, v1, Lcom/itextpdf/io/font/CFFFont$Font;->isCID:Z

    return v1

    .line 965
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 967
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method seek(I)V
    .locals 3
    .param p1, "offset"    # I

    .line 192
    :try_start_0
    iget-object v0, p0, Lcom/itextpdf/io/font/CFFFont;->buf:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v1, p1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    nop

    .line 196
    return-void

    .line 193
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lcom/itextpdf/io/IOException;

    const-string v2, "I/O exception."

    invoke-direct {v1, v2, v0}, Lcom/itextpdf/io/IOException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method
