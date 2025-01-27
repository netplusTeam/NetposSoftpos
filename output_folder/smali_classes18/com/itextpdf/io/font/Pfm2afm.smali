.class public final Lcom/itextpdf/io/font/Pfm2afm;
.super Ljava/lang/Object;
.source "Pfm2afm.java"


# instance fields
.field private Win2PSStd:[I

.field private WinChars:[Ljava/lang/String;

.field private ascender:S

.field private ascent:S

.field private avgwidth:S

.field private bitoff:I

.field private bits:I

.field private brkchar:B

.field private capheight:S

.field private charset:B

.field private chartab:I

.field private copyright:Ljava/lang/String;

.field private defchar:B

.field private descender:S

.field private device:I

.field private extleading:S

.field private extlen:S

.field private face:I

.field private firstchar:I

.field private fontname:I

.field private h_len:I

.field private horres:S

.field private input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

.field private intleading:S

.field private isMono:Z

.field private italic:B

.field private kernpairs:I

.field private kind:B

.field private lastchar:I

.field private maxwidth:S

.field private output:Ljava/io/PrintWriter;

.field private overs:B

.field private pixheight:S

.field private pixwidth:S

.field private points:S

.field private psext:I

.field private res1:I

.field private res2:I

.field private type:S

.field private uline:B

.field private verres:S

.field private vers:S

.field private weight:S

.field private widthby:S

.field private xheight:S


# direct methods
.method private constructor <init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Ljava/io/OutputStream;)V
    .locals 4
    .param p1, "input"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .param p2, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 495
    const/16 v0, 0x100

    new-array v1, v0, [I

    fill-array-data v1, :array_0

    iput-object v1, p0, Lcom/itextpdf/io/font/Pfm2afm;->Win2PSStd:[I

    .line 542
    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "W00"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "W01"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "W02"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "W03"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "macron"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v3, "breve"

    aput-object v3, v0, v1

    const/4 v1, 0x6

    const-string v3, "dotaccent"

    aput-object v3, v0, v1

    const/4 v1, 0x7

    const-string v3, "W07"

    aput-object v3, v0, v1

    const/16 v1, 0x8

    const-string/jumbo v3, "ring"

    aput-object v3, v0, v1

    const/16 v1, 0x9

    const-string v3, "W09"

    aput-object v3, v0, v1

    const/16 v1, 0xa

    const-string v3, "W0a"

    aput-object v3, v0, v1

    const/16 v1, 0xb

    const-string v3, "W0b"

    aput-object v3, v0, v1

    const/16 v1, 0xc

    const-string v3, "W0c"

    aput-object v3, v0, v1

    const/16 v1, 0xd

    const-string v3, "W0d"

    aput-object v3, v0, v1

    const/16 v1, 0xe

    const-string v3, "W0e"

    aput-object v3, v0, v1

    const/16 v1, 0xf

    const-string v3, "W0f"

    aput-object v3, v0, v1

    const/16 v1, 0x10

    const-string v3, "hungarumlaut"

    aput-object v3, v0, v1

    const/16 v1, 0x11

    const-string v3, "ogonek"

    aput-object v3, v0, v1

    const/16 v1, 0x12

    const-string v3, "caron"

    aput-object v3, v0, v1

    const/16 v1, 0x13

    const-string v3, "W13"

    aput-object v3, v0, v1

    const/16 v1, 0x14

    const-string v3, "W14"

    aput-object v3, v0, v1

    const/16 v1, 0x15

    const-string v3, "W15"

    aput-object v3, v0, v1

    const/16 v1, 0x16

    const-string v3, "W16"

    aput-object v3, v0, v1

    const/16 v1, 0x17

    const-string v3, "W17"

    aput-object v3, v0, v1

    const/16 v1, 0x18

    const-string v3, "W18"

    aput-object v3, v0, v1

    const/16 v1, 0x19

    const-string v3, "W19"

    aput-object v3, v0, v1

    const/16 v1, 0x1a

    const-string v3, "W1a"

    aput-object v3, v0, v1

    const/16 v1, 0x1b

    const-string v3, "W1b"

    aput-object v3, v0, v1

    const/16 v1, 0x1c

    const-string v3, "W1c"

    aput-object v3, v0, v1

    const/16 v1, 0x1d

    const-string v3, "W1d"

    aput-object v3, v0, v1

    const/16 v1, 0x1e

    const-string v3, "W1e"

    aput-object v3, v0, v1

    const/16 v1, 0x1f

    const-string v3, "W1f"

    aput-object v3, v0, v1

    const/16 v1, 0x20

    const-string/jumbo v3, "space"

    aput-object v3, v0, v1

    const/16 v1, 0x21

    const-string v3, "exclam"

    aput-object v3, v0, v1

    const/16 v1, 0x22

    const-string/jumbo v3, "quotedbl"

    aput-object v3, v0, v1

    const/16 v1, 0x23

    const-string v3, "numbersign"

    aput-object v3, v0, v1

    const/16 v1, 0x24

    const-string v3, "dollar"

    aput-object v3, v0, v1

    const/16 v1, 0x25

    const-string v3, "percent"

    aput-object v3, v0, v1

    const/16 v1, 0x26

    const-string v3, "ampersand"

    aput-object v3, v0, v1

    const/16 v1, 0x27

    const-string/jumbo v3, "quotesingle"

    aput-object v3, v0, v1

    const/16 v1, 0x28

    const-string v3, "parenleft"

    aput-object v3, v0, v1

    const/16 v1, 0x29

    const-string v3, "parenright"

    aput-object v3, v0, v1

    const/16 v1, 0x2a

    const-string v3, "asterisk"

    aput-object v3, v0, v1

    const/16 v1, 0x2b

    const-string v3, "plus"

    aput-object v3, v0, v1

    const/16 v1, 0x2c

    const-string v3, "comma"

    aput-object v3, v0, v1

    const/16 v1, 0x2d

    const-string v3, "hyphen"

    aput-object v3, v0, v1

    const/16 v1, 0x2e

    const-string v3, "period"

    aput-object v3, v0, v1

    const/16 v1, 0x2f

    const-string/jumbo v3, "slash"

    aput-object v3, v0, v1

    const/16 v1, 0x30

    const-string/jumbo v3, "zero"

    aput-object v3, v0, v1

    const/16 v1, 0x31

    const-string v3, "one"

    aput-object v3, v0, v1

    const/16 v1, 0x32

    const-string/jumbo v3, "two"

    aput-object v3, v0, v1

    const/16 v1, 0x33

    const-string/jumbo v3, "three"

    aput-object v3, v0, v1

    const/16 v1, 0x34

    const-string v3, "four"

    aput-object v3, v0, v1

    const/16 v1, 0x35

    const-string v3, "five"

    aput-object v3, v0, v1

    const/16 v1, 0x36

    const-string/jumbo v3, "six"

    aput-object v3, v0, v1

    const/16 v1, 0x37

    const-string/jumbo v3, "seven"

    aput-object v3, v0, v1

    const/16 v1, 0x38

    const-string v3, "eight"

    aput-object v3, v0, v1

    const/16 v1, 0x39

    const-string v3, "nine"

    aput-object v3, v0, v1

    const/16 v1, 0x3a

    const-string v3, "colon"

    aput-object v3, v0, v1

    const/16 v1, 0x3b

    const-string/jumbo v3, "semicolon"

    aput-object v3, v0, v1

    const/16 v1, 0x3c

    const-string v3, "less"

    aput-object v3, v0, v1

    const/16 v1, 0x3d

    const-string v3, "equal"

    aput-object v3, v0, v1

    const/16 v1, 0x3e

    const-string v3, "greater"

    aput-object v3, v0, v1

    const/16 v1, 0x3f

    const-string/jumbo v3, "question"

    aput-object v3, v0, v1

    const/16 v1, 0x40

    const-string v3, "at"

    aput-object v3, v0, v1

    const/16 v1, 0x41

    const-string v3, "A"

    aput-object v3, v0, v1

    const/16 v1, 0x42

    const-string v3, "B"

    aput-object v3, v0, v1

    const/16 v1, 0x43

    const-string v3, "C"

    aput-object v3, v0, v1

    const/16 v1, 0x44

    const-string v3, "D"

    aput-object v3, v0, v1

    const/16 v1, 0x45

    const-string v3, "E"

    aput-object v3, v0, v1

    const/16 v1, 0x46

    const-string v3, "F"

    aput-object v3, v0, v1

    const/16 v1, 0x47

    const-string v3, "G"

    aput-object v3, v0, v1

    const/16 v1, 0x48

    const-string v3, "H"

    aput-object v3, v0, v1

    const/16 v1, 0x49

    const-string v3, "I"

    aput-object v3, v0, v1

    const/16 v1, 0x4a

    const-string v3, "J"

    aput-object v3, v0, v1

    const/16 v1, 0x4b

    const-string v3, "K"

    aput-object v3, v0, v1

    const/16 v1, 0x4c

    const-string v3, "L"

    aput-object v3, v0, v1

    const/16 v1, 0x4d

    const-string v3, "M"

    aput-object v3, v0, v1

    const/16 v1, 0x4e

    const-string v3, "N"

    aput-object v3, v0, v1

    const/16 v1, 0x4f

    const-string v3, "O"

    aput-object v3, v0, v1

    const/16 v1, 0x50

    const-string v3, "P"

    aput-object v3, v0, v1

    const/16 v1, 0x51

    const-string v3, "Q"

    aput-object v3, v0, v1

    const/16 v1, 0x52

    const-string v3, "R"

    aput-object v3, v0, v1

    const/16 v1, 0x53

    const-string v3, "S"

    aput-object v3, v0, v1

    const/16 v1, 0x54

    const-string v3, "T"

    aput-object v3, v0, v1

    const/16 v1, 0x55

    const-string v3, "U"

    aput-object v3, v0, v1

    const/16 v1, 0x56

    const-string v3, "V"

    aput-object v3, v0, v1

    const/16 v1, 0x57

    const-string v3, "W"

    aput-object v3, v0, v1

    const/16 v1, 0x58

    const-string v3, "X"

    aput-object v3, v0, v1

    const/16 v1, 0x59

    const-string v3, "Y"

    aput-object v3, v0, v1

    const/16 v1, 0x5a

    const-string v3, "Z"

    aput-object v3, v0, v1

    const/16 v1, 0x5b

    const-string v3, "bracketleft"

    aput-object v3, v0, v1

    const/16 v1, 0x5c

    const-string v3, "backslash"

    aput-object v3, v0, v1

    const/16 v1, 0x5d

    const-string v3, "bracketright"

    aput-object v3, v0, v1

    const/16 v1, 0x5e

    const-string v3, "asciicircum"

    aput-object v3, v0, v1

    const/16 v1, 0x5f

    const-string/jumbo v3, "underscore"

    aput-object v3, v0, v1

    const/16 v1, 0x60

    const-string v3, "grave"

    aput-object v3, v0, v1

    const/16 v1, 0x61

    const-string v3, "a"

    aput-object v3, v0, v1

    const/16 v1, 0x62

    const-string v3, "b"

    aput-object v3, v0, v1

    const/16 v1, 0x63

    const-string v3, "c"

    aput-object v3, v0, v1

    const/16 v1, 0x64

    const-string v3, "d"

    aput-object v3, v0, v1

    const/16 v1, 0x65

    const-string v3, "e"

    aput-object v3, v0, v1

    const/16 v1, 0x66

    const-string v3, "f"

    aput-object v3, v0, v1

    const/16 v1, 0x67

    const-string v3, "g"

    aput-object v3, v0, v1

    const/16 v1, 0x68

    const-string v3, "h"

    aput-object v3, v0, v1

    const/16 v1, 0x69

    const-string v3, "i"

    aput-object v3, v0, v1

    const/16 v1, 0x6a

    const-string v3, "j"

    aput-object v3, v0, v1

    const/16 v1, 0x6b

    const-string v3, "k"

    aput-object v3, v0, v1

    const/16 v1, 0x6c

    const-string v3, "l"

    aput-object v3, v0, v1

    const/16 v1, 0x6d

    const-string v3, "m"

    aput-object v3, v0, v1

    const/16 v1, 0x6e

    const-string v3, "n"

    aput-object v3, v0, v1

    const/16 v1, 0x6f

    const-string v3, "o"

    aput-object v3, v0, v1

    const/16 v1, 0x70

    const-string v3, "p"

    aput-object v3, v0, v1

    const/16 v1, 0x71

    const-string/jumbo v3, "q"

    aput-object v3, v0, v1

    const/16 v1, 0x72

    const-string/jumbo v3, "r"

    aput-object v3, v0, v1

    const/16 v1, 0x73

    const-string/jumbo v3, "s"

    aput-object v3, v0, v1

    const/16 v1, 0x74

    const-string/jumbo v3, "t"

    aput-object v3, v0, v1

    const/16 v1, 0x75

    const-string/jumbo v3, "u"

    aput-object v3, v0, v1

    const/16 v1, 0x76

    const-string/jumbo v3, "v"

    aput-object v3, v0, v1

    const/16 v1, 0x77

    const-string/jumbo v3, "w"

    aput-object v3, v0, v1

    const/16 v1, 0x78

    const-string/jumbo v3, "x"

    aput-object v3, v0, v1

    const/16 v1, 0x79

    const-string/jumbo v3, "y"

    aput-object v3, v0, v1

    const/16 v1, 0x7a

    const-string/jumbo v3, "z"

    aput-object v3, v0, v1

    const/16 v1, 0x7b

    const-string v3, "braceleft"

    aput-object v3, v0, v1

    const/16 v1, 0x7c

    const-string v3, "bar"

    aput-object v3, v0, v1

    const/16 v1, 0x7d

    const-string v3, "braceright"

    aput-object v3, v0, v1

    const/16 v1, 0x7e

    const-string v3, "asciitilde"

    aput-object v3, v0, v1

    const/16 v1, 0x7f

    const-string v3, "W7f"

    aput-object v3, v0, v1

    const/16 v1, 0x80

    const-string v3, "euro"

    aput-object v3, v0, v1

    const/16 v1, 0x81

    const-string v3, "W81"

    aput-object v3, v0, v1

    const/16 v1, 0x82

    const-string/jumbo v3, "quotesinglbase"

    aput-object v3, v0, v1

    const/16 v1, 0x83

    const-string v3, "florin"

    aput-object v3, v0, v1

    const/16 v1, 0x84

    const-string/jumbo v3, "quotedblbase"

    aput-object v3, v0, v1

    const/16 v1, 0x85

    const-string v3, "ellipsis"

    aput-object v3, v0, v1

    const/16 v1, 0x86

    const-string v3, "dagger"

    aput-object v3, v0, v1

    const/16 v1, 0x87

    const-string v3, "daggerdbl"

    aput-object v3, v0, v1

    const/16 v1, 0x88

    const-string v3, "circumflex"

    aput-object v3, v0, v1

    const/16 v1, 0x89

    const-string v3, "perthousand"

    aput-object v3, v0, v1

    const/16 v1, 0x8a

    const-string v3, "Scaron"

    aput-object v3, v0, v1

    const/16 v1, 0x8b

    const-string v3, "guilsinglleft"

    aput-object v3, v0, v1

    const/16 v1, 0x8c

    const-string v3, "OE"

    aput-object v3, v0, v1

    const/16 v1, 0x8d

    const-string v3, "W8d"

    aput-object v3, v0, v1

    const/16 v1, 0x8e

    const-string v3, "Zcaron"

    aput-object v3, v0, v1

    const/16 v1, 0x8f

    const-string v3, "W8f"

    aput-object v3, v0, v1

    const/16 v1, 0x90

    const-string v3, "W90"

    aput-object v3, v0, v1

    const/16 v1, 0x91

    const-string/jumbo v3, "quoteleft"

    aput-object v3, v0, v1

    const/16 v1, 0x92

    const-string/jumbo v3, "quoteright"

    aput-object v3, v0, v1

    const/16 v1, 0x93

    const-string/jumbo v3, "quotedblleft"

    aput-object v3, v0, v1

    const/16 v1, 0x94

    const-string/jumbo v3, "quotedblright"

    aput-object v3, v0, v1

    const/16 v1, 0x95

    const-string v3, "bullet"

    aput-object v3, v0, v1

    const/16 v1, 0x96

    const-string v3, "endash"

    aput-object v3, v0, v1

    const/16 v1, 0x97

    const-string v3, "emdash"

    aput-object v3, v0, v1

    const/16 v1, 0x98

    const-string/jumbo v3, "tilde"

    aput-object v3, v0, v1

    const/16 v1, 0x99

    const-string/jumbo v3, "trademark"

    aput-object v3, v0, v1

    const/16 v1, 0x9a

    const-string/jumbo v3, "scaron"

    aput-object v3, v0, v1

    const/16 v1, 0x9b

    const-string v3, "guilsinglright"

    aput-object v3, v0, v1

    const/16 v1, 0x9c

    const-string v3, "oe"

    aput-object v3, v0, v1

    const/16 v1, 0x9d

    const-string v3, "W9d"

    aput-object v3, v0, v1

    const/16 v1, 0x9e

    const-string/jumbo v3, "zcaron"

    aput-object v3, v0, v1

    const/16 v1, 0x9f

    const-string v3, "Ydieresis"

    aput-object v3, v0, v1

    const/16 v1, 0xa0

    const-string/jumbo v3, "reqspace"

    aput-object v3, v0, v1

    const/16 v1, 0xa1

    const-string v3, "exclamdown"

    aput-object v3, v0, v1

    const/16 v1, 0xa2

    const-string v3, "cent"

    aput-object v3, v0, v1

    const/16 v1, 0xa3

    const-string/jumbo v3, "sterling"

    aput-object v3, v0, v1

    const/16 v1, 0xa4

    const-string v3, "currency"

    aput-object v3, v0, v1

    const/16 v1, 0xa5

    const-string/jumbo v3, "yen"

    aput-object v3, v0, v1

    const/16 v1, 0xa6

    const-string v3, "brokenbar"

    aput-object v3, v0, v1

    const/16 v1, 0xa7

    const-string/jumbo v3, "section"

    aput-object v3, v0, v1

    const/16 v1, 0xa8

    const-string v3, "dieresis"

    aput-object v3, v0, v1

    const/16 v1, 0xa9

    const-string v3, "copyright"

    aput-object v3, v0, v1

    const/16 v1, 0xaa

    const-string v3, "ordfeminine"

    aput-object v3, v0, v1

    const/16 v1, 0xab

    const-string v3, "guillemotleft"

    aput-object v3, v0, v1

    const/16 v1, 0xac

    const-string v3, "logicalnot"

    aput-object v3, v0, v1

    const/16 v1, 0xad

    const-string/jumbo v3, "syllable"

    aput-object v3, v0, v1

    const/16 v1, 0xae

    const-string/jumbo v3, "registered"

    aput-object v3, v0, v1

    const/16 v1, 0xaf

    aput-object v2, v0, v1

    const/16 v1, 0xb0

    const-string v2, "degree"

    aput-object v2, v0, v1

    const/16 v1, 0xb1

    const-string v2, "plusminus"

    aput-object v2, v0, v1

    const/16 v1, 0xb2

    const-string/jumbo v2, "twosuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xb3

    const-string/jumbo v2, "threesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xb4

    const-string v2, "acute"

    aput-object v2, v0, v1

    const/16 v1, 0xb5

    const-string v2, "mu"

    aput-object v2, v0, v1

    const/16 v1, 0xb6

    const-string v2, "paragraph"

    aput-object v2, v0, v1

    const/16 v1, 0xb7

    const-string v2, "periodcentered"

    aput-object v2, v0, v1

    const/16 v1, 0xb8

    const-string v2, "cedilla"

    aput-object v2, v0, v1

    const/16 v1, 0xb9

    const-string v2, "onesuperior"

    aput-object v2, v0, v1

    const/16 v1, 0xba

    const-string v2, "ordmasculine"

    aput-object v2, v0, v1

    const/16 v1, 0xbb

    const-string v2, "guillemotright"

    aput-object v2, v0, v1

    const/16 v1, 0xbc

    const-string v2, "onequarter"

    aput-object v2, v0, v1

    const/16 v1, 0xbd

    const-string v2, "onehalf"

    aput-object v2, v0, v1

    const/16 v1, 0xbe

    const-string/jumbo v2, "threequarters"

    aput-object v2, v0, v1

    const/16 v1, 0xbf

    const-string/jumbo v2, "questiondown"

    aput-object v2, v0, v1

    const/16 v1, 0xc0

    const-string v2, "Agrave"

    aput-object v2, v0, v1

    const/16 v1, 0xc1

    const-string v2, "Aacute"

    aput-object v2, v0, v1

    const/16 v1, 0xc2

    const-string v2, "Acircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xc3

    const-string v2, "Atilde"

    aput-object v2, v0, v1

    const/16 v1, 0xc4

    const-string v2, "Adieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xc5

    const-string v2, "Aring"

    aput-object v2, v0, v1

    const/16 v1, 0xc6

    const-string v2, "AE"

    aput-object v2, v0, v1

    const/16 v1, 0xc7

    const-string v2, "Ccedilla"

    aput-object v2, v0, v1

    const/16 v1, 0xc8

    const-string v2, "Egrave"

    aput-object v2, v0, v1

    const/16 v1, 0xc9

    const-string v2, "Eacute"

    aput-object v2, v0, v1

    const/16 v1, 0xca

    const-string v2, "Ecircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xcb

    const-string v2, "Edieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xcc

    const-string v2, "Igrave"

    aput-object v2, v0, v1

    const/16 v1, 0xcd

    const-string v2, "Iacute"

    aput-object v2, v0, v1

    const/16 v1, 0xce

    const-string v2, "Icircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xcf

    const-string v2, "Idieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xd0

    const-string v2, "Eth"

    aput-object v2, v0, v1

    const/16 v1, 0xd1

    const-string v2, "Ntilde"

    aput-object v2, v0, v1

    const/16 v1, 0xd2

    const-string v2, "Ograve"

    aput-object v2, v0, v1

    const/16 v1, 0xd3

    const-string v2, "Oacute"

    aput-object v2, v0, v1

    const/16 v1, 0xd4

    const-string v2, "Ocircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xd5

    const-string v2, "Otilde"

    aput-object v2, v0, v1

    const/16 v1, 0xd6

    const-string v2, "Odieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xd7

    const-string v2, "multiply"

    aput-object v2, v0, v1

    const/16 v1, 0xd8

    const-string v2, "Oslash"

    aput-object v2, v0, v1

    const/16 v1, 0xd9

    const-string v2, "Ugrave"

    aput-object v2, v0, v1

    const/16 v1, 0xda

    const-string v2, "Uacute"

    aput-object v2, v0, v1

    const/16 v1, 0xdb

    const-string v2, "Ucircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xdc

    const-string v2, "Udieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xdd

    const-string v2, "Yacute"

    aput-object v2, v0, v1

    const/16 v1, 0xde

    const-string v2, "Thorn"

    aput-object v2, v0, v1

    const/16 v1, 0xdf

    const-string v2, "germandbls"

    aput-object v2, v0, v1

    const/16 v1, 0xe0

    const-string v2, "agrave"

    aput-object v2, v0, v1

    const/16 v1, 0xe1

    const-string v2, "aacute"

    aput-object v2, v0, v1

    const/16 v1, 0xe2

    const-string v2, "acircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xe3

    const-string v2, "atilde"

    aput-object v2, v0, v1

    const/16 v1, 0xe4

    const-string v2, "adieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xe5

    const-string v2, "aring"

    aput-object v2, v0, v1

    const/16 v1, 0xe6

    const-string v2, "ae"

    aput-object v2, v0, v1

    const/16 v1, 0xe7

    const-string v2, "ccedilla"

    aput-object v2, v0, v1

    const/16 v1, 0xe8

    const-string v2, "egrave"

    aput-object v2, v0, v1

    const/16 v1, 0xe9

    const-string v2, "eacute"

    aput-object v2, v0, v1

    const/16 v1, 0xea

    const-string v2, "ecircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xeb

    const-string v2, "edieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xec

    const-string v2, "igrave"

    aput-object v2, v0, v1

    const/16 v1, 0xed

    const-string v2, "iacute"

    aput-object v2, v0, v1

    const/16 v1, 0xee

    const-string v2, "icircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xef

    const-string v2, "idieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xf0

    const-string v2, "eth"

    aput-object v2, v0, v1

    const/16 v1, 0xf1

    const-string v2, "ntilde"

    aput-object v2, v0, v1

    const/16 v1, 0xf2

    const-string v2, "ograve"

    aput-object v2, v0, v1

    const/16 v1, 0xf3

    const-string v2, "oacute"

    aput-object v2, v0, v1

    const/16 v1, 0xf4

    const-string v2, "ocircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xf5

    const-string v2, "otilde"

    aput-object v2, v0, v1

    const/16 v1, 0xf6

    const-string v2, "odieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xf7

    const-string v2, "divide"

    aput-object v2, v0, v1

    const/16 v1, 0xf8

    const-string v2, "oslash"

    aput-object v2, v0, v1

    const/16 v1, 0xf9

    const-string/jumbo v2, "ugrave"

    aput-object v2, v0, v1

    const/16 v1, 0xfa

    const-string/jumbo v2, "uacute"

    aput-object v2, v0, v1

    const/16 v1, 0xfb

    const-string/jumbo v2, "ucircumflex"

    aput-object v2, v0, v1

    const/16 v1, 0xfc

    const-string/jumbo v2, "udieresis"

    aput-object v2, v0, v1

    const/16 v1, 0xfd

    const-string/jumbo v2, "yacute"

    aput-object v2, v0, v1

    const/16 v1, 0xfe

    const-string/jumbo v2, "thorn"

    aput-object v2, v0, v1

    const/16 v1, 0xff

    const-string/jumbo v2, "ydieresis"

    aput-object v2, v0, v1

    iput-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->WinChars:[Ljava/lang/String;

    .line 155
    iput-object p1, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    .line 156
    const-string v0, "ISO-8859-1"

    invoke-static {p2, v0}, Lcom/itextpdf/io/util/FileUtil;->createPrintWriter(Ljava/io/OutputStream;Ljava/lang/String;)Ljava/io/PrintWriter;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    .line 157
    return-void

    nop

    :array_0
    .array-data 4
        0x0
        0x0
        0x0
        0x0
        0xc5
        0xc6
        0xc7
        0x0
        0xca
        0x0
        0xcd
        0xce
        0xcf
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x20
        0x21
        0x22
        0x23
        0x24
        0x25
        0x26
        0xa9
        0x28
        0x29
        0x2a
        0x2b
        0x2c
        0x2d
        0x2e
        0x2f
        0x30
        0x31
        0x32
        0x33
        0x34
        0x35
        0x36
        0x37
        0x38
        0x39
        0x3a
        0x3b
        0x3c
        0x3d
        0x3e
        0x3f
        0x40
        0x41
        0x42
        0x43
        0x44
        0x45
        0x46
        0x47
        0x48
        0x49
        0x4a
        0x4b
        0x4c
        0x4d
        0x4e
        0x4f
        0x50
        0x51
        0x52
        0x53
        0x54
        0x55
        0x56
        0x57
        0x58
        0x59
        0x5a
        0x5b
        0x5c
        0x5d
        0x5e
        0x5f
        0xc1
        0x61
        0x62
        0x63
        0x64
        0x65
        0x66
        0x67
        0x68
        0x69
        0x6a
        0x6b
        0x6c
        0x6d
        0x6e
        0x6f
        0x70
        0x71
        0x72
        0x73
        0x74
        0x75
        0x76
        0x77
        0x78
        0x79
        0x7a
        0x7b
        0x7c
        0x7d
        0x7e
        0x7f
        0x80
        0x0
        0xb8
        0xa6
        0xb9
        0xbc
        0xb2
        0xb3
        0xc3
        0xbd
        0x0
        0xac
        0xea
        0x0
        0x0
        0x0
        0x0
        0x60
        0x0
        0xaa
        0xba
        0xb7
        0xb1
        0xd0
        0xc4
        0x0
        0x0
        0xad
        0xfa
        0x0
        0x0
        0x0
        0x0
        0xa1
        0xa2
        0xa3
        0xa8
        0xa5
        0x0
        0xa7
        0xc8
        0x0
        0xe3
        0xab
        0x0
        0x0
        0x0
        0xc5
        0x0
        0x0
        0x0
        0x0
        0xc2
        0x0
        0xb6
        0xb4
        0xcb
        0x0
        0xeb
        0xbb
        0x0
        0x0
        0x0
        0xbf
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xe1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xe9
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xfb
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xf1
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0xf9
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
        0x0
    .end array-data
.end method

.method public static convert(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Ljava/io/OutputStream;)V
    .locals 2
    .param p0, "input"    # Lcom/itextpdf/io/source/RandomAccessFileOrArray;
    .param p1, "output"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 166
    new-instance v0, Lcom/itextpdf/io/font/Pfm2afm;

    invoke-direct {v0, p0, p1}, Lcom/itextpdf/io/font/Pfm2afm;-><init>(Lcom/itextpdf/io/source/RandomAccessFileOrArray;Ljava/io/OutputStream;)V

    .line 167
    .local v0, "p":Lcom/itextpdf/io/font/Pfm2afm;
    invoke-direct {v0}, Lcom/itextpdf/io/font/Pfm2afm;->openpfm()V

    .line 168
    invoke-direct {v0}, Lcom/itextpdf/io/font/Pfm2afm;->putheader()V

    .line 169
    invoke-direct {v0}, Lcom/itextpdf/io/font/Pfm2afm;->putchartab()V

    .line 170
    invoke-direct {v0}, Lcom/itextpdf/io/font/Pfm2afm;->putkerntab()V

    .line 171
    invoke-direct {v0}, Lcom/itextpdf/io/font/Pfm2afm;->puttrailer()V

    .line 172
    iget-object v1, v0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    invoke-virtual {v1}, Ljava/io/PrintWriter;->flush()V

    .line 173
    return-void
.end method

.method private openpfm()V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 218
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 219
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->vers:S

    .line 220
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->h_len:I

    .line 221
    const/16 v0, 0x3c

    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/Pfm2afm;->readString(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->copyright:Ljava/lang/String;

    .line 222
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->type:S

    .line 223
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->points:S

    .line 224
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->verres:S

    .line 225
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->horres:S

    .line 226
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->ascent:S

    .line 227
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->intleading:S

    .line 228
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->extleading:S

    .line 229
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->italic:B

    .line 230
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->uline:B

    .line 231
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->overs:B

    .line 232
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->weight:S

    .line 233
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->charset:B

    .line 234
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->pixwidth:S

    .line 235
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->pixheight:S

    .line 236
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->kind:B

    .line 237
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->avgwidth:S

    .line 238
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->maxwidth:S

    .line 239
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->firstchar:I

    .line 240
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->lastchar:I

    .line 241
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->defchar:B

    .line 242
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v0

    int-to-byte v0, v0

    iput-byte v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->brkchar:B

    .line 243
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->widthby:S

    .line 244
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->device:I

    .line 245
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->face:I

    .line 246
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->bits:I

    .line 247
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->bitoff:I

    .line 248
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->extlen:S

    .line 249
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->psext:I

    .line 250
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->chartab:I

    .line 251
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->res1:I

    .line 252
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->kernpairs:I

    .line 253
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->res2:I

    .line 254
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readIntLE()I

    move-result v0

    iput v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->fontname:I

    .line 255
    iget v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->h_len:I

    int-to-long v0, v0

    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->length()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->extlen:S

    const/16 v1, 0x1e

    if-ne v0, v1, :cond_0

    iget v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->fontname:I

    const/16 v1, 0x4b

    if-lt v0, v1, :cond_0

    const/16 v1, 0x200

    if-gt v0, v1, :cond_0

    .line 258
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v1, p0, Lcom/itextpdf/io/font/Pfm2afm;->psext:I

    add-int/lit8 v1, v1, 0xe

    int-to-long v1, v1

    invoke-virtual {v0, v1, v2}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 259
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->capheight:S

    .line 260
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->xheight:S

    .line 261
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->ascender:S

    .line 262
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v0

    iput-short v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->descender:S

    .line 263
    return-void

    .line 256
    :cond_0
    new-instance v0, Ljava/io/IOException;

    const-string v1, "not.a.valid.pfm.file"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private outchar(IILjava/lang/String;)V
    .locals 2
    .param p1, "code"    # I
    .param p2, "width"    # I
    .param p3, "name"    # Ljava/lang/String;

    .line 206
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v1, "C "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 207
    invoke-direct {p0, p1}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 208
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v1, " ; WX "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 209
    invoke-direct {p0, p2}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 210
    if-eqz p3, :cond_0

    .line 211
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v1, " ; N "

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 212
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0, p3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 214
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v1, " ;\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 215
    return-void
.end method

.method private outval(I)V
    .locals 2
    .param p1, "n"    # I

    .line 198
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 199
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    invoke-virtual {v0, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 200
    return-void
.end method

.method private putchartab()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 355
    iget v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->lastchar:I

    iget v1, p0, Lcom/itextpdf/io/font/Pfm2afm;->firstchar:I

    sub-int/2addr v0, v1

    add-int/lit8 v0, v0, 0x1

    .line 356
    .local v0, "count":I
    new-array v1, v0, [I

    .line 357
    .local v1, "ctabs":[I
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v3, p0, Lcom/itextpdf/io/font/Pfm2afm;->chartab:I

    int-to-long v3, v3

    invoke-virtual {v2, v3, v4}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 358
    const/4 v2, 0x0

    .local v2, "k":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 359
    iget-object v3, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShortLE()I

    move-result v3

    aput v3, v1, v2

    .line 358
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 361
    .end local v2    # "k":I
    :cond_0
    const/16 v2, 0x100

    new-array v3, v2, [I

    .line 362
    .local v3, "back":[I
    iget-byte v4, p0, Lcom/itextpdf/io/font/Pfm2afm;->charset:B

    if-nez v4, :cond_2

    .line 363
    iget v4, p0, Lcom/itextpdf/io/font/Pfm2afm;->firstchar:I

    .local v4, "i":I
    :goto_1
    iget v5, p0, Lcom/itextpdf/io/font/Pfm2afm;->lastchar:I

    if-gt v4, v5, :cond_2

    .line 364
    iget-object v5, p0, Lcom/itextpdf/io/font/Pfm2afm;->Win2PSStd:[I

    aget v5, v5, v4

    if-eqz v5, :cond_1

    .line 365
    aput v4, v3, v5

    .line 363
    :cond_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 370
    .end local v4    # "i":I
    :cond_2
    iget-object v4, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v5, "StartCharMetrics"

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 371
    invoke-direct {p0, v0}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 372
    iget-object v4, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const/16 v5, 0xa

    invoke-virtual {v4, v5}, Ljava/io/PrintWriter;->print(C)V

    .line 375
    iget-byte v4, p0, Lcom/itextpdf/io/font/Pfm2afm;->charset:B

    if-eqz v4, :cond_5

    .line 380
    iget v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->firstchar:I

    .local v2, "i":I
    :goto_2
    iget v4, p0, Lcom/itextpdf/io/font/Pfm2afm;->lastchar:I

    if-gt v2, v4, :cond_4

    .line 381
    iget v4, p0, Lcom/itextpdf/io/font/Pfm2afm;->firstchar:I

    sub-int v5, v2, v4

    aget v5, v1, v5

    if-eqz v5, :cond_3

    .line 382
    sub-int v4, v2, v4

    aget v4, v1, v4

    const/4 v5, 0x0

    invoke-direct {p0, v2, v4, v5}, Lcom/itextpdf/io/font/Pfm2afm;->outchar(IILjava/lang/String;)V

    .line 380
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .end local v2    # "i":I
    :cond_4
    goto :goto_5

    .line 386
    :cond_5
    const/4 v4, 0x0

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v2, :cond_7

    .line 387
    aget v5, v3, v4

    .line 388
    .local v5, "j":I
    if-eqz v5, :cond_6

    .line 389
    iget v6, p0, Lcom/itextpdf/io/font/Pfm2afm;->firstchar:I

    sub-int v6, v5, v6

    aget v6, v1, v6

    iget-object v7, p0, Lcom/itextpdf/io/font/Pfm2afm;->WinChars:[Ljava/lang/String;

    aget-object v7, v7, v5

    invoke-direct {p0, v4, v6, v7}, Lcom/itextpdf/io/font/Pfm2afm;->outchar(IILjava/lang/String;)V

    .line 390
    iget v6, p0, Lcom/itextpdf/io/font/Pfm2afm;->firstchar:I

    sub-int v6, v5, v6

    const/4 v7, 0x0

    aput v7, v1, v6

    .line 386
    .end local v5    # "j":I
    :cond_6
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 394
    .end local v4    # "i":I
    :cond_7
    iget v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->firstchar:I

    .restart local v2    # "i":I
    :goto_4
    iget v4, p0, Lcom/itextpdf/io/font/Pfm2afm;->lastchar:I

    if-gt v2, v4, :cond_9

    .line 395
    iget v4, p0, Lcom/itextpdf/io/font/Pfm2afm;->firstchar:I

    sub-int v5, v2, v4

    aget v5, v1, v5

    if-eqz v5, :cond_8

    .line 396
    const/4 v5, -0x1

    sub-int v4, v2, v4

    aget v4, v1, v4

    iget-object v6, p0, Lcom/itextpdf/io/font/Pfm2afm;->WinChars:[Ljava/lang/String;

    aget-object v6, v6, v2

    invoke-direct {p0, v5, v4, v6}, Lcom/itextpdf/io/font/Pfm2afm;->outchar(IILjava/lang/String;)V

    .line 394
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 401
    .end local v2    # "i":I
    :cond_9
    :goto_5
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v4, "EndCharMetrics\n"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 403
    return-void
.end method

.method private putheader()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 266
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v1, "StartFontMetrics 2.0\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 267
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->copyright:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0xa

    if-lez v0, :cond_0

    .line 268
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Comment "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/itextpdf/io/font/Pfm2afm;->copyright:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 269
    :cond_0
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v2, "FontName "

    invoke-virtual {v0, v2}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 270
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    iget v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->fontname:I

    int-to-long v2, v2

    invoke-virtual {v0, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 271
    invoke-direct {p0}, Lcom/itextpdf/io/font/Pfm2afm;->readString()Ljava/lang/String;

    move-result-object v0

    .line 272
    .local v0, "fname":Ljava/lang/String;
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    invoke-virtual {v2, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 273
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "\nEncodingScheme "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 274
    iget-byte v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->charset:B

    if-eqz v2, :cond_1

    .line 275
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "FontSpecific\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_0

    .line 277
    :cond_1
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "AdobeStandardEncoding\n"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 284
    :goto_0
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "FullName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/16 v4, 0x2d

    const/16 v5, 0x20

    invoke-virtual {v0, v4, v5}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 285
    iget v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->face:I

    if-eqz v2, :cond_2

    .line 286
    iget-object v3, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v4, v2

    invoke-virtual {v3, v4, v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 287
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\nFamilyName "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-direct {p0}, Lcom/itextpdf/io/font/Pfm2afm;->readString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 290
    :cond_2
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "\nWeight "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 291
    iget-short v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->weight:S

    const/16 v3, 0x1db

    if-gt v2, v3, :cond_8

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "bold"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto :goto_1

    .line 293
    :cond_3
    iget-short v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->weight:S

    const/16 v3, 0x145

    if-ge v2, v3, :cond_4

    if-nez v2, :cond_5

    :cond_4
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "light"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 294
    :cond_5
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "Light"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 295
    :cond_6
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "black"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 296
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "Black"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 298
    :cond_7
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "Medium"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_2

    .line 292
    :cond_8
    :goto_1
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "Bold"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 301
    :goto_2
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "\nItalicAngle "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 302
    iget-byte v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->italic:B

    if-nez v2, :cond_a

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v2

    const-string v3, "italic"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_9

    goto :goto_3

    .line 307
    :cond_9
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    goto :goto_4

    .line 303
    :cond_a
    :goto_3
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "-12.00"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 314
    :goto_4
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "\nIsFixedPitch "

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 315
    iget-byte v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->kind:B

    const/4 v3, 0x1

    and-int/2addr v2, v3

    if-eqz v2, :cond_c

    iget-short v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->avgwidth:S

    iget-short v4, p0, Lcom/itextpdf/io/font/Pfm2afm;->maxwidth:S

    if-ne v2, v4, :cond_b

    goto :goto_5

    .line 321
    :cond_b
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "false"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 322
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->isMono:Z

    goto :goto_6

    .line 317
    :cond_c
    :goto_5
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string/jumbo v4, "true"

    invoke-virtual {v2, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 318
    iput-boolean v3, p0, Lcom/itextpdf/io/font/Pfm2afm;->isMono:Z

    .line 330
    :goto_6
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "\nFontBBox"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 331
    iget-boolean v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->isMono:Z

    if-eqz v2, :cond_d

    .line 332
    const/16 v2, -0x14

    invoke-direct {p0, v2}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    goto :goto_7

    .line 334
    :cond_d
    const/16 v2, -0x64

    invoke-direct {p0, v2}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 336
    :goto_7
    iget-short v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->descender:S

    add-int/lit8 v2, v2, 0x5

    neg-int v2, v2

    invoke-direct {p0, v2}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 337
    iget-short v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->maxwidth:S

    add-int/2addr v2, v1

    invoke-direct {p0, v2}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 338
    iget-short v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->ascent:S

    add-int/lit8 v2, v2, 0x5

    invoke-direct {p0, v2}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 343
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "\nCapHeight"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 344
    iget-short v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->capheight:S

    invoke-direct {p0, v2}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 345
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "\nXHeight"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 346
    iget-short v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->xheight:S

    invoke-direct {p0, v2}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 347
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "\nDescender"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 348
    iget-short v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->descender:S

    neg-int v2, v2

    invoke-direct {p0, v2}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 349
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v3, "\nAscender"

    invoke-virtual {v2, v3}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 350
    iget-short v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->ascender:S

    invoke-direct {p0, v2}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 351
    iget-object v2, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    invoke-virtual {v2, v1}, Ljava/io/PrintWriter;->print(C)V

    .line 352
    return-void
.end method

.method private putkerntab()V
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 406
    iget v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->kernpairs:I

    if-nez v0, :cond_0

    .line 407
    return-void

    .line 409
    :cond_0
    iget-object v1, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->seek(J)V

    .line 410
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readUnsignedShortLE()I

    move-result v0

    .line 411
    .local v0, "count":I
    const/4 v1, 0x0

    .line 412
    .local v1, "nzero":I
    mul-int/lit8 v2, v0, 0x3

    new-array v2, v2, [I

    .line 413
    .local v2, "kerns":[I
    const/4 v3, 0x0

    .local v3, "k":I
    :goto_0
    array-length v4, v2

    if-ge v3, v4, :cond_2

    .line 414
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "k":I
    .local v4, "k":I
    iget-object v5, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v5

    aput v5, v2, v3

    .line 415
    add-int/lit8 v3, v4, 0x1

    .end local v4    # "k":I
    .restart local v3    # "k":I
    iget-object v5, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v5

    aput v5, v2, v4

    .line 416
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "k":I
    .restart local v4    # "k":I
    iget-object v5, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v5}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readShortLE()S

    move-result v5

    aput v5, v2, v3

    if-eqz v5, :cond_1

    .line 417
    add-int/lit8 v1, v1, 0x1

    move v3, v4

    goto :goto_0

    .line 416
    :cond_1
    move v3, v4

    goto :goto_0

    .line 420
    .end local v4    # "k":I
    :cond_2
    if-nez v1, :cond_3

    .line 421
    return-void

    .line 422
    :cond_3
    iget-object v3, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v4, "StartKernData\nStartKernPairs"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 423
    invoke-direct {p0, v1}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 424
    iget-object v3, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const/16 v4, 0xa

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 425
    const/4 v3, 0x0

    .restart local v3    # "k":I
    :goto_1
    array-length v5, v2

    if-ge v3, v5, :cond_5

    .line 426
    add-int/lit8 v5, v3, 0x2

    aget v5, v2, v5

    if-eqz v5, :cond_4

    .line 427
    iget-object v5, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v6, "KPX "

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 428
    iget-object v5, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    iget-object v6, p0, Lcom/itextpdf/io/font/Pfm2afm;->WinChars:[Ljava/lang/String;

    aget v7, v2, v3

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 429
    iget-object v5, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const/16 v6, 0x20

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(C)V

    .line 430
    iget-object v5, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    iget-object v6, p0, Lcom/itextpdf/io/font/Pfm2afm;->WinChars:[Ljava/lang/String;

    add-int/lit8 v7, v3, 0x1

    aget v7, v2, v7

    aget-object v6, v6, v7

    invoke-virtual {v5, v6}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 431
    add-int/lit8 v5, v3, 0x2

    aget v5, v2, v5

    invoke-direct {p0, v5}, Lcom/itextpdf/io/font/Pfm2afm;->outval(I)V

    .line 432
    iget-object v5, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    invoke-virtual {v5, v4}, Ljava/io/PrintWriter;->print(C)V

    .line 425
    :cond_4
    add-int/lit8 v3, v3, 0x3

    goto :goto_1

    .line 436
    .end local v3    # "k":I
    :cond_5
    iget-object v3, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v4, "EndKernPairs\nEndKernData\n"

    invoke-virtual {v3, v4}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 437
    return-void
.end method

.method private puttrailer()V
    .locals 2

    .line 441
    iget-object v0, p0, Lcom/itextpdf/io/font/Pfm2afm;->output:Ljava/io/PrintWriter;

    const-string v1, "EndFontMetrics\n"

    invoke-virtual {v0, v1}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    .line 442
    return-void
.end method

.method private readString()Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 187
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 189
    .local v0, "buf":Ljava/lang/StringBuilder;
    :goto_0
    iget-object v1, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->read()I

    move-result v1

    .line 190
    .local v1, "c":I
    if-gtz v1, :cond_0

    .line 191
    nop

    .line 194
    .end local v1    # "c":I
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 192
    .restart local v1    # "c":I
    :cond_0
    int-to-char v2, v1

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 193
    .end local v1    # "c":I
    goto :goto_0
.end method

.method private readString(I)Ljava/lang/String;
    .locals 5
    .param p1, "n"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 176
    new-array v0, p1, [B

    .line 177
    .local v0, "b":[B
    iget-object v1, p0, Lcom/itextpdf/io/font/Pfm2afm;->input:Lcom/itextpdf/io/source/RandomAccessFileOrArray;

    invoke-virtual {v1, v0}, Lcom/itextpdf/io/source/RandomAccessFileOrArray;->readFully([B)V

    .line 179
    const/4 v1, 0x0

    .local v1, "k":I
    :goto_0
    array-length v2, v0

    if-ge v1, v2, :cond_1

    .line 180
    aget-byte v2, v0, v1

    if-nez v2, :cond_0

    .line 181
    goto :goto_1

    .line 179
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 183
    :cond_1
    :goto_1
    new-instance v2, Ljava/lang/String;

    const/4 v3, 0x0

    const-string v4, "ISO-8859-1"

    invoke-direct {v2, v0, v3, v1, v4}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    return-object v2
.end method
