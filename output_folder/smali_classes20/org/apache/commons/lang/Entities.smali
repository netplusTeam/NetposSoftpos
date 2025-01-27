.class Lorg/apache/commons/lang/Entities;
.super Ljava/lang/Object;
.source "Entities.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/commons/lang/Entities$BinaryEntityMap;,
        Lorg/apache/commons/lang/Entities$ArrayEntityMap;,
        Lorg/apache/commons/lang/Entities$LookupEntityMap;,
        Lorg/apache/commons/lang/Entities$TreeEntityMap;,
        Lorg/apache/commons/lang/Entities$HashEntityMap;,
        Lorg/apache/commons/lang/Entities$MapIntMap;,
        Lorg/apache/commons/lang/Entities$PrimitiveEntityMap;,
        Lorg/apache/commons/lang/Entities$EntityMap;
    }
.end annotation


# static fields
.field private static final APOS_ARRAY:[[Ljava/lang/String;

.field private static final BASIC_ARRAY:[[Ljava/lang/String;

.field public static final HTML32:Lorg/apache/commons/lang/Entities;

.field public static final HTML40:Lorg/apache/commons/lang/Entities;

.field static final HTML40_ARRAY:[[Ljava/lang/String;

.field static final ISO8859_1_ARRAY:[[Ljava/lang/String;

.field public static final XML:Lorg/apache/commons/lang/Entities;


# instance fields
.field private final map:Lorg/apache/commons/lang/Entities$EntityMap;


# direct methods
.method static constructor <clinit>()V
    .locals 16

    .line 45
    const/4 v0, 0x4

    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "quot"

    const-string v3, "34"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "amp"

    const-string v4, "38"

    filled-new-array {v2, v4}, [Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "lt"

    const-string v5, "60"

    filled-new-array {v2, v5}, [Ljava/lang/String;

    move-result-object v2

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "gt"

    const-string v6, "62"

    filled-new-array {v2, v6}, [Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x3

    aput-object v2, v1, v6

    sput-object v1, Lorg/apache/commons/lang/Entities;->BASIC_ARRAY:[[Ljava/lang/String;

    .line 51
    new-array v2, v4, [[Ljava/lang/String;

    const-string v7, "apos"

    const-string v8, "39"

    filled-new-array {v7, v8}, [Ljava/lang/String;

    move-result-object v7

    aput-object v7, v2, v3

    sput-object v2, Lorg/apache/commons/lang/Entities;->APOS_ARRAY:[[Ljava/lang/String;

    .line 55
    const/16 v7, 0x60

    new-array v8, v7, [[Ljava/lang/String;

    const-string v9, "nbsp"

    const-string v10, "160"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v3

    const-string v9, "iexcl"

    const-string v10, "161"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v4

    const-string v9, "cent"

    const-string v10, "162"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v5

    const-string v9, "pound"

    const-string v10, "163"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v6

    const-string v9, "curren"

    const-string v10, "164"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v8, v0

    const-string/jumbo v9, "yen"

    const-string v10, "165"

    filled-new-array {v9, v10}, [Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x5

    aput-object v9, v8, v10

    const-string v9, "brvbar"

    const-string v11, "166"

    filled-new-array {v9, v11}, [Ljava/lang/String;

    move-result-object v9

    const/4 v11, 0x6

    aput-object v9, v8, v11

    const-string v9, "sect"

    const-string v12, "167"

    filled-new-array {v9, v12}, [Ljava/lang/String;

    move-result-object v9

    const/4 v12, 0x7

    aput-object v9, v8, v12

    const-string/jumbo v9, "uml"

    const-string v13, "168"

    filled-new-array {v9, v13}, [Ljava/lang/String;

    move-result-object v9

    const/16 v13, 0x8

    aput-object v9, v8, v13

    const-string v9, "copy"

    const-string v14, "169"

    filled-new-array {v9, v14}, [Ljava/lang/String;

    move-result-object v9

    const/16 v14, 0x9

    aput-object v9, v8, v14

    const-string v9, "ordf"

    const-string v15, "170"

    filled-new-array {v9, v15}, [Ljava/lang/String;

    move-result-object v9

    const/16 v15, 0xa

    aput-object v9, v8, v15

    const-string v9, "laquo"

    const-string v7, "171"

    filled-new-array {v9, v7}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0xb

    aput-object v7, v8, v9

    const-string v7, "not"

    const-string v9, "172"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0xc

    aput-object v7, v8, v9

    const-string v7, "shy"

    const-string v9, "173"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0xd

    aput-object v7, v8, v9

    const-string v7, "reg"

    const-string v9, "174"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0xe

    aput-object v7, v8, v9

    const-string v7, "macr"

    const-string v9, "175"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0xf

    aput-object v7, v8, v9

    const-string v7, "deg"

    const-string v9, "176"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x10

    aput-object v7, v8, v9

    const-string v7, "plusmn"

    const-string v9, "177"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x11

    aput-object v7, v8, v9

    const-string v7, "sup2"

    const-string v9, "178"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x12

    aput-object v7, v8, v9

    const-string v7, "sup3"

    const-string v9, "179"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x13

    aput-object v7, v8, v9

    const-string v7, "acute"

    const-string v9, "180"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x14

    aput-object v7, v8, v9

    const-string v7, "micro"

    const-string v9, "181"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x15

    aput-object v7, v8, v9

    const-string v7, "para"

    const-string v9, "182"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x16

    aput-object v7, v8, v9

    const-string v7, "middot"

    const-string v9, "183"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x17

    aput-object v7, v8, v9

    const-string v7, "cedil"

    const-string v9, "184"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x18

    aput-object v7, v8, v9

    const-string v7, "sup1"

    const-string v9, "185"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x19

    aput-object v7, v8, v9

    const-string v7, "ordm"

    const-string v9, "186"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x1a

    aput-object v7, v8, v9

    const-string v7, "raquo"

    const-string v9, "187"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x1b

    aput-object v7, v8, v9

    const-string v7, "frac14"

    const-string v9, "188"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x1c

    aput-object v7, v8, v9

    const-string v7, "frac12"

    const-string v9, "189"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x1d

    aput-object v7, v8, v9

    const-string v7, "frac34"

    const-string v9, "190"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x1e

    aput-object v7, v8, v9

    const-string v7, "iquest"

    const-string v9, "191"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x1f

    aput-object v7, v8, v9

    const-string v7, "Agrave"

    const-string v9, "192"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x20

    aput-object v7, v8, v9

    const-string v7, "Aacute"

    const-string v9, "193"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x21

    aput-object v7, v8, v9

    const-string v7, "Acirc"

    const-string v9, "194"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x22

    aput-object v7, v8, v9

    const-string v7, "Atilde"

    const-string v9, "195"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x23

    aput-object v7, v8, v9

    const-string v7, "Auml"

    const-string v9, "196"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x24

    aput-object v7, v8, v9

    const-string v7, "Aring"

    const-string v9, "197"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x25

    aput-object v7, v8, v9

    const-string v7, "AElig"

    const-string v9, "198"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x26

    aput-object v7, v8, v9

    const-string v7, "Ccedil"

    const-string v9, "199"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x27

    aput-object v7, v8, v9

    const-string v7, "Egrave"

    const-string v9, "200"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x28

    aput-object v7, v8, v9

    const-string v7, "Eacute"

    const-string v9, "201"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x29

    aput-object v7, v8, v9

    const-string v7, "Ecirc"

    const-string v9, "202"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x2a

    aput-object v7, v8, v9

    const-string v7, "Euml"

    const-string v9, "203"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x2b

    aput-object v7, v8, v9

    const-string v7, "Igrave"

    const-string v9, "204"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x2c

    aput-object v7, v8, v9

    const-string v7, "Iacute"

    const-string v9, "205"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x2d

    aput-object v7, v8, v9

    const-string v7, "Icirc"

    const-string v9, "206"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x2e

    aput-object v7, v8, v9

    const-string v7, "Iuml"

    const-string v9, "207"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x2f

    aput-object v7, v8, v9

    const-string v7, "ETH"

    const-string v9, "208"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x30

    aput-object v7, v8, v9

    const-string v7, "Ntilde"

    const-string v9, "209"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x31

    aput-object v7, v8, v9

    const-string v7, "Ograve"

    const-string v9, "210"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x32

    aput-object v7, v8, v9

    const-string v7, "Oacute"

    const-string v9, "211"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x33

    aput-object v7, v8, v9

    const-string v7, "Ocirc"

    const-string v9, "212"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x34

    aput-object v7, v8, v9

    const-string v7, "Otilde"

    const-string v9, "213"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x35

    aput-object v7, v8, v9

    const-string v7, "Ouml"

    const-string v9, "214"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x36

    aput-object v7, v8, v9

    const-string/jumbo v7, "times"

    const-string v9, "215"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x37

    aput-object v7, v8, v9

    const-string v7, "Oslash"

    const-string v9, "216"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x38

    aput-object v7, v8, v9

    const-string v7, "Ugrave"

    const-string v9, "217"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x39

    aput-object v7, v8, v9

    const-string v7, "Uacute"

    const-string v9, "218"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x3a

    aput-object v7, v8, v9

    const-string v7, "Ucirc"

    const-string v9, "219"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x3b

    aput-object v7, v8, v9

    const-string v7, "Uuml"

    const-string v9, "220"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x3c

    aput-object v7, v8, v9

    const-string v7, "Yacute"

    const-string v9, "221"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x3d

    aput-object v7, v8, v9

    const-string v7, "THORN"

    const-string v9, "222"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x3e

    aput-object v7, v8, v9

    const-string/jumbo v7, "szlig"

    const-string v9, "223"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x3f

    aput-object v7, v8, v9

    const-string v7, "agrave"

    const-string v9, "224"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x40

    aput-object v7, v8, v9

    const-string v7, "aacute"

    const-string v9, "225"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x41

    aput-object v7, v8, v9

    const-string v7, "acirc"

    const-string v9, "226"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x42

    aput-object v7, v8, v9

    const-string v7, "atilde"

    const-string v9, "227"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x43

    aput-object v7, v8, v9

    const-string v7, "auml"

    const-string v9, "228"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x44

    aput-object v7, v8, v9

    const-string v7, "aring"

    const-string v9, "229"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x45

    aput-object v7, v8, v9

    const-string v7, "aelig"

    const-string v9, "230"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x46

    aput-object v7, v8, v9

    const-string v7, "ccedil"

    const-string v9, "231"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x47

    aput-object v7, v8, v9

    const-string v7, "egrave"

    const-string v9, "232"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x48

    aput-object v7, v8, v9

    const-string v7, "eacute"

    const-string v9, "233"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x49

    aput-object v7, v8, v9

    const-string v7, "ecirc"

    const-string v9, "234"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x4a

    aput-object v7, v8, v9

    const-string v7, "euml"

    const-string v9, "235"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x4b

    aput-object v7, v8, v9

    const-string v7, "igrave"

    const-string v9, "236"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x4c

    aput-object v7, v8, v9

    const-string v7, "iacute"

    const-string v9, "237"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x4d

    aput-object v7, v8, v9

    const-string v7, "icirc"

    const-string v9, "238"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x4e

    aput-object v7, v8, v9

    const-string v7, "iuml"

    const-string v9, "239"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x4f

    aput-object v7, v8, v9

    const-string v7, "eth"

    const-string v9, "240"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x50

    aput-object v7, v8, v9

    const-string v7, "ntilde"

    const-string v9, "241"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x51

    aput-object v7, v8, v9

    const-string v7, "ograve"

    const-string v9, "242"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x52

    aput-object v7, v8, v9

    const-string v7, "oacute"

    const-string v9, "243"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x53

    aput-object v7, v8, v9

    const-string v7, "ocirc"

    const-string v9, "244"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x54

    aput-object v7, v8, v9

    const-string v7, "otilde"

    const-string v9, "245"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x55

    aput-object v7, v8, v9

    const-string v7, "ouml"

    const-string v9, "246"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x56

    aput-object v7, v8, v9

    const-string v7, "divide"

    const-string v9, "247"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x57

    aput-object v7, v8, v9

    const-string v7, "oslash"

    const-string v9, "248"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x58

    aput-object v7, v8, v9

    const-string/jumbo v7, "ugrave"

    const-string v9, "249"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x59

    aput-object v7, v8, v9

    const-string/jumbo v7, "uacute"

    const-string v9, "250"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x5a

    aput-object v7, v8, v9

    const-string/jumbo v7, "ucirc"

    const-string v9, "251"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x5b

    aput-object v7, v8, v9

    const-string/jumbo v7, "uuml"

    const-string v9, "252"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x5c

    aput-object v7, v8, v9

    const-string/jumbo v7, "yacute"

    const-string v9, "253"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x5d

    aput-object v7, v8, v9

    const-string/jumbo v7, "thorn"

    const-string v9, "254"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x5e

    aput-object v7, v8, v9

    const-string/jumbo v7, "yuml"

    const-string v9, "255"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v7

    const/16 v9, 0x5f

    aput-object v7, v8, v9

    sput-object v8, Lorg/apache/commons/lang/Entities;->ISO8859_1_ARRAY:[[Ljava/lang/String;

    .line 155
    const/16 v7, 0x97

    new-array v7, v7, [[Ljava/lang/String;

    const-string v9, "fnof"

    const-string v15, "402"

    filled-new-array {v9, v15}, [Ljava/lang/String;

    move-result-object v9

    aput-object v9, v7, v3

    const-string v3, "Alpha"

    const-string v9, "913"

    filled-new-array {v3, v9}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v4

    const-string v3, "Beta"

    const-string v4, "914"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v5

    const-string v3, "Gamma"

    const-string v4, "915"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v6

    const-string v3, "Delta"

    const-string v4, "916"

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v7, v0

    const-string v0, "Epsilon"

    const-string v3, "917"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v10

    const-string v0, "Zeta"

    const-string v3, "918"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v11

    const-string v0, "Eta"

    const-string v3, "919"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v12

    const-string v0, "Theta"

    const-string v3, "920"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v13

    const-string v0, "Iota"

    const-string v3, "921"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    aput-object v0, v7, v14

    const-string v0, "Kappa"

    const-string v3, "922"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xa

    aput-object v0, v7, v3

    const-string v0, "Lambda"

    const-string v3, "923"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xb

    aput-object v0, v7, v3

    const-string v0, "Mu"

    const-string v3, "924"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xc

    aput-object v0, v7, v3

    const-string v0, "Nu"

    const-string v3, "925"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xd

    aput-object v0, v7, v3

    const-string v0, "Xi"

    const-string v3, "926"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xe

    aput-object v0, v7, v3

    const-string v0, "Omicron"

    const-string v3, "927"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0xf

    aput-object v0, v7, v3

    const-string v0, "Pi"

    const-string v3, "928"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x10

    aput-object v0, v7, v3

    const-string v0, "Rho"

    const-string v3, "929"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x11

    aput-object v0, v7, v3

    const-string v0, "Sigma"

    const-string v3, "931"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x12

    aput-object v0, v7, v3

    const-string v0, "Tau"

    const-string v3, "932"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x13

    aput-object v0, v7, v3

    const-string v0, "Upsilon"

    const-string v3, "933"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x14

    aput-object v0, v7, v3

    const-string v0, "Phi"

    const-string v3, "934"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x15

    aput-object v0, v7, v3

    const-string v0, "Chi"

    const-string v3, "935"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x16

    aput-object v0, v7, v3

    const-string v0, "Psi"

    const-string v3, "936"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x17

    aput-object v0, v7, v3

    const-string v0, "Omega"

    const-string v3, "937"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x18

    aput-object v0, v7, v3

    const-string v0, "alpha"

    const-string v3, "945"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x19

    aput-object v0, v7, v3

    const-string v0, "beta"

    const-string v3, "946"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1a

    aput-object v0, v7, v3

    const-string v0, "gamma"

    const-string v3, "947"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1b

    aput-object v0, v7, v3

    const-string v0, "delta"

    const-string v3, "948"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1c

    aput-object v0, v7, v3

    const-string v0, "epsilon"

    const-string v3, "949"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1d

    aput-object v0, v7, v3

    const-string/jumbo v0, "zeta"

    const-string v3, "950"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1e

    aput-object v0, v7, v3

    const-string v0, "eta"

    const-string v3, "951"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x1f

    aput-object v0, v7, v3

    const-string/jumbo v0, "theta"

    const-string v3, "952"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x20

    aput-object v0, v7, v3

    const-string v0, "iota"

    const-string v3, "953"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x21

    aput-object v0, v7, v3

    const-string v0, "kappa"

    const-string v3, "954"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x22

    aput-object v0, v7, v3

    const-string v0, "lambda"

    const-string v3, "955"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x23

    aput-object v0, v7, v3

    const-string v0, "mu"

    const-string v3, "956"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x24

    aput-object v0, v7, v3

    const-string v0, "nu"

    const-string v3, "957"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x25

    aput-object v0, v7, v3

    const-string/jumbo v0, "xi"

    const-string v3, "958"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x26

    aput-object v0, v7, v3

    const-string v0, "omicron"

    const-string v3, "959"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x27

    aput-object v0, v7, v3

    const-string v0, "pi"

    const-string v3, "960"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x28

    aput-object v0, v7, v3

    const-string v0, "rho"

    const-string v3, "961"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x29

    aput-object v0, v7, v3

    const-string v0, "sigmaf"

    const-string v3, "962"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2a

    aput-object v0, v7, v3

    const-string v0, "sigma"

    const-string v3, "963"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2b

    aput-object v0, v7, v3

    const-string/jumbo v0, "tau"

    const-string v3, "964"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2c

    aput-object v0, v7, v3

    const-string/jumbo v0, "upsilon"

    const-string v3, "965"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2d

    aput-object v0, v7, v3

    const-string v0, "phi"

    const-string v3, "966"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2e

    aput-object v0, v7, v3

    const-string v0, "chi"

    const-string v3, "967"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x2f

    aput-object v0, v7, v3

    const-string v0, "psi"

    const-string v3, "968"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x30

    aput-object v0, v7, v3

    const-string v0, "omega"

    const-string v3, "969"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x31

    aput-object v0, v7, v3

    const-string/jumbo v0, "thetasym"

    const-string v3, "977"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x32

    aput-object v0, v7, v3

    const-string/jumbo v0, "upsih"

    const-string v3, "978"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x33

    aput-object v0, v7, v3

    const-string v0, "piv"

    const-string v3, "982"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x34

    aput-object v0, v7, v3

    const-string v0, "bull"

    const-string v3, "8226"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x35

    aput-object v0, v7, v3

    const-string v0, "hellip"

    const-string v3, "8230"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x36

    aput-object v0, v7, v3

    const-string v0, "prime"

    const-string v3, "8242"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x37

    aput-object v0, v7, v3

    const-string v0, "Prime"

    const-string v3, "8243"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x38

    aput-object v0, v7, v3

    const-string v0, "oline"

    const-string v3, "8254"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x39

    aput-object v0, v7, v3

    const-string v0, "frasl"

    const-string v3, "8260"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3a

    aput-object v0, v7, v3

    const-string/jumbo v0, "weierp"

    const-string v3, "8472"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3b

    aput-object v0, v7, v3

    const-string v0, "image"

    const-string v3, "8465"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3c

    aput-object v0, v7, v3

    const-string v0, "real"

    const-string v3, "8476"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3d

    aput-object v0, v7, v3

    const-string/jumbo v0, "trade"

    const-string v3, "8482"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3e

    aput-object v0, v7, v3

    const-string v0, "alefsym"

    const-string v3, "8501"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x3f

    aput-object v0, v7, v3

    const-string v0, "larr"

    const-string v3, "8592"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x40

    aput-object v0, v7, v3

    const-string/jumbo v0, "uarr"

    const-string v3, "8593"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x41

    aput-object v0, v7, v3

    const-string v0, "rarr"

    const-string v3, "8594"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x42

    aput-object v0, v7, v3

    const-string v0, "darr"

    const-string v3, "8595"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x43

    aput-object v0, v7, v3

    const-string v0, "harr"

    const-string v3, "8596"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x44

    aput-object v0, v7, v3

    const-string v0, "crarr"

    const-string v3, "8629"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x45

    aput-object v0, v7, v3

    const-string v0, "lArr"

    const-string v3, "8656"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x46

    aput-object v0, v7, v3

    const-string/jumbo v0, "uArr"

    const-string v3, "8657"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x47

    aput-object v0, v7, v3

    const-string v0, "rArr"

    const-string v3, "8658"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x48

    aput-object v0, v7, v3

    const-string v0, "dArr"

    const-string v3, "8659"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x49

    aput-object v0, v7, v3

    const-string v0, "hArr"

    const-string v3, "8660"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x4a

    aput-object v0, v7, v3

    const-string v0, "forall"

    const-string v3, "8704"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x4b

    aput-object v0, v7, v3

    const-string v0, "part"

    const-string v3, "8706"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x4c

    aput-object v0, v7, v3

    const-string v0, "exist"

    const-string v3, "8707"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x4d

    aput-object v0, v7, v3

    const-string v0, "empty"

    const-string v3, "8709"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x4e

    aput-object v0, v7, v3

    const-string v0, "nabla"

    const-string v3, "8711"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x4f

    aput-object v0, v7, v3

    const-string v0, "isin"

    const-string v3, "8712"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x50

    aput-object v0, v7, v3

    const-string v0, "notin"

    const-string v3, "8713"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x51

    aput-object v0, v7, v3

    const-string v0, "ni"

    const-string v3, "8715"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x52

    aput-object v0, v7, v3

    const-string v0, "prod"

    const-string v3, "8719"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x53

    aput-object v0, v7, v3

    const-string v0, "sum"

    const-string v3, "8721"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x54

    aput-object v0, v7, v3

    const-string v0, "minus"

    const-string v3, "8722"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x55

    aput-object v0, v7, v3

    const-string v0, "lowast"

    const-string v3, "8727"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x56

    aput-object v0, v7, v3

    const-string v0, "radic"

    const-string v3, "8730"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x57

    aput-object v0, v7, v3

    const-string v0, "prop"

    const-string v3, "8733"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x58

    aput-object v0, v7, v3

    const-string v0, "infin"

    const-string v3, "8734"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x59

    aput-object v0, v7, v3

    const-string v0, "ang"

    const-string v3, "8736"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x5a

    aput-object v0, v7, v3

    const-string v0, "and"

    const-string v3, "8743"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x5b

    aput-object v0, v7, v3

    const-string v0, "or"

    const-string v3, "8744"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x5c

    aput-object v0, v7, v3

    const-string v0, "cap"

    const-string v3, "8745"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x5d

    aput-object v0, v7, v3

    const-string v0, "cup"

    const-string v3, "8746"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x5e

    aput-object v0, v7, v3

    const-string v0, "int"

    const-string v3, "8747"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x5f

    aput-object v0, v7, v3

    const-string/jumbo v0, "there4"

    const-string v3, "8756"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x60

    aput-object v0, v7, v3

    const-string v0, "sim"

    const-string v3, "8764"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x61

    aput-object v0, v7, v3

    const-string v0, "cong"

    const-string v3, "8773"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x62

    aput-object v0, v7, v3

    const-string v0, "asymp"

    const-string v3, "8776"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x63

    aput-object v0, v7, v3

    const-string v0, "ne"

    const-string v3, "8800"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x64

    aput-object v0, v7, v3

    const-string v0, "equiv"

    const-string v3, "8801"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x65

    aput-object v0, v7, v3

    const-string v0, "le"

    const-string v3, "8804"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x66

    aput-object v0, v7, v3

    const-string v0, "ge"

    const-string v3, "8805"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x67

    aput-object v0, v7, v3

    const-string v0, "sub"

    const-string v3, "8834"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x68

    aput-object v0, v7, v3

    const-string v0, "sup"

    const-string v3, "8835"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x69

    aput-object v0, v7, v3

    const-string v0, "sube"

    const-string v3, "8838"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x6a

    aput-object v0, v7, v3

    const-string v0, "supe"

    const-string v3, "8839"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x6b

    aput-object v0, v7, v3

    const-string v0, "oplus"

    const-string v3, "8853"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x6c

    aput-object v0, v7, v3

    const-string v0, "otimes"

    const-string v3, "8855"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x6d

    aput-object v0, v7, v3

    const-string v0, "perp"

    const-string v3, "8869"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x6e

    aput-object v0, v7, v3

    const-string v0, "sdot"

    const-string v3, "8901"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x6f

    aput-object v0, v7, v3

    const-string v0, "lceil"

    const-string v3, "8968"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x70

    aput-object v0, v7, v3

    const-string v0, "rceil"

    const-string v3, "8969"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x71

    aput-object v0, v7, v3

    const-string v0, "lfloor"

    const-string v3, "8970"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x72

    aput-object v0, v7, v3

    const-string v0, "rfloor"

    const-string v3, "8971"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x73

    aput-object v0, v7, v3

    const-string v0, "lang"

    const-string v3, "9001"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x74

    aput-object v0, v7, v3

    const-string v0, "rang"

    const-string v3, "9002"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x75

    aput-object v0, v7, v3

    const-string v0, "loz"

    const-string v3, "9674"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x76

    aput-object v0, v7, v3

    const-string v0, "spades"

    const-string v3, "9824"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x77

    aput-object v0, v7, v3

    const-string v0, "clubs"

    const-string v3, "9827"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x78

    aput-object v0, v7, v3

    const-string v0, "hearts"

    const-string v3, "9829"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x79

    aput-object v0, v7, v3

    const-string v0, "diams"

    const-string v3, "9830"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x7a

    aput-object v0, v7, v3

    const-string v0, "OElig"

    const-string v3, "338"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x7b

    aput-object v0, v7, v3

    const-string v0, "oelig"

    const-string v3, "339"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x7c

    aput-object v0, v7, v3

    const-string v0, "Scaron"

    const-string v3, "352"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x7d

    aput-object v0, v7, v3

    const-string v0, "scaron"

    const-string v3, "353"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x7e

    aput-object v0, v7, v3

    const-string v0, "Yuml"

    const-string v3, "376"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x7f

    aput-object v0, v7, v3

    const-string v0, "circ"

    const-string v3, "710"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x80

    aput-object v0, v7, v3

    const-string/jumbo v0, "tilde"

    const-string v3, "732"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x81

    aput-object v0, v7, v3

    const-string v0, "ensp"

    const-string v3, "8194"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x82

    aput-object v0, v7, v3

    const-string v0, "emsp"

    const-string v3, "8195"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x83

    aput-object v0, v7, v3

    const-string/jumbo v0, "thinsp"

    const-string v3, "8201"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x84

    aput-object v0, v7, v3

    const-string/jumbo v0, "zwnj"

    const-string v3, "8204"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x85

    aput-object v0, v7, v3

    const-string/jumbo v0, "zwj"

    const-string v3, "8205"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x86

    aput-object v0, v7, v3

    const-string v0, "lrm"

    const-string v3, "8206"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x87

    aput-object v0, v7, v3

    const-string v0, "rlm"

    const-string v3, "8207"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x88

    aput-object v0, v7, v3

    const-string v0, "ndash"

    const-string v3, "8211"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x89

    aput-object v0, v7, v3

    const-string v0, "mdash"

    const-string v3, "8212"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8a

    aput-object v0, v7, v3

    const-string v0, "lsquo"

    const-string v3, "8216"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8b

    aput-object v0, v7, v3

    const-string v0, "rsquo"

    const-string v3, "8217"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8c

    aput-object v0, v7, v3

    const-string v0, "sbquo"

    const-string v3, "8218"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8d

    aput-object v0, v7, v3

    const-string v0, "ldquo"

    const-string v3, "8220"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8e

    aput-object v0, v7, v3

    const-string v0, "rdquo"

    const-string v3, "8221"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x8f

    aput-object v0, v7, v3

    const-string v0, "bdquo"

    const-string v3, "8222"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x90

    aput-object v0, v7, v3

    const-string v0, "dagger"

    const-string v3, "8224"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x91

    aput-object v0, v7, v3

    const-string v0, "Dagger"

    const-string v3, "8225"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x92

    aput-object v0, v7, v3

    const-string v0, "permil"

    const-string v3, "8240"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x93

    aput-object v0, v7, v3

    const-string v0, "lsaquo"

    const-string v3, "8249"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x94

    aput-object v0, v7, v3

    const-string v0, "rsaquo"

    const-string v3, "8250"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x95

    aput-object v0, v7, v3

    const-string v0, "euro"

    const-string v3, "8364"

    filled-new-array {v0, v3}, [Ljava/lang/String;

    move-result-object v0

    const/16 v3, 0x96

    aput-object v0, v7, v3

    sput-object v7, Lorg/apache/commons/lang/Entities;->HTML40_ARRAY:[[Ljava/lang/String;

    .line 374
    new-instance v0, Lorg/apache/commons/lang/Entities;

    invoke-direct {v0}, Lorg/apache/commons/lang/Entities;-><init>()V

    .line 375
    .local v0, "xml":Lorg/apache/commons/lang/Entities;
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 376
    invoke-virtual {v0, v2}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 377
    sput-object v0, Lorg/apache/commons/lang/Entities;->XML:Lorg/apache/commons/lang/Entities;

    .line 381
    .end local v0    # "xml":Lorg/apache/commons/lang/Entities;
    new-instance v0, Lorg/apache/commons/lang/Entities;

    invoke-direct {v0}, Lorg/apache/commons/lang/Entities;-><init>()V

    .line 382
    .local v0, "html32":Lorg/apache/commons/lang/Entities;
    invoke-virtual {v0, v1}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 383
    invoke-virtual {v0, v8}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 384
    sput-object v0, Lorg/apache/commons/lang/Entities;->HTML32:Lorg/apache/commons/lang/Entities;

    .line 388
    .end local v0    # "html32":Lorg/apache/commons/lang/Entities;
    new-instance v0, Lorg/apache/commons/lang/Entities;

    invoke-direct {v0}, Lorg/apache/commons/lang/Entities;-><init>()V

    .line 389
    .local v0, "html40":Lorg/apache/commons/lang/Entities;
    invoke-static {v0}, Lorg/apache/commons/lang/Entities;->fillWithHtml40Entities(Lorg/apache/commons/lang/Entities;)V

    .line 390
    sput-object v0, Lorg/apache/commons/lang/Entities;->HTML40:Lorg/apache/commons/lang/Entities;

    .line 391
    .end local v0    # "html40":Lorg/apache/commons/lang/Entities;
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 748
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 749
    new-instance v0, Lorg/apache/commons/lang/Entities$LookupEntityMap;

    invoke-direct {v0}, Lorg/apache/commons/lang/Entities$LookupEntityMap;-><init>()V

    iput-object v0, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    .line 750
    return-void
.end method

.method constructor <init>(Lorg/apache/commons/lang/Entities$EntityMap;)V
    .locals 0
    .param p1, "emap"    # Lorg/apache/commons/lang/Entities$EntityMap;

    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    iput-object p1, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    .line 759
    return-void
.end method

.method private createStringWriter(Ljava/lang/String;)Ljava/io/StringWriter;
    .locals 7
    .param p1, "str"    # Ljava/lang/String;

    .line 917
    new-instance v0, Ljava/io/StringWriter;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    int-to-double v1, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    int-to-double v3, v3

    const-wide v5, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v3, v5

    add-double/2addr v1, v3

    double-to-int v1, v1

    invoke-direct {v0, v1}, Ljava/io/StringWriter;-><init>(I)V

    return-object v0
.end method

.method private doUnescape(Ljava/io/Writer;Ljava/lang/String;I)V
    .locals 17
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "str"    # Ljava/lang/String;
    .param p3, "firstAmp"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 961
    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const/4 v3, 0x0

    move/from16 v4, p3

    invoke-virtual {v1, v2, v3, v4}, Ljava/io/Writer;->write(Ljava/lang/String;II)V

    .line 962
    invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->length()I

    move-result v5

    .line 963
    .local v5, "len":I
    move/from16 v0, p3

    move v6, v0

    .local v6, "i":I
    :goto_0
    if-ge v6, v5, :cond_8

    .line 964
    invoke-virtual {v2, v6}, Ljava/lang/String;->charAt(I)C

    move-result v7

    .line 965
    .local v7, "c":C
    const/16 v8, 0x26

    const/4 v9, 0x1

    if-ne v7, v8, :cond_7

    .line 966
    add-int/lit8 v10, v6, 0x1

    .line 967
    .local v10, "nextIdx":I
    const/16 v11, 0x3b

    invoke-virtual {v2, v11, v10}, Ljava/lang/String;->indexOf(II)I

    move-result v12

    .line 968
    .local v12, "semiColonIdx":I
    const/4 v13, -0x1

    if-ne v12, v13, :cond_0

    .line 969
    invoke-virtual {v1, v7}, Ljava/io/Writer;->write(I)V

    .line 970
    move-object/from16 v3, p0

    goto/16 :goto_8

    .line 972
    :cond_0
    add-int/lit8 v0, v6, 0x1

    invoke-virtual {v2, v8, v0}, Ljava/lang/String;->indexOf(II)I

    move-result v14

    .line 973
    .local v14, "amphersandIdx":I
    if-eq v14, v13, :cond_1

    if-ge v14, v12, :cond_1

    .line 975
    invoke-virtual {v1, v7}, Ljava/io/Writer;->write(I)V

    .line 976
    move-object/from16 v3, p0

    goto/16 :goto_8

    .line 978
    :cond_1
    invoke-virtual {v2, v10, v12}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v15

    .line 979
    .local v15, "entityContent":Ljava/lang/String;
    const/16 v16, -0x1

    .line 980
    .local v16, "entityValue":I
    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v11

    .line 981
    .local v11, "entityContentLen":I
    if-lez v11, :cond_5

    .line 982
    invoke-virtual {v15, v3}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x23

    if-ne v0, v3, :cond_4

    .line 984
    if-le v11, v9, :cond_3

    .line 985
    invoke-virtual {v15, v9}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 987
    .local v3, "isHexChar":C
    sparse-switch v3, :sswitch_data_0

    .line 994
    :try_start_0
    invoke-virtual {v15, v9}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 990
    :sswitch_0
    const/4 v0, 0x2

    invoke-virtual {v15, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v8, 0x10

    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 991
    .end local v16    # "entityValue":I
    .local v0, "entityValue":I
    goto :goto_2

    .line 1000
    .end local v0    # "entityValue":I
    .restart local v16    # "entityValue":I
    :catch_0
    move-exception v0

    goto :goto_3

    .line 994
    :goto_1
    const/16 v8, 0xa

    invoke-static {v0, v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 997
    .end local v16    # "entityValue":I
    .restart local v0    # "entityValue":I
    :goto_2
    const v8, 0xffff

    if-le v0, v8, :cond_2

    .line 998
    const/4 v0, -0x1

    .line 1002
    :cond_2
    move/from16 v16, v0

    goto :goto_4

    .line 1001
    .local v0, "e":Ljava/lang/NumberFormatException;
    .restart local v16    # "entityValue":I
    :goto_3
    const/4 v8, -0x1

    move/from16 v16, v8

    .line 1003
    .end local v0    # "e":Ljava/lang/NumberFormatException;
    .end local v3    # "isHexChar":C
    :goto_4
    move-object/from16 v3, p0

    move/from16 v0, v16

    goto :goto_6

    .line 984
    :cond_3
    move-object/from16 v3, p0

    goto :goto_5

    .line 1005
    :cond_4
    move-object/from16 v3, p0

    invoke-virtual {v3, v15}, Lorg/apache/commons/lang/Entities;->entityValue(Ljava/lang/String;)I

    move-result v16

    move/from16 v0, v16

    goto :goto_6

    .line 981
    :cond_5
    move-object/from16 v3, p0

    .line 1009
    :goto_5
    move/from16 v0, v16

    .end local v16    # "entityValue":I
    .local v0, "entityValue":I
    :goto_6
    if-ne v0, v13, :cond_6

    .line 1010
    const/16 v8, 0x26

    invoke-virtual {v1, v8}, Ljava/io/Writer;->write(I)V

    .line 1011
    invoke-virtual {v1, v15}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 1012
    const/16 v8, 0x3b

    invoke-virtual {v1, v8}, Ljava/io/Writer;->write(I)V

    goto :goto_7

    .line 1014
    :cond_6
    invoke-virtual {v1, v0}, Ljava/io/Writer;->write(I)V

    .line 1016
    :goto_7
    move v6, v12

    .line 1017
    .end local v0    # "entityValue":I
    .end local v10    # "nextIdx":I
    .end local v11    # "entityContentLen":I
    .end local v12    # "semiColonIdx":I
    .end local v14    # "amphersandIdx":I
    .end local v15    # "entityContent":Ljava/lang/String;
    goto :goto_8

    .line 1018
    :cond_7
    move-object/from16 v3, p0

    invoke-virtual {v1, v7}, Ljava/io/Writer;->write(I)V

    .line 963
    .end local v7    # "c":C
    :goto_8
    add-int/2addr v6, v9

    const/4 v3, 0x0

    goto/16 :goto_0

    :cond_8
    move-object/from16 v3, p0

    .line 1021
    .end local v6    # "i":I
    return-void

    nop

    :sswitch_data_0
    .sparse-switch
        0x58 -> :sswitch_0
        0x78 -> :sswitch_0
    .end sparse-switch
.end method

.method static fillWithHtml40Entities(Lorg/apache/commons/lang/Entities;)V
    .locals 1
    .param p0, "entities"    # Lorg/apache/commons/lang/Entities;

    .line 402
    sget-object v0, Lorg/apache/commons/lang/Entities;->BASIC_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 403
    sget-object v0, Lorg/apache/commons/lang/Entities;->ISO8859_1_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 404
    sget-object v0, Lorg/apache/commons/lang/Entities;->HTML40_ARRAY:[[Ljava/lang/String;

    invoke-virtual {p0, v0}, Lorg/apache/commons/lang/Entities;->addEntities([[Ljava/lang/String;)V

    .line 405
    return-void
.end method


# virtual methods
.method public addEntities([[Ljava/lang/String;)V
    .locals 4
    .param p1, "entityArray"    # [[Ljava/lang/String;

    .line 770
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v1, p1

    if-ge v0, v1, :cond_0

    .line 771
    aget-object v1, p1, v0

    const/4 v2, 0x0

    aget-object v1, v1, v2

    aget-object v2, p1, v0

    const/4 v3, 0x1

    aget-object v2, v2, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lorg/apache/commons/lang/Entities;->addEntity(Ljava/lang/String;I)V

    .line 770
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 773
    .end local v0    # "i":I
    :cond_0
    return-void
.end method

.method public addEntity(Ljava/lang/String;I)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .line 786
    iget-object v0, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    invoke-interface {v0, p1, p2}, Lorg/apache/commons/lang/Entities$EntityMap;->add(Ljava/lang/String;I)V

    .line 787
    return-void
.end method

.method public entityName(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .line 799
    iget-object v0, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    invoke-interface {v0, p1}, Lorg/apache/commons/lang/Entities$EntityMap;->name(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public entityValue(Ljava/lang/String;)I
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 812
    iget-object v0, p0, Lorg/apache/commons/lang/Entities;->map:Lorg/apache/commons/lang/Entities$EntityMap;

    invoke-interface {v0, p1}, Lorg/apache/commons/lang/Entities$EntityMap;->value(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public escape(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .param p1, "str"    # Ljava/lang/String;

    .line 830
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/Entities;->createStringWriter(Ljava/lang/String;)Ljava/io/StringWriter;

    move-result-object v0

    .line 832
    .local v0, "stringWriter":Ljava/io/StringWriter;
    :try_start_0
    invoke-virtual {p0, v0, p1}, Lorg/apache/commons/lang/Entities;->escape(Ljava/io/Writer;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 837
    nop

    .line 838
    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 833
    :catch_0
    move-exception v1

    .line 836
    .local v1, "e":Ljava/io/IOException;
    new-instance v2, Lorg/apache/commons/lang/UnhandledException;

    invoke-direct {v2, v1}, Lorg/apache/commons/lang/UnhandledException;-><init>(Ljava/lang/Throwable;)V

    throw v2
.end method

.method public escape(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 6
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 859
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    .line 860
    .local v0, "len":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 861
    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 862
    .local v2, "c":C
    invoke-virtual {p0, v2}, Lorg/apache/commons/lang/Entities;->entityName(I)Ljava/lang/String;

    move-result-object v3

    .line 863
    .local v3, "entityName":Ljava/lang/String;
    const/16 v4, 0x3b

    if-nez v3, :cond_1

    .line 864
    const/16 v5, 0x7f

    if-le v2, v5, :cond_0

    .line 865
    const-string v5, "&#"

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 866
    const/16 v5, 0xa

    invoke-static {v2, v5}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 867
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 869
    :cond_0
    invoke-virtual {p1, v2}, Ljava/io/Writer;->write(I)V

    goto :goto_1

    .line 872
    :cond_1
    const/16 v5, 0x26

    invoke-virtual {p1, v5}, Ljava/io/Writer;->write(I)V

    .line 873
    invoke-virtual {p1, v3}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 874
    invoke-virtual {p1, v4}, Ljava/io/Writer;->write(I)V

    .line 860
    .end local v2    # "c":C
    .end local v3    # "entityName":Ljava/lang/String;
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 877
    .end local v1    # "i":I
    :cond_2
    return-void
.end method

.method public unescape(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "str"    # Ljava/lang/String;

    .line 894
    const/16 v0, 0x26

    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 895
    .local v0, "firstAmp":I
    if-gez v0, :cond_0

    .line 896
    return-object p1

    .line 898
    :cond_0
    invoke-direct {p0, p1}, Lorg/apache/commons/lang/Entities;->createStringWriter(Ljava/lang/String;)Ljava/io/StringWriter;

    move-result-object v1

    .line 900
    .local v1, "stringWriter":Ljava/io/StringWriter;
    :try_start_0
    invoke-direct {p0, v1, p1, v0}, Lorg/apache/commons/lang/Entities;->doUnescape(Ljava/io/Writer;Ljava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 905
    nop

    .line 906
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2

    .line 901
    :catch_0
    move-exception v2

    .line 904
    .local v2, "e":Ljava/io/IOException;
    new-instance v3, Lorg/apache/commons/lang/UnhandledException;

    invoke-direct {v3, v2}, Lorg/apache/commons/lang/UnhandledException;-><init>(Ljava/lang/Throwable;)V

    throw v3
.end method

.method public unescape(Ljava/io/Writer;Ljava/lang/String;)V
    .locals 1
    .param p1, "writer"    # Ljava/io/Writer;
    .param p2, "str"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 938
    const/16 v0, 0x26

    invoke-virtual {p2, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    .line 939
    .local v0, "firstAmp":I
    if-gez v0, :cond_0

    .line 940
    invoke-virtual {p1, p2}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 941
    return-void

    .line 943
    :cond_0
    invoke-direct {p0, p1, p2, v0}, Lorg/apache/commons/lang/Entities;->doUnescape(Ljava/io/Writer;Ljava/lang/String;I)V

    .line 945
    return-void
.end method
