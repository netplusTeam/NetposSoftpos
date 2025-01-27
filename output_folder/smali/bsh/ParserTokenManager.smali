.class public Lbsh/ParserTokenManager;
.super Ljava/lang/Object;
.source "ParserTokenManager.java"

# interfaces
.implements Lbsh/ParserConstants;


# static fields
.field static final jjbitVec0:[J

.field static final jjbitVec1:[J

.field static final jjbitVec3:[J

.field static final jjbitVec4:[J

.field static final jjbitVec5:[J

.field static final jjbitVec6:[J

.field static final jjbitVec7:[J

.field static final jjbitVec8:[J

.field static final jjnextStates:[I

.field public static final jjstrLiteralImages:[Ljava/lang/String;

.field static final jjtoSkip:[J

.field static final jjtoSpecial:[J

.field static final jjtoToken:[J

.field public static final lexStateNames:[Ljava/lang/String;


# instance fields
.field protected curChar:C

.field curLexState:I

.field public debugStream:Ljava/io/PrintStream;

.field defaultLexState:I

.field protected input_stream:Lbsh/JavaCharStream;

.field jjmatchedKind:I

.field jjmatchedPos:I

.field jjnewStateCnt:I

.field jjround:I

.field private final jjrounds:[I

.field private final jjstateSet:[I


# direct methods
.method static constructor <clinit>()V
    .locals 135

    .line 1319
    const/4 v0, 0x4

    new-array v1, v0, [J

    fill-array-data v1, :array_0

    sput-object v1, Lbsh/ParserTokenManager;->jjbitVec0:[J

    .line 1322
    new-array v1, v0, [J

    fill-array-data v1, :array_1

    sput-object v1, Lbsh/ParserTokenManager;->jjbitVec1:[J

    .line 1325
    new-array v1, v0, [J

    fill-array-data v1, :array_2

    sput-object v1, Lbsh/ParserTokenManager;->jjbitVec3:[J

    .line 1328
    new-array v1, v0, [J

    fill-array-data v1, :array_3

    sput-object v1, Lbsh/ParserTokenManager;->jjbitVec4:[J

    .line 1331
    new-array v1, v0, [J

    fill-array-data v1, :array_4

    sput-object v1, Lbsh/ParserTokenManager;->jjbitVec5:[J

    .line 1334
    new-array v1, v0, [J

    fill-array-data v1, :array_5

    sput-object v1, Lbsh/ParserTokenManager;->jjbitVec6:[J

    .line 1337
    new-array v1, v0, [J

    fill-array-data v1, :array_6

    sput-object v1, Lbsh/ParserTokenManager;->jjbitVec7:[J

    .line 1340
    new-array v0, v0, [J

    fill-array-data v0, :array_7

    sput-object v0, Lbsh/ParserTokenManager;->jjbitVec8:[J

    .line 1907
    const/16 v0, 0x39

    new-array v0, v0, [I

    fill-array-data v0, :array_8

    sput-object v0, Lbsh/ParserTokenManager;->jjnextStates:[I

    .line 1955
    const-string v1, ""

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const-string v11, "abstract"

    const-string v12, "boolean"

    const-string v13, "break"

    const-string v14, "class"

    const-string v15, "byte"

    const-string v16, "case"

    const-string v17, "catch"

    const-string v18, "char"

    const-string v19, "const"

    const-string v20, "continue"

    const-string v21, "default"

    const-string v22, "do"

    const-string v23, "double"

    const-string v24, "else"

    const-string v25, "enum"

    const-string v26, "extends"

    const-string v27, "false"

    const-string v28, "final"

    const-string v29, "finally"

    const-string v30, "float"

    const-string v31, "for"

    const-string v32, "goto"

    const-string v33, "if"

    const-string v34, "implements"

    const-string v35, "import"

    const-string v36, "instanceof"

    const-string v37, "int"

    const-string v38, "interface"

    const-string v39, "long"

    const-string v40, "native"

    const-string v41, "new"

    const-string v42, "null"

    const-string/jumbo v43, "package"

    const-string/jumbo v44, "private"

    const-string/jumbo v45, "protected"

    const-string/jumbo v46, "public"

    const-string/jumbo v47, "return"

    const-string/jumbo v48, "short"

    const-string/jumbo v49, "static"

    const-string/jumbo v50, "strictfp"

    const-string/jumbo v51, "switch"

    const-string/jumbo v52, "synchronized"

    const-string/jumbo v53, "transient"

    const-string/jumbo v54, "throw"

    const-string/jumbo v55, "throws"

    const-string/jumbo v56, "true"

    const-string/jumbo v57, "try"

    const-string/jumbo v58, "void"

    const-string/jumbo v59, "volatile"

    const-string/jumbo v60, "while"

    const/16 v61, 0x0

    const/16 v62, 0x0

    const/16 v63, 0x0

    const/16 v64, 0x0

    const/16 v65, 0x0

    const/16 v66, 0x0

    const/16 v67, 0x0

    const/16 v68, 0x0

    const/16 v69, 0x0

    const/16 v70, 0x0

    const/16 v71, 0x0

    const/16 v72, 0x0

    const-string v73, "("

    const-string v74, ")"

    const-string/jumbo v75, "{"

    const-string/jumbo v76, "}"

    const-string v77, "["

    const-string v78, "]"

    const-string v79, ";"

    const-string v80, ","

    const-string v81, "."

    const-string v82, "="

    const-string v83, ">"

    const-string v84, "@gt"

    const-string v85, "<"

    const-string v86, "@lt"

    const-string v87, "!"

    const-string/jumbo v88, "~"

    const-string v89, "?"

    const-string v90, ":"

    const-string v91, "=="

    const-string v92, "<="

    const-string v93, "@lteq"

    const-string v94, ">="

    const-string v95, "@gteq"

    const-string v96, "!="

    const-string/jumbo v97, "||"

    const-string v98, "@or"

    const-string v99, "&&"

    const-string v100, "@and"

    const-string v101, "++"

    const-string v102, "--"

    const-string v103, "+"

    const-string v104, "-"

    const-string v105, "*"

    const-string v106, "/"

    const-string v107, "&"

    const-string v108, "@bitwise_and"

    const-string/jumbo v109, "|"

    const-string v110, "@bitwise_or"

    const-string v111, "^"

    const-string v112, "%"

    const-string v113, "<<"

    const-string v114, "@left_shift"

    const-string v115, ">>"

    const-string v116, "@right_shift"

    const-string v117, ">>>"

    const-string v118, "@right_unsigned_shift"

    const-string v119, "+="

    const-string v120, "-="

    const-string v121, "*="

    const-string v122, "/="

    const-string v123, "&="

    const-string v124, "@and_assign"

    const-string/jumbo v125, "|="

    const-string v126, "@or_assign"

    const-string v127, "^="

    const-string v128, "%="

    const-string v129, "<<="

    const-string v130, "@left_shift_assign"

    const-string v131, ">>="

    const-string v132, "@right_shift_assign"

    const-string v133, ">>>="

    const-string v134, "@right_unsigned_shift_assign"

    filled-new-array/range {v1 .. v134}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbsh/ParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    .line 1986
    const-string v0, "DEFAULT"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbsh/ParserTokenManager;->lexStateNames:[Ljava/lang/String;

    .line 1989
    const/4 v0, 0x3

    new-array v1, v0, [J

    fill-array-data v1, :array_9

    sput-object v1, Lbsh/ParserTokenManager;->jjtoToken:[J

    .line 1992
    new-array v1, v0, [J

    fill-array-data v1, :array_a

    sput-object v1, Lbsh/ParserTokenManager;->jjtoSkip:[J

    .line 1995
    new-array v0, v0, [J

    fill-array-data v0, :array_b

    sput-object v0, Lbsh/ParserTokenManager;->jjtoSpecial:[J

    return-void

    :array_0
    .array-data 8
        0x0
        0x0
        -0x1
        -0x1
    .end array-data

    :array_1
    .array-data 8
        -0x2
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_2
    .array-data 8
        0x1ff00000fffffffeL
        -0x4000
        0xffffffffL
        0x600000000000000L
    .end array-data

    :array_3
    .array-data 8
        0x0
        0x0
        0x0
        -0x80000000800001L
    .end array-data

    :array_4
    .array-data 8
        0x0
        -0x1
        -0x1
        -0x1
    .end array-data

    :array_5
    .array-data 8
        -0x1
        -0x1
        0xffff
        0x0
    .end array-data

    :array_6
    .array-data 8
        -0x1
        -0x1
        0x0
        0x0
    .end array-data

    :array_7
    .array-data 8
        0x3fffffffffffL
        0x0
        0x0
        0x0
    .end array-data

    :array_8
    .array-data 4
        0x25
        0x26
        0x2b
        0x2c
        0x2f
        0x30
        0xf
        0x38
        0x3d
        0x49
        0x1a
        0x1b
        0x1d
        0x11
        0x13
        0x34
        0x36
        0x9
        0x39
        0x3a
        0x3c
        0x2
        0x3
        0x5
        0xb
        0xc
        0xf
        0x1a
        0x1b
        0x1f
        0x1d
        0x27
        0x28
        0xf
        0x2f
        0x30
        0xf
        0x3f
        0x40
        0x42
        0x45
        0x46
        0x48
        0xd
        0xe
        0x14
        0x15
        0x17
        0x1c
        0x1e
        0x20
        0x29
        0x2a
        0x2d
        0x2e
        0x31
        0x32
    .end array-data

    :array_9
    .array-data 8
        0x1ffffffffffffc01L    # 1.491668146239872E-154
        -0xc3
        0x3f
    .end array-data

    :array_a
    .array-data 8
        0x3fe
        0x0
        0x0
    .end array-data

    :array_b
    .array-data 8
        0x380
        0x0
        0x0
    .end array-data
.end method

.method public constructor <init>(Lbsh/JavaCharStream;)V
    .locals 1
    .param p1, "stream"    # Lbsh/JavaCharStream;

    .line 2003
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    sget-object v0, Ljava/lang/System;->out:Ljava/io/PrintStream;

    iput-object v0, p0, Lbsh/ParserTokenManager;->debugStream:Ljava/io/PrintStream;

    .line 1999
    const/16 v0, 0x4a

    new-array v0, v0, [I

    iput-object v0, p0, Lbsh/ParserTokenManager;->jjrounds:[I

    .line 2000
    const/16 v0, 0x94

    new-array v0, v0, [I

    iput-object v0, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    .line 2053
    const/4 v0, 0x0

    iput v0, p0, Lbsh/ParserTokenManager;->curLexState:I

    .line 2054
    iput v0, p0, Lbsh/ParserTokenManager;->defaultLexState:I

    .line 2006
    iput-object p1, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    .line 2007
    return-void
.end method

.method public constructor <init>(Lbsh/JavaCharStream;I)V
    .locals 0
    .param p1, "stream"    # Lbsh/JavaCharStream;
    .param p2, "lexState"    # I

    .line 2010
    invoke-direct {p0, p1}, Lbsh/ParserTokenManager;-><init>(Lbsh/JavaCharStream;)V

    .line 2011
    invoke-virtual {p0, p2}, Lbsh/ParserTokenManager;->SwitchTo(I)V

    .line 2012
    return-void
.end method

.method private final ReInitRounds()V
    .locals 3

    .line 2023
    const v0, -0x7fffffff

    iput v0, p0, Lbsh/ParserTokenManager;->jjround:I

    .line 2024
    const/16 v0, 0x4a

    .local v0, "i":I
    :goto_0
    add-int/lit8 v1, v0, -0x1

    .end local v0    # "i":I
    .local v1, "i":I
    if-lez v0, :cond_0

    .line 2025
    iget-object v0, p0, Lbsh/ParserTokenManager;->jjrounds:[I

    const/high16 v2, -0x80000000

    aput v2, v0, v1

    move v0, v1

    goto :goto_0

    .line 2026
    :cond_0
    return-void
.end method

.method private final jjAddStates(II)V
    .locals 3
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1300
    :goto_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v1, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    sget-object v2, Lbsh/ParserTokenManager;->jjnextStates:[I

    aget v2, v2, p1

    aput v2, v0, v1

    .line 1301
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "start":I
    .local v0, "start":I
    if-ne p1, p2, :cond_0

    .line 1302
    return-void

    .line 1301
    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private static final jjCanMove_0(IIIJJ)Z
    .locals 5
    .param p0, "hiByte"    # I
    .param p1, "i1"    # I
    .param p2, "i2"    # I
    .param p3, "l1"    # J
    .param p5, "l2"    # J

    .line 1915
    const/4 v0, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1920
    return v0

    .line 1918
    :pswitch_0
    sget-object v1, Lbsh/ParserTokenManager;->jjbitVec0:[J

    aget-wide v1, v1, p2

    and-long/2addr v1, p5

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static final jjCanMove_1(IIIJJ)Z
    .locals 6
    .param p0, "hiByte"    # I
    .param p1, "i1"    # I
    .param p2, "i2"    # I
    .param p3, "l1"    # J
    .param p5, "l2"    # J

    .line 1925
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    packed-switch p0, :pswitch_data_0

    .line 1930
    sget-object v4, Lbsh/ParserTokenManager;->jjbitVec1:[J

    aget-wide v4, v4, p1

    and-long/2addr v4, p3

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    .line 1931
    return v0

    .line 1928
    :pswitch_0
    sget-object v4, Lbsh/ParserTokenManager;->jjbitVec0:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 1932
    :cond_1
    return v1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method private static final jjCanMove_2(IIIJJ)Z
    .locals 6
    .param p0, "hiByte"    # I
    .param p1, "i1"    # I
    .param p2, "i2"    # I
    .param p3, "l1"    # J
    .param p5, "l2"    # J

    .line 1937
    const/4 v0, 0x1

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    sparse-switch p0, :sswitch_data_0

    .line 1950
    sget-object v4, Lbsh/ParserTokenManager;->jjbitVec3:[J

    aget-wide v4, v4, p1

    and-long/2addr v4, p3

    cmp-long v2, v4, v2

    if-eqz v2, :cond_5

    .line 1951
    return v0

    .line 1948
    :sswitch_0
    sget-object v4, Lbsh/ParserTokenManager;->jjbitVec8:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    return v0

    .line 1946
    :sswitch_1
    sget-object v4, Lbsh/ParserTokenManager;->jjbitVec7:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    return v0

    .line 1944
    :sswitch_2
    sget-object v4, Lbsh/ParserTokenManager;->jjbitVec6:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_2

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    return v0

    .line 1942
    :sswitch_3
    sget-object v4, Lbsh/ParserTokenManager;->jjbitVec5:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_3

    goto :goto_3

    :cond_3
    move v0, v1

    :goto_3
    return v0

    .line 1940
    :sswitch_4
    sget-object v4, Lbsh/ParserTokenManager;->jjbitVec4:[J

    aget-wide v4, v4, p2

    and-long/2addr v4, p5

    cmp-long v2, v4, v2

    if-eqz v2, :cond_4

    goto :goto_4

    :cond_4
    move v0, v1

    :goto_4
    return v0

    .line 1952
    :cond_5
    return v1

    :sswitch_data_0
    .sparse-switch
        0x0 -> :sswitch_4
        0x30 -> :sswitch_3
        0x31 -> :sswitch_2
        0x33 -> :sswitch_1
        0x3d -> :sswitch_0
    .end sparse-switch
.end method

.method private final jjCheckNAdd(I)V
    .locals 5
    .param p1, "state"    # I

    .line 1291
    iget-object v0, p0, Lbsh/ParserTokenManager;->jjrounds:[I

    aget v1, v0, p1

    iget v2, p0, Lbsh/ParserTokenManager;->jjround:I

    if-eq v1, v2, :cond_0

    .line 1293
    iget-object v1, p0, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v3, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v4, v3, 0x1

    iput v4, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    aput p1, v1, v3

    .line 1294
    aput v2, v0, p1

    .line 1296
    :cond_0
    return-void
.end method

.method private final jjCheckNAddStates(I)V
    .locals 2
    .param p1, "start"    # I

    .line 1316
    sget-object v0, Lbsh/ParserTokenManager;->jjnextStates:[I

    aget v1, v0, p1

    invoke-direct {p0, v1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    .line 1317
    add-int/lit8 v1, p1, 0x1

    aget v0, v0, v1

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    .line 1318
    return-void
.end method

.method private final jjCheckNAddStates(II)V
    .locals 1
    .param p1, "start"    # I
    .param p2, "end"    # I

    .line 1311
    :goto_0
    sget-object v0, Lbsh/ParserTokenManager;->jjnextStates:[I

    aget v0, v0, p1

    invoke-direct {p0, v0}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    .line 1312
    add-int/lit8 v0, p1, 0x1

    .end local p1    # "start":I
    .local v0, "start":I
    if-ne p1, p2, :cond_0

    .line 1313
    return-void

    .line 1312
    :cond_0
    move p1, v0

    goto :goto_0
.end method

.method private final jjCheckNAddTwoStates(II)V
    .locals 0
    .param p1, "state1"    # I
    .param p2, "state2"    # I

    .line 1305
    invoke-direct {p0, p1}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    .line 1306
    invoke-direct {p0, p2}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    .line 1307
    return-void
.end method

.method private final jjMoveNfa_0(II)I
    .locals 31
    .param p1, "startState"    # I
    .param p2, "curPos"    # I

    .line 1346
    move-object/from16 v1, p0

    const/4 v0, 0x0

    .line 1347
    .local v0, "startsAt":I
    const/16 v2, 0x4a

    iput v2, v1, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    .line 1348
    const/4 v2, 0x1

    .line 1349
    .local v2, "i":I
    iget-object v3, v1, Lbsh/ParserTokenManager;->jjstateSet:[I

    const/4 v4, 0x0

    aput p1, v3, v4

    .line 1350
    const v3, 0x7fffffff

    move v5, v3

    move v3, v2

    move v2, v0

    move/from16 v0, p2

    .line 1353
    .end local p2    # "curPos":I
    .local v0, "curPos":I
    .local v2, "startsAt":I
    .local v3, "i":I
    .local v5, "kind":I
    :goto_0
    iget v6, v1, Lbsh/ParserTokenManager;->jjround:I

    const/4 v7, 0x1

    add-int/2addr v6, v7

    iput v6, v1, Lbsh/ParserTokenManager;->jjround:I

    const v8, 0x7fffffff

    if-ne v6, v8, :cond_0

    .line 1354
    invoke-direct/range {p0 .. p0}, Lbsh/ParserTokenManager;->ReInitRounds()V

    .line 1355
    :cond_0
    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    const/16 v8, 0x3e

    const/16 v9, 0x2f

    const/4 v12, 0x7

    const/16 v14, 0x40

    const/16 v15, 0x9

    const/16 v11, 0xa

    const/16 v10, 0x3f

    const/16 v4, 0x12

    const/16 v13, 0x45

    const-wide/16 v18, 0x0

    if-ge v6, v14, :cond_5d

    .line 1357
    const-wide/16 v20, 0x1

    shl-long v20, v20, v6

    .line 1360
    .local v20, "l":J
    :goto_1
    iget-object v6, v1, Lbsh/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v22, v6, v3

    const-wide/high16 v26, 0xff000000000000L

    const/16 v14, 0x2a

    const-wide/high16 v29, 0x3ff000000000000L

    packed-switch v22, :pswitch_data_0

    :pswitch_0
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1706
    :pswitch_1
    iget-char v7, v1, Lbsh/ParserTokenManager;->curChar:C

    if-ne v7, v14, :cond_1

    .line 1707
    iget v7, v1, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v7, 0x1

    iput v14, v1, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x43

    aput v14, v6, v7

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1706
    :cond_1
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1702
    :pswitch_2
    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    if-ne v6, v9, :cond_2

    const/16 v6, 0x44

    if-le v5, v6, :cond_2

    .line 1703
    const/16 v5, 0x44

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1702
    :cond_2
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1698
    :pswitch_3
    const-wide v6, -0x40000000001L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_3

    .line 1699
    const/16 v6, 0x47

    invoke-direct {v1, v6, v13}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1698
    :cond_3
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1694
    :pswitch_4
    const-wide v6, -0x840000000001L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_4

    .line 1695
    const/16 v6, 0x47

    invoke-direct {v1, v6, v13}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1694
    :cond_4
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1690
    :pswitch_5
    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    if-ne v6, v14, :cond_5

    .line 1691
    const/16 v6, 0x28

    invoke-direct {v1, v6, v14}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1690
    :cond_5
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1686
    :pswitch_6
    const-wide v6, -0x40000000001L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_6

    .line 1687
    const/16 v6, 0x44

    invoke-direct {v1, v6, v13}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1686
    :cond_6
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1682
    :pswitch_7
    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    if-ne v6, v14, :cond_7

    .line 1683
    const/16 v6, 0x44

    invoke-direct {v1, v6, v13}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1682
    :cond_7
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1678
    :pswitch_8
    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    if-ne v6, v9, :cond_8

    if-le v5, v15, :cond_8

    .line 1679
    const/16 v5, 0x9

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1678
    :cond_8
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1674
    :pswitch_9
    const-wide v6, -0x40000000001L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_9

    .line 1675
    const/16 v6, 0x41

    invoke-direct {v1, v6, v10}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1674
    :cond_9
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1670
    :pswitch_a
    const-wide v6, -0x840000000001L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_a

    .line 1671
    const/16 v6, 0x41

    invoke-direct {v1, v6, v10}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1670
    :cond_a
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1666
    :pswitch_b
    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    if-ne v6, v14, :cond_b

    .line 1667
    const/16 v6, 0x25

    const/16 v7, 0x27

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1666
    :cond_b
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1662
    :pswitch_c
    const-wide v6, -0x40000000001L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_c

    .line 1663
    invoke-direct {v1, v8, v10}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1662
    :cond_c
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1658
    :pswitch_d
    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    if-ne v6, v14, :cond_d

    .line 1659
    invoke-direct {v1, v8}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1658
    :cond_d
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1654
    :pswitch_e
    iget-char v7, v1, Lbsh/ParserTokenManager;->curChar:C

    const/16 v14, 0xd

    if-ne v7, v14, :cond_e

    .line 1655
    iget v7, v1, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v7, 0x1

    iput v14, v1, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/16 v14, 0x3b

    aput v14, v6, v7

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1654
    :cond_e
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1650
    :pswitch_f
    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    if-ne v6, v11, :cond_f

    if-le v5, v12, :cond_f

    .line 1651
    const/4 v5, 0x7

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1650
    :cond_f
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1646
    :pswitch_10
    const-wide/16 v6, 0x2400

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_10

    if-le v5, v12, :cond_10

    .line 1647
    const/4 v5, 0x7

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1646
    :cond_10
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1639
    :pswitch_11
    const-wide/16 v6, -0x2401

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-nez v6, :cond_11

    .line 1640
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1641
    :cond_11
    if-le v5, v12, :cond_12

    .line 1642
    const/4 v5, 0x7

    .line 1643
    :cond_12
    const/16 v6, 0x14

    invoke-direct {v1, v4, v6}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    .line 1644
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1401
    :pswitch_12
    iget-char v7, v1, Lbsh/ParserTokenManager;->curChar:C

    if-ne v7, v14, :cond_13

    .line 1402
    iget v7, v1, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v7, 0x1

    iput v10, v1, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/16 v10, 0x43

    aput v10, v6, v7

    goto :goto_2

    .line 1403
    :cond_13
    if-ne v7, v9, :cond_15

    .line 1405
    if-le v5, v12, :cond_14

    .line 1406
    const/4 v5, 0x7

    .line 1407
    :cond_14
    const/16 v6, 0x14

    invoke-direct {v1, v4, v6}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    .line 1409
    :cond_15
    :goto_2
    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    if-ne v6, v14, :cond_16

    .line 1410
    invoke-direct {v1, v8}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    .line 1711
    :cond_16
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1635
    :pswitch_13
    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    if-ne v6, v9, :cond_17

    .line 1636
    invoke-direct {v1, v12, v15}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1635
    :cond_17
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1628
    :pswitch_14
    and-long v6, v20, v26

    cmp-long v6, v6, v18

    if-nez v6, :cond_18

    .line 1629
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1630
    :cond_18
    const/16 v6, 0x3c

    if-le v5, v6, :cond_19

    .line 1631
    const/16 v5, 0x3c

    .line 1632
    :cond_19
    const/16 v6, 0x36

    invoke-direct {v1, v6, v15}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1633
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1621
    :pswitch_15
    and-long v6, v20, v29

    cmp-long v6, v6, v18

    if-nez v6, :cond_1a

    .line 1622
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1623
    :cond_1a
    const/16 v6, 0x3c

    if-le v5, v6, :cond_1b

    .line 1624
    const/16 v5, 0x3c

    .line 1625
    :cond_1b
    const/16 v6, 0x35

    invoke-direct {v1, v6, v15}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1626
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1614
    :pswitch_16
    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    const/16 v7, 0x30

    if-eq v6, v7, :cond_1c

    .line 1615
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1616
    :cond_1c
    const/16 v6, 0x3c

    if-le v5, v6, :cond_1d

    .line 1617
    const/16 v5, 0x3c

    .line 1618
    :cond_1d
    const/16 v6, 0x11

    const/16 v7, 0xf

    invoke-direct {v1, v7, v6}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    .line 1619
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1610
    :pswitch_17
    const/16 v7, 0xf

    and-long v24, v20, v29

    cmp-long v6, v24, v18

    if-eqz v6, :cond_1e

    .line 1611
    const/16 v6, 0x32

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1610
    :cond_1e
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1606
    :pswitch_18
    const-wide v6, 0x280000000000L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_1f

    .line 1607
    const/16 v6, 0x32

    invoke-direct {v1, v6}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1606
    :cond_1f
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1602
    :pswitch_19
    and-long v6, v20, v29

    cmp-long v6, v6, v18

    if-eqz v6, :cond_20

    .line 1603
    const/16 v6, 0x22

    const/16 v7, 0x24

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1602
    :cond_20
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1595
    :pswitch_1a
    and-long v6, v20, v29

    cmp-long v6, v6, v18

    if-nez v6, :cond_21

    .line 1596
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1597
    :cond_21
    const/16 v6, 0x40

    if-le v5, v6, :cond_22

    .line 1598
    const/16 v5, 0x40

    .line 1599
    :cond_22
    const/16 v6, 0x2e

    const/16 v7, 0xf

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1600
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1591
    :pswitch_1b
    const/16 v6, 0x2e

    const-wide v24, 0x280000000000L

    and-long v24, v20, v24

    cmp-long v7, v24, v18

    if-eqz v7, :cond_23

    .line 1592
    invoke-direct {v1, v6}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1591
    :cond_23
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1587
    :pswitch_1c
    and-long v6, v20, v29

    cmp-long v6, v6, v18

    if-eqz v6, :cond_24

    .line 1588
    const/16 v6, 0x2b

    const/16 v7, 0x2c

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1587
    :cond_24
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1580
    :pswitch_1d
    and-long v6, v20, v29

    cmp-long v6, v6, v18

    if-nez v6, :cond_25

    .line 1581
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1582
    :cond_25
    const/16 v6, 0x40

    if-le v5, v6, :cond_26

    .line 1583
    const/16 v5, 0x40

    .line 1584
    :cond_26
    const/16 v6, 0xf

    invoke-direct {v1, v14, v6}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1585
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1576
    :pswitch_1e
    const-wide v6, 0x280000000000L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_27

    .line 1577
    invoke-direct {v1, v14}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1576
    :cond_27
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1569
    :pswitch_1f
    and-long v6, v20, v29

    cmp-long v6, v6, v18

    if-nez v6, :cond_28

    .line 1570
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1571
    :cond_28
    const/16 v6, 0x40

    if-le v5, v6, :cond_29

    .line 1572
    const/16 v5, 0x40

    .line 1573
    :cond_29
    const/16 v6, 0x1f

    const/16 v7, 0x21

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    .line 1574
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1562
    :pswitch_20
    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    const/16 v7, 0x2e

    if-eq v6, v7, :cond_2a

    .line 1563
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1564
    :cond_2a
    const/16 v6, 0x40

    if-le v5, v6, :cond_2b

    .line 1565
    const/16 v5, 0x40

    .line 1566
    :cond_2b
    const/16 v6, 0x1f

    const/16 v7, 0x21

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    .line 1567
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1558
    :pswitch_21
    and-long v6, v20, v29

    cmp-long v6, v6, v18

    if-eqz v6, :cond_2c

    .line 1559
    const/16 v6, 0x25

    const/16 v7, 0x26

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1558
    :cond_2c
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1554
    :pswitch_22
    and-long v6, v20, v29

    cmp-long v6, v6, v18

    if-eqz v6, :cond_2d

    .line 1555
    const/4 v6, 0x0

    const/4 v7, 0x6

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1554
    :cond_2d
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1547
    :pswitch_23
    const-wide v6, 0x3ff001000000000L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-nez v6, :cond_2e

    .line 1548
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1549
    :cond_2e
    if-le v5, v13, :cond_2f

    .line 1550
    const/16 v5, 0x45

    .line 1551
    :cond_2f
    const/16 v6, 0x23

    invoke-direct {v1, v6}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    .line 1552
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1540
    :pswitch_24
    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    const/16 v7, 0x24

    if-eq v6, v7, :cond_30

    .line 1541
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1542
    :cond_30
    if-le v5, v13, :cond_31

    .line 1543
    const/16 v5, 0x45

    .line 1544
    :cond_31
    const/16 v6, 0x23

    invoke-direct {v1, v6}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    .line 1545
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1536
    :pswitch_25
    and-long v6, v20, v26

    cmp-long v6, v6, v18

    if-eqz v6, :cond_32

    .line 1537
    const/16 v6, 0x1f

    invoke-direct {v1, v6}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1536
    :cond_32
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1532
    :pswitch_26
    const-wide/high16 v24, 0xf000000000000L

    and-long v24, v20, v24

    cmp-long v7, v24, v18

    if-eqz v7, :cond_33

    .line 1533
    iget v7, v1, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v7, 0x1

    iput v10, v1, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/16 v10, 0x21

    aput v10, v6, v7

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1532
    :cond_33
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1528
    :pswitch_27
    and-long v6, v20, v26

    cmp-long v6, v6, v18

    if-eqz v6, :cond_34

    .line 1529
    const/16 v6, 0xc

    invoke-direct {v1, v11, v6}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1528
    :cond_34
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1524
    :pswitch_28
    and-long v6, v20, v26

    cmp-long v6, v6, v18

    if-eqz v6, :cond_35

    .line 1525
    const/16 v6, 0x1b

    const/16 v7, 0x1e

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1524
    :cond_35
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1520
    :pswitch_29
    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    const/16 v7, 0x22

    if-ne v6, v7, :cond_36

    const/16 v6, 0x43

    if-le v5, v6, :cond_36

    .line 1521
    const/16 v5, 0x43

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1520
    :cond_36
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1516
    :pswitch_2a
    const-wide v6, 0x8400000000L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_37

    .line 1517
    const/16 v6, 0xc

    invoke-direct {v1, v11, v6}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1516
    :cond_37
    const/16 v6, 0xc

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1512
    :pswitch_2b
    const/16 v6, 0xc

    const-wide v24, -0x400002401L

    and-long v24, v20, v24

    cmp-long v7, v24, v18

    if-eqz v7, :cond_38

    .line 1513
    invoke-direct {v1, v11, v6}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1512
    :cond_38
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1508
    :pswitch_2c
    const/16 v6, 0xc

    iget-char v7, v1, Lbsh/ParserTokenManager;->curChar:C

    const/16 v10, 0x22

    if-ne v7, v10, :cond_39

    .line 1509
    invoke-direct {v1, v11, v6}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1508
    :cond_39
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1504
    :pswitch_2d
    and-long v6, v20, v26

    cmp-long v6, v6, v18

    if-eqz v6, :cond_3a

    .line 1505
    const/16 v6, 0x16

    invoke-direct {v1, v6}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1504
    :cond_3a
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1500
    :pswitch_2e
    const-wide/high16 v24, 0xf000000000000L

    and-long v24, v20, v24

    cmp-long v7, v24, v18

    if-eqz v7, :cond_3b

    .line 1501
    iget v7, v1, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v7, 0x1

    iput v10, v1, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/16 v10, 0x18

    aput v10, v6, v7

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1500
    :cond_3b
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1496
    :pswitch_2f
    and-long v6, v20, v26

    cmp-long v6, v6, v18

    if-eqz v6, :cond_3c

    .line 1497
    invoke-direct {v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1496
    :cond_3c
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1492
    :pswitch_30
    and-long v6, v20, v26

    cmp-long v6, v6, v18

    if-eqz v6, :cond_3d

    .line 1493
    const/16 v6, 0x16

    invoke-direct {v1, v6, v4}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1492
    :cond_3d
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1488
    :pswitch_31
    const-wide v6, 0x8400000000L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_3e

    .line 1489
    invoke-direct {v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1488
    :cond_3e
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1484
    :pswitch_32
    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    const/16 v7, 0x27

    if-ne v6, v7, :cond_3f

    const/16 v6, 0x42

    if-le v5, v6, :cond_3f

    .line 1485
    const/16 v5, 0x42

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1484
    :cond_3f
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1480
    :pswitch_33
    const-wide v6, -0x8000002401L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_40

    .line 1481
    invoke-direct {v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1480
    :cond_40
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1476
    :pswitch_34
    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    const/16 v7, 0x27

    if-ne v6, v7, :cond_41

    .line 1477
    const/16 v6, 0xd

    const/16 v7, 0xe

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1476
    :cond_41
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1469
    :pswitch_35
    and-long v6, v20, v29

    cmp-long v6, v6, v18

    if-nez v6, :cond_42

    .line 1470
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1471
    :cond_42
    const/16 v6, 0x40

    if-le v5, v6, :cond_43

    .line 1472
    const/16 v5, 0x40

    .line 1473
    :cond_43
    const/16 v6, 0xe

    const/16 v7, 0xf

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1474
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1465
    :pswitch_36
    const-wide v6, 0x280000000000L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_44

    .line 1466
    const/16 v6, 0xe

    invoke-direct {v1, v6}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1465
    :cond_44
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1458
    :pswitch_37
    and-long v6, v20, v29

    cmp-long v6, v6, v18

    if-nez v6, :cond_45

    .line 1459
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1460
    :cond_45
    const/16 v6, 0x40

    if-le v5, v6, :cond_46

    .line 1461
    const/16 v5, 0x40

    .line 1462
    :cond_46
    const/16 v6, 0x18

    const/16 v7, 0x1a

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    .line 1463
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1454
    :pswitch_38
    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    const/16 v7, 0x2e

    if-ne v6, v7, :cond_47

    .line 1455
    const/16 v6, 0xb

    invoke-direct {v1, v6}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1454
    :cond_47
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1447
    :pswitch_39
    and-long v6, v20, v29

    cmp-long v6, v6, v18

    if-nez v6, :cond_48

    .line 1448
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1449
    :cond_48
    const/16 v6, 0x3c

    if-le v5, v6, :cond_49

    .line 1450
    const/16 v5, 0x3c

    .line 1451
    :cond_49
    const/16 v6, 0x8

    invoke-direct {v1, v6, v15}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1452
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1440
    :pswitch_3a
    const-wide/high16 v6, 0x3fe000000000000L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-nez v6, :cond_4a

    .line 1441
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1442
    :cond_4a
    const/16 v6, 0x3c

    if-le v5, v6, :cond_4b

    .line 1443
    const/16 v5, 0x3c

    .line 1444
    :cond_4b
    const/16 v6, 0x8

    invoke-direct {v1, v6, v15}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1445
    const/4 v10, 0x1

    goto/16 :goto_4

    .line 1363
    :pswitch_3b
    const-wide v26, 0x1ffffffffL

    and-long v26, v20, v26

    cmp-long v7, v26, v18

    if-eqz v7, :cond_4d

    .line 1365
    const/4 v6, 0x6

    if-le v5, v6, :cond_4c

    .line 1366
    const/4 v5, 0x6

    .line 1367
    :cond_4c
    const/4 v7, 0x0

    invoke-direct {v1, v7}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    const/4 v10, 0x1

    goto :goto_3

    .line 1369
    :cond_4d
    const/4 v7, 0x0

    and-long v26, v20, v29

    cmp-long v10, v26, v18

    if-eqz v10, :cond_4e

    .line 1370
    const/4 v6, 0x6

    invoke-direct {v1, v7, v6}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    const/4 v10, 0x1

    goto :goto_3

    .line 1371
    :cond_4e
    iget-char v7, v1, Lbsh/ParserTokenManager;->curChar:C

    if-ne v7, v9, :cond_4f

    .line 1372
    invoke-direct {v1, v12, v15}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    const/4 v10, 0x1

    goto :goto_3

    .line 1373
    :cond_4f
    const/16 v10, 0x24

    if-ne v7, v10, :cond_51

    .line 1375
    if-le v5, v13, :cond_50

    .line 1376
    const/16 v5, 0x45

    .line 1377
    :cond_50
    const/16 v6, 0x23

    invoke-direct {v1, v6}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    const/4 v10, 0x1

    goto :goto_3

    .line 1379
    :cond_51
    const/16 v10, 0x22

    if-ne v7, v10, :cond_52

    .line 1380
    const/16 v6, 0xc

    invoke-direct {v1, v11, v6}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    const/4 v10, 0x1

    goto :goto_3

    .line 1381
    :cond_52
    const/16 v10, 0x27

    if-ne v7, v10, :cond_53

    .line 1382
    const/16 v6, 0xd

    const/16 v7, 0xe

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    const/4 v10, 0x1

    goto :goto_3

    .line 1383
    :cond_53
    const/16 v10, 0x2e

    if-ne v7, v10, :cond_54

    .line 1384
    const/16 v6, 0xb

    invoke-direct {v1, v6}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    const/4 v10, 0x1

    goto :goto_3

    .line 1385
    :cond_54
    const/16 v10, 0x23

    if-ne v7, v10, :cond_55

    .line 1386
    iget v7, v1, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v10, v7, 0x1

    iput v10, v1, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/4 v10, 0x1

    aput v10, v6, v7

    goto :goto_3

    .line 1385
    :cond_55
    const/4 v10, 0x1

    .line 1387
    :goto_3
    const-wide/high16 v6, 0x3fe000000000000L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_57

    .line 1389
    const/16 v6, 0x3c

    if-le v5, v6, :cond_56

    .line 1390
    const/16 v5, 0x3c

    .line 1391
    :cond_56
    const/16 v6, 0x8

    invoke-direct {v1, v6, v15}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    goto/16 :goto_4

    .line 1393
    :cond_57
    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    const/16 v7, 0x30

    if-ne v6, v7, :cond_5b

    .line 1395
    const/16 v6, 0x3c

    if-le v5, v6, :cond_58

    .line 1396
    const/16 v5, 0x3c

    .line 1397
    :cond_58
    const/16 v6, 0x11

    const/16 v7, 0xf

    invoke-direct {v1, v7, v6}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_4

    .line 1436
    :pswitch_3c
    const/4 v10, 0x1

    iget-char v7, v1, Lbsh/ParserTokenManager;->curChar:C

    const/16 v14, 0xd

    if-ne v7, v14, :cond_5b

    .line 1437
    iget v7, v1, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v14, v7, 0x1

    iput v14, v1, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    const/4 v14, 0x4

    aput v14, v6, v7

    goto :goto_4

    .line 1432
    :pswitch_3d
    const/4 v10, 0x1

    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    if-ne v6, v11, :cond_5b

    const/16 v6, 0x8

    if-le v5, v6, :cond_5b

    .line 1433
    const/16 v5, 0x8

    goto :goto_4

    .line 1428
    :pswitch_3e
    const/4 v10, 0x1

    const-wide/16 v6, 0x2400

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_5b

    const/16 v6, 0x8

    if-le v5, v6, :cond_5b

    .line 1429
    const/16 v5, 0x8

    goto :goto_4

    .line 1424
    :pswitch_3f
    const/4 v10, 0x1

    const-wide/16 v6, -0x2401

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_5b

    .line 1425
    const/16 v6, 0x15

    const/16 v7, 0x17

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_4

    .line 1420
    :pswitch_40
    const/4 v10, 0x1

    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    const/16 v7, 0x21

    if-ne v6, v7, :cond_5b

    .line 1421
    const/16 v6, 0x15

    const/16 v7, 0x17

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    goto :goto_4

    .line 1413
    :pswitch_41
    const/4 v10, 0x1

    const-wide v6, 0x1ffffffffL

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-nez v6, :cond_59

    .line 1414
    goto :goto_4

    .line 1415
    :cond_59
    const/4 v6, 0x6

    if-le v5, v6, :cond_5a

    .line 1416
    const/4 v5, 0x6

    .line 1417
    :cond_5a
    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    .line 1418
    nop

    .line 1711
    :cond_5b
    :goto_4
    if-ne v3, v2, :cond_5c

    .line 1712
    .end local v20    # "l":J
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 1711
    .restart local v20    # "l":J
    :cond_5c
    const/16 v10, 0x3f

    const/16 v14, 0x40

    goto/16 :goto_1

    .line 1713
    .end local v20    # "l":J
    :cond_5d
    const/16 v7, 0x80

    if-ge v6, v7, :cond_73

    .line 1715
    const-wide/16 v20, 0x1

    and-int/lit8 v6, v6, 0x3f

    shl-long v20, v20, v6

    .line 1718
    .restart local v20    # "l":J
    :cond_5e
    iget-object v6, v1, Lbsh/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v6, v6, v3

    sparse-switch v6, :sswitch_data_0

    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1807
    :sswitch_0
    const/16 v6, 0x47

    invoke-direct {v1, v6, v13}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1808
    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1803
    :sswitch_1
    const/16 v6, 0x44

    invoke-direct {v1, v6, v13}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1804
    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1800
    :sswitch_2
    const/16 v6, 0x41

    const/16 v7, 0x3f

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1801
    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1796
    :sswitch_3
    const/16 v7, 0x3f

    invoke-direct {v1, v8, v7}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1797
    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1791
    :sswitch_4
    if-le v5, v12, :cond_5f

    .line 1792
    const/4 v5, 0x7

    .line 1793
    :cond_5f
    const/16 v6, 0x14

    invoke-direct {v1, v4, v6}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    .line 1794
    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1784
    :sswitch_5
    const-wide v6, 0x7e0000007eL

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-nez v6, :cond_60

    .line 1785
    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1786
    :cond_60
    const/16 v6, 0x3c

    if-le v5, v6, :cond_61

    .line 1787
    const/16 v5, 0x3c

    .line 1788
    :cond_61
    const/16 v6, 0x35

    invoke-direct {v1, v6, v15}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    .line 1789
    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1780
    :sswitch_6
    const-wide v6, 0x100000001000000L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_62

    .line 1781
    const/16 v6, 0x35

    invoke-direct {v1, v6}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1780
    :cond_62
    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1776
    :sswitch_7
    const-wide v6, 0x2000000020L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_63

    .line 1777
    const/16 v6, 0x37

    const/16 v7, 0x38

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1776
    :cond_63
    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1772
    :sswitch_8
    const-wide v6, 0x2000000020L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_64

    .line 1773
    const/16 v6, 0x35

    const/16 v7, 0x36

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1772
    :cond_64
    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1768
    :sswitch_9
    const-wide v6, 0x2000000020L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_65

    .line 1769
    const/16 v6, 0x33

    const/16 v7, 0x34

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1768
    :cond_65
    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1764
    :sswitch_a
    const-wide v6, 0x14404410000000L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_66

    .line 1765
    const/16 v6, 0xc

    invoke-direct {v1, v11, v6}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1764
    :cond_66
    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1760
    :sswitch_b
    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_67

    .line 1761
    const/16 v6, 0x30

    const/16 v7, 0x32

    invoke-direct {v1, v6, v7}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1760
    :cond_67
    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1756
    :sswitch_c
    const-wide/32 v6, -0x10000001

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_68

    .line 1757
    const/16 v6, 0xc

    invoke-direct {v1, v11, v6}, Lbsh/ParserTokenManager;->jjCheckNAddStates(II)V

    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1756
    :cond_68
    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1752
    :sswitch_d
    const-wide v6, 0x14404410000000L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_69

    .line 1753
    invoke-direct {v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1752
    :cond_69
    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1748
    :sswitch_e
    iget-char v6, v1, Lbsh/ParserTokenManager;->curChar:C

    const/16 v7, 0x5c

    if-ne v6, v7, :cond_6a

    .line 1749
    const/16 v6, 0x2d

    invoke-direct {v1, v6, v9}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1748
    :cond_6a
    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1744
    :sswitch_f
    const-wide/32 v6, -0x10000001

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_6b

    .line 1745
    invoke-direct {v1, v4}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1744
    :cond_6b
    const/16 v7, 0x40

    const/16 v10, 0x3c

    goto/16 :goto_5

    .line 1740
    :sswitch_10
    const-wide v6, 0x5000000050L

    and-long v6, v20, v6

    cmp-long v6, v6, v18

    if-eqz v6, :cond_6c

    const/16 v7, 0x40

    if-le v5, v7, :cond_6d

    .line 1741
    const/16 v5, 0x40

    const/16 v10, 0x3c

    goto :goto_5

    .line 1740
    :cond_6c
    const/16 v7, 0x40

    :cond_6d
    const/16 v10, 0x3c

    goto :goto_5

    .line 1736
    :sswitch_11
    const/16 v7, 0x40

    const-wide v23, 0x2000000020L

    and-long v23, v20, v23

    cmp-long v6, v23, v18

    if-eqz v6, :cond_6e

    .line 1737
    const/16 v6, 0x2b

    const/16 v10, 0x2c

    invoke-direct {v1, v6, v10}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    const/16 v10, 0x3c

    goto :goto_5

    .line 1736
    :cond_6e
    const/16 v10, 0x3c

    goto :goto_5

    .line 1732
    :sswitch_12
    const/16 v7, 0x40

    const-wide v23, 0x100000001000L

    and-long v23, v20, v23

    cmp-long v6, v23, v18

    if-eqz v6, :cond_6f

    const/16 v10, 0x3c

    if-le v5, v10, :cond_72

    .line 1733
    const/16 v5, 0x3c

    goto :goto_5

    .line 1732
    :cond_6f
    const/16 v10, 0x3c

    goto :goto_5

    .line 1722
    :sswitch_13
    const/16 v7, 0x40

    const/16 v10, 0x3c

    const-wide v22, 0x7fffffe87fffffeL

    and-long v22, v20, v22

    cmp-long v6, v22, v18

    if-nez v6, :cond_70

    .line 1723
    goto :goto_5

    .line 1724
    :cond_70
    if-le v5, v13, :cond_71

    .line 1725
    const/16 v5, 0x45

    .line 1726
    :cond_71
    const/16 v6, 0x23

    invoke-direct {v1, v6}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    .line 1727
    goto :goto_5

    .line 1729
    :sswitch_14
    const/16 v7, 0x40

    const/16 v10, 0x3c

    const/16 v6, 0x15

    const/16 v14, 0x17

    invoke-direct {v1, v6, v14}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    .line 1730
    nop

    .line 1811
    :cond_72
    :goto_5
    if-ne v3, v2, :cond_5e

    .line 1812
    .end local v20    # "l":J
    const/4 v11, 0x0

    goto/16 :goto_8

    .line 1815
    :cond_73
    shr-int/lit8 v7, v6, 0x8

    .line 1816
    .local v7, "hiByte":I
    shr-int/lit8 v9, v7, 0x6

    .line 1817
    .local v9, "i1":I
    const-wide/16 v14, 0x1

    and-int/lit8 v10, v7, 0x3f

    shl-long/2addr v14, v10

    .line 1818
    .local v14, "l1":J
    and-int/lit16 v10, v6, 0xff

    const/16 v17, 0x6

    shr-int/lit8 v10, v10, 0x6

    .line 1819
    .local v10, "i2":I
    const-wide/16 v18, 0x1

    and-int/lit8 v6, v6, 0x3f

    shl-long v18, v18, v6

    .line 1822
    .local v18, "l2":J
    :goto_6
    iget-object v6, v1, Lbsh/ParserTokenManager;->jjstateSet:[I

    add-int/lit8 v3, v3, -0x1

    aget v6, v6, v3

    sparse-switch v6, :sswitch_data_1

    const/16 v6, 0x23

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1887
    :sswitch_15
    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move-wide/from16 v25, v14

    move-wide/from16 v27, v18

    invoke-static/range {v22 .. v28}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v6

    if-eqz v6, :cond_74

    .line 1888
    const/16 v6, 0x47

    invoke-direct {v1, v6, v13}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/16 v6, 0x23

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1887
    :cond_74
    const/16 v6, 0x23

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1882
    :sswitch_16
    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move-wide/from16 v25, v14

    move-wide/from16 v27, v18

    invoke-static/range {v22 .. v28}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v6

    if-eqz v6, :cond_75

    .line 1883
    const/16 v6, 0x44

    invoke-direct {v1, v6, v13}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/16 v6, 0x23

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1882
    :cond_75
    const/16 v6, 0x23

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1878
    :sswitch_17
    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move-wide/from16 v25, v14

    move-wide/from16 v27, v18

    invoke-static/range {v22 .. v28}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v6

    if-eqz v6, :cond_76

    .line 1879
    const/16 v6, 0x41

    const/16 v11, 0x3f

    invoke-direct {v1, v6, v11}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/16 v6, 0x23

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1878
    :cond_76
    const/16 v6, 0x23

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1873
    :sswitch_18
    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move-wide/from16 v25, v14

    move-wide/from16 v27, v18

    invoke-static/range {v22 .. v28}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v6

    if-eqz v6, :cond_77

    .line 1874
    const/16 v6, 0x3f

    invoke-direct {v1, v8, v6}, Lbsh/ParserTokenManager;->jjCheckNAddTwoStates(II)V

    const/16 v6, 0x23

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1873
    :cond_77
    const/16 v6, 0x3f

    const/16 v6, 0x23

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1866
    :sswitch_19
    const/16 v6, 0x3f

    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move-wide/from16 v25, v14

    move-wide/from16 v27, v18

    invoke-static/range {v22 .. v28}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v11

    if-nez v11, :cond_78

    .line 1867
    const/16 v6, 0x23

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1868
    :cond_78
    if-le v5, v12, :cond_79

    .line 1869
    const/4 v5, 0x7

    .line 1870
    :cond_79
    const/16 v11, 0x14

    invoke-direct {v1, v4, v11}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    .line 1871
    const/16 v6, 0x23

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1859
    :sswitch_1a
    const/16 v6, 0x3f

    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move-wide/from16 v25, v14

    move-wide/from16 v27, v18

    invoke-static/range {v22 .. v28}, Lbsh/ParserTokenManager;->jjCanMove_2(IIIJJ)Z

    move-result v11

    if-nez v11, :cond_7a

    .line 1860
    const/16 v6, 0x23

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1861
    :cond_7a
    if-le v5, v13, :cond_7b

    .line 1862
    const/16 v5, 0x45

    .line 1863
    :cond_7b
    const/16 v11, 0x23

    invoke-direct {v1, v11}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    .line 1864
    const/16 v6, 0x23

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1854
    :sswitch_1b
    const/16 v6, 0x3f

    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move-wide/from16 v25, v14

    move-wide/from16 v27, v18

    invoke-static/range {v22 .. v28}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v11

    if-eqz v11, :cond_7c

    .line 1855
    const/16 v6, 0xa

    const/16 v11, 0xc

    invoke-direct {v1, v6, v11}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    const/16 v6, 0x23

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1854
    :cond_7c
    const/16 v6, 0xa

    const/16 v11, 0xc

    const/16 v6, 0x23

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1850
    :sswitch_1c
    move v6, v11

    const/16 v11, 0xc

    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move-wide/from16 v25, v14

    move-wide/from16 v27, v18

    invoke-static/range {v22 .. v28}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v16

    if-eqz v16, :cond_7d

    .line 1851
    iget-object v6, v1, Lbsh/ParserTokenManager;->jjstateSet:[I

    iget v8, v1, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    add-int/lit8 v11, v8, 0x1

    iput v11, v1, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    aput v4, v6, v8

    const/16 v6, 0x23

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1850
    :cond_7d
    const/16 v6, 0x23

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto/16 :goto_7

    .line 1825
    :sswitch_1d
    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move-wide/from16 v25, v14

    move-wide/from16 v27, v18

    invoke-static/range {v22 .. v28}, Lbsh/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v6

    if-eqz v6, :cond_7f

    .line 1827
    const/4 v6, 0x6

    if-le v5, v6, :cond_7e

    .line 1828
    const/4 v5, 0x6

    .line 1829
    :cond_7e
    const/4 v6, 0x0

    invoke-direct {v1, v6}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    .line 1831
    :cond_7f
    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move-wide/from16 v25, v14

    move-wide/from16 v27, v18

    invoke-static/range {v22 .. v28}, Lbsh/ParserTokenManager;->jjCanMove_2(IIIJJ)Z

    move-result v6

    if-eqz v6, :cond_81

    .line 1833
    if-le v5, v13, :cond_80

    .line 1834
    const/16 v5, 0x45

    .line 1835
    :cond_80
    const/16 v6, 0x23

    invoke-direct {v1, v6}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto :goto_7

    .line 1831
    :cond_81
    const/16 v6, 0x23

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto :goto_7

    .line 1846
    :sswitch_1e
    const/16 v6, 0x23

    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move-wide/from16 v25, v14

    move-wide/from16 v27, v18

    invoke-static/range {v22 .. v28}, Lbsh/ParserTokenManager;->jjCanMove_1(IIIJJ)Z

    move-result v8

    if-eqz v8, :cond_82

    .line 1847
    const/16 v8, 0x15

    const/16 v11, 0x17

    invoke-direct {v1, v8, v11}, Lbsh/ParserTokenManager;->jjAddStates(II)V

    const/4 v8, 0x6

    const/4 v11, 0x0

    goto :goto_7

    .line 1846
    :cond_82
    const/4 v8, 0x6

    const/4 v11, 0x0

    goto :goto_7

    .line 1839
    :sswitch_1f
    const/16 v6, 0x23

    move/from16 v22, v7

    move/from16 v23, v9

    move/from16 v24, v10

    move-wide/from16 v25, v14

    move-wide/from16 v27, v18

    invoke-static/range {v22 .. v28}, Lbsh/ParserTokenManager;->jjCanMove_0(IIIJJ)Z

    move-result v8

    if-nez v8, :cond_83

    .line 1840
    const/4 v8, 0x6

    const/4 v11, 0x0

    goto :goto_7

    .line 1841
    :cond_83
    const/4 v8, 0x6

    if-le v5, v8, :cond_84

    .line 1842
    const/4 v5, 0x6

    .line 1843
    :cond_84
    const/4 v11, 0x0

    invoke-direct {v1, v11}, Lbsh/ParserTokenManager;->jjCheckNAdd(I)V

    .line 1844
    nop

    .line 1892
    :goto_7
    if-ne v3, v2, :cond_87

    .line 1894
    .end local v7    # "hiByte":I
    .end local v9    # "i1":I
    .end local v10    # "i2":I
    .end local v14    # "l1":J
    .end local v18    # "l2":J
    :goto_8
    const v4, 0x7fffffff

    if-eq v5, v4, :cond_85

    .line 1896
    iput v5, v1, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 1897
    iput v0, v1, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 1898
    const v4, 0x7fffffff

    move v5, v4

    .line 1900
    :cond_85
    add-int/lit8 v4, v0, 0x1

    .line 1901
    .end local v0    # "curPos":I
    .local v4, "curPos":I
    iget v0, v1, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    move v3, v0

    iput v2, v1, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    rsub-int/lit8 v6, v2, 0x4a

    move v2, v6

    if-ne v0, v6, :cond_86

    .line 1902
    return v4

    .line 1903
    :cond_86
    :try_start_0
    iget-object v0, v1, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v1, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1904
    move v0, v4

    move v4, v11

    goto/16 :goto_0

    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    return v4

    .line 1892
    .end local v4    # "curPos":I
    .local v0, "curPos":I
    .restart local v7    # "hiByte":I
    .restart local v9    # "i1":I
    .restart local v10    # "i2":I
    .restart local v14    # "l1":J
    .restart local v18    # "l2":J
    :cond_87
    const/16 v8, 0x3e

    const/16 v11, 0xa

    goto/16 :goto_6

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_41
        :pswitch_40
        :pswitch_3f
        :pswitch_3e
        :pswitch_3d
        :pswitch_3c
        :pswitch_3b
        :pswitch_3a
        :pswitch_39
        :pswitch_0
        :pswitch_38
        :pswitch_37
        :pswitch_0
        :pswitch_36
        :pswitch_35
        :pswitch_0
        :pswitch_34
        :pswitch_33
        :pswitch_32
        :pswitch_0
        :pswitch_31
        :pswitch_30
        :pswitch_2f
        :pswitch_2e
        :pswitch_2d
        :pswitch_2c
        :pswitch_2b
        :pswitch_0
        :pswitch_2a
        :pswitch_29
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_0
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_0
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_0
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_0
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch

    :sswitch_data_0
    .sparse-switch
        0x2 -> :sswitch_14
        0x6 -> :sswitch_13
        0x9 -> :sswitch_12
        0xc -> :sswitch_11
        0xf -> :sswitch_10
        0x11 -> :sswitch_f
        0x13 -> :sswitch_e
        0x14 -> :sswitch_d
        0x1a -> :sswitch_c
        0x1b -> :sswitch_b
        0x1c -> :sswitch_a
        0x23 -> :sswitch_13
        0x28 -> :sswitch_9
        0x2c -> :sswitch_8
        0x30 -> :sswitch_7
        0x34 -> :sswitch_6
        0x35 -> :sswitch_5
        0x39 -> :sswitch_4
        0x3e -> :sswitch_3
        0x40 -> :sswitch_2
        0x41 -> :sswitch_2
        0x44 -> :sswitch_1
        0x46 -> :sswitch_0
        0x47 -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        0x0 -> :sswitch_1f
        0x2 -> :sswitch_1e
        0x6 -> :sswitch_1d
        0x11 -> :sswitch_1c
        0x1a -> :sswitch_1b
        0x22 -> :sswitch_1a
        0x23 -> :sswitch_1a
        0x39 -> :sswitch_19
        0x3e -> :sswitch_18
        0x40 -> :sswitch_17
        0x41 -> :sswitch_17
        0x44 -> :sswitch_16
        0x46 -> :sswitch_15
        0x47 -> :sswitch_15
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa0_0()I
    .locals 8

    .line 193
    iget-char v0, p0, Lbsh/ParserTokenManager;->curChar:C

    const/4 v1, 0x0

    sparse-switch v0, :sswitch_data_0

    .line 300
    const/4 v0, 0x6

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0

    .line 298
    :sswitch_0
    const/16 v0, 0x57

    invoke-direct {p0, v1, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 296
    :sswitch_1
    const/16 v0, 0x4b

    invoke-direct {p0, v1, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 293
    :sswitch_2
    const/16 v0, 0x6c

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 294
    const-wide/16 v2, 0x0

    const-wide v4, 0x1000000100000000L

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 291
    :sswitch_3
    const/16 v0, 0x4a

    invoke-direct {p0, v1, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 289
    :sswitch_4
    const-wide/high16 v2, 0x800000000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 287
    :sswitch_5
    const-wide/high16 v2, 0x600000000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 285
    :sswitch_6
    const-wide/high16 v2, 0x1f0000000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 283
    :sswitch_7
    const-wide v2, 0xf800000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 281
    :sswitch_8
    const-wide v2, 0x400000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 279
    :sswitch_9
    const-wide v2, 0x3c0000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 277
    :sswitch_a
    const-wide v2, 0x38000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 275
    :sswitch_b
    const-wide v2, 0x4000000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 273
    :sswitch_c
    const-wide v2, 0x3f00000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 271
    :sswitch_d
    const-wide v2, 0x80000000L

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 269
    :sswitch_e
    const-wide/32 v2, 0x7c000000

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 267
    :sswitch_f
    const-wide/32 v2, 0x3800000

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 265
    :sswitch_10
    const-wide/32 v2, 0x700000

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 263
    :sswitch_11
    const-wide/32 v2, 0xfa000

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 261
    :sswitch_12
    const-wide/16 v2, 0x5800

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 259
    :sswitch_13
    const-wide/16 v2, 0x400

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 256
    :sswitch_14
    const/16 v0, 0x6e

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 257
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 254
    :sswitch_15
    const/16 v0, 0x4d

    invoke-direct {p0, v1, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 252
    :sswitch_16
    const/16 v0, 0x4c

    invoke-direct {p0, v1, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 250
    :sswitch_17
    const-wide/16 v2, 0x0

    const-wide v4, 0x282a280a50280000L

    const-wide/16 v6, 0x2a

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 248
    :sswitch_18
    const/16 v0, 0x58

    invoke-direct {p0, v1, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 245
    :sswitch_19
    const/16 v0, 0x52

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 246
    const-wide/16 v2, 0x0

    const-wide v4, 0x14000020000000L

    const-wide/16 v6, 0x14

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 242
    :sswitch_1a
    const/16 v0, 0x51

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 243
    const-wide/16 v2, 0x0

    const-wide/32 v4, 0x4000000

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 239
    :sswitch_1b
    const/16 v0, 0x54

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 240
    const-wide/16 v2, 0x0

    const-wide v4, 0x1000008000000L

    const-wide/16 v6, 0x1

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 237
    :sswitch_1c
    const/16 v0, 0x4e

    invoke-direct {p0, v1, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 235
    :sswitch_1d
    const/16 v0, 0x59

    invoke-direct {p0, v1, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 232
    :sswitch_1e
    const/16 v0, 0x69

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 233
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x200000000000000L

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 230
    :sswitch_1f
    const/16 v0, 0x50

    const/16 v2, 0xb

    invoke-direct {p0, v1, v0, v2}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 227
    :sswitch_20
    const/16 v0, 0x67

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 228
    const-wide/16 v2, 0x0

    const-wide v4, 0x80002000000000L

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 225
    :sswitch_21
    const/16 v0, 0x4f

    invoke-direct {p0, v1, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 222
    :sswitch_22
    const/16 v0, 0x66

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 223
    const-wide/16 v2, 0x0

    const-wide v4, 0x40001000000000L

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 219
    :sswitch_23
    const/16 v0, 0x68

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 220
    const-wide/16 v2, 0x0

    const-wide/high16 v4, 0x100000000000000L

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 217
    :sswitch_24
    const/16 v0, 0x49

    invoke-direct {p0, v1, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 215
    :sswitch_25
    const/16 v0, 0x48

    invoke-direct {p0, v1, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 212
    :sswitch_26
    const/16 v0, 0x6a

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 213
    const-wide/16 v2, 0x0

    const-wide v4, 0x400000400000000L

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 209
    :sswitch_27
    const/16 v0, 0x6f

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 210
    const-wide/16 v2, 0x0

    const-wide/high16 v4, -0x8000000000000000L

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 206
    :sswitch_28
    const/16 v0, 0x56

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 207
    const-wide/16 v2, 0x0

    const-wide v4, 0x80000000L

    const-wide/16 v6, 0x0

    move-object v1, p0

    invoke-direct/range {v1 .. v7}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa1_0(JJJ)I

    move-result v0

    return v0

    .line 204
    :sswitch_29
    const/4 v0, 0x1

    invoke-direct {p0, v1, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 202
    :sswitch_2a
    const/4 v0, 0x3

    invoke-direct {p0, v1, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 200
    :sswitch_2b
    const/4 v0, 0x4

    invoke-direct {p0, v1, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 198
    :sswitch_2c
    const/4 v0, 0x5

    invoke-direct {p0, v1, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 196
    :sswitch_2d
    const/4 v0, 0x2

    invoke-direct {p0, v1, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    :sswitch_data_0
    .sparse-switch
        0x9 -> :sswitch_2d
        0xa -> :sswitch_2c
        0xc -> :sswitch_2b
        0xd -> :sswitch_2a
        0x20 -> :sswitch_29
        0x21 -> :sswitch_28
        0x25 -> :sswitch_27
        0x26 -> :sswitch_26
        0x28 -> :sswitch_25
        0x29 -> :sswitch_24
        0x2a -> :sswitch_23
        0x2b -> :sswitch_22
        0x2c -> :sswitch_21
        0x2d -> :sswitch_20
        0x2e -> :sswitch_1f
        0x2f -> :sswitch_1e
        0x3a -> :sswitch_1d
        0x3b -> :sswitch_1c
        0x3c -> :sswitch_1b
        0x3d -> :sswitch_1a
        0x3e -> :sswitch_19
        0x3f -> :sswitch_18
        0x40 -> :sswitch_17
        0x5b -> :sswitch_16
        0x5d -> :sswitch_15
        0x5e -> :sswitch_14
        0x61 -> :sswitch_13
        0x62 -> :sswitch_12
        0x63 -> :sswitch_11
        0x64 -> :sswitch_10
        0x65 -> :sswitch_f
        0x66 -> :sswitch_e
        0x67 -> :sswitch_d
        0x69 -> :sswitch_c
        0x6c -> :sswitch_b
        0x6e -> :sswitch_a
        0x70 -> :sswitch_9
        0x72 -> :sswitch_8
        0x73 -> :sswitch_7
        0x74 -> :sswitch_6
        0x76 -> :sswitch_5
        0x77 -> :sswitch_4
        0x7b -> :sswitch_3
        0x7c -> :sswitch_2
        0x7d -> :sswitch_1
        0x7e -> :sswitch_0
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa10_0(JJJJJJ)I
    .locals 35
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .param p5, "old1"    # J
    .param p7, "active1"    # J
    .param p9, "old2"    # J
    .param p11, "active2"    # J

    .line 898
    move-object/from16 v14, p0

    and-long v0, p3, p1

    move-wide v10, v0

    .end local p3    # "active0":J
    .local v10, "active0":J
    and-long v2, p7, p5

    move-wide/from16 v33, v2

    .end local p7    # "active1":J
    .local v33, "active1":J
    or-long/2addr v0, v2

    and-long v2, p11, p9

    move-wide/from16 v18, v2

    .end local p11    # "active2":J
    .local v18, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 899
    const/16 v2, 0x8

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 900
    :cond_0
    const/16 v9, 0xa

    :try_start_0
    iget-object v0, v14, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v14, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 904
    nop

    .line 905
    sparse-switch v0, :sswitch_data_0

    move-object v7, v14

    goto/16 :goto_0

    .line 922
    :sswitch_0
    const-wide/high16 v0, 0x2000000000000L

    and-long v0, v33, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 924
    const/16 v0, 0x71

    iput v0, v14, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 925
    iput v9, v14, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 927
    :cond_1
    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x2

    move-object/from16 v9, p0

    move-object v7, v14

    move-wide/from16 v14, v33

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa11_0(JJJJJJ)I

    move-result v0

    return v0

    .line 918
    :sswitch_1
    move-object v7, v14

    const-wide v0, 0x200000000000L

    and-long v0, v33, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 919
    const/16 v0, 0x6d

    invoke-direct {v7, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 914
    :sswitch_2
    move-object v7, v14

    const-wide/high16 v0, 0x800000000000000L

    and-long v0, v33, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 915
    const/16 v0, 0x7b

    invoke-direct {v7, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 916
    :cond_2
    const-wide/16 v23, 0x0

    const-wide v27, 0x80000000000L

    const-wide/16 v31, 0x0

    move-object/from16 v20, p0

    move-wide/from16 v21, v10

    move-wide/from16 v25, v33

    move-wide/from16 v29, v18

    invoke-direct/range {v20 .. v32}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa11_0(JJJJJJ)I

    move-result v0

    return v0

    .line 912
    :sswitch_3
    move-object v7, v14

    const-wide/16 v23, 0x0

    const-wide/high16 v27, 0x20000000000000L

    const-wide/16 v31, 0x20

    move-object/from16 v20, p0

    move-wide/from16 v21, v10

    move-wide/from16 v25, v33

    move-wide/from16 v29, v18

    invoke-direct/range {v20 .. v32}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa11_0(JJJJJJ)I

    move-result v0

    return v0

    .line 910
    :sswitch_4
    move-object v7, v14

    const-wide/16 v23, 0x0

    const-wide/high16 v27, 0x8000000000000L

    const-wide/16 v31, 0x8

    move-object/from16 v20, p0

    move-wide/from16 v21, v10

    move-wide/from16 v25, v33

    move-wide/from16 v29, v18

    invoke-direct/range {v20 .. v32}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa11_0(JJJJJJ)I

    move-result v0

    return v0

    .line 908
    :sswitch_5
    move-object v7, v14

    const-wide/high16 v23, 0x8000000000000L

    const-wide/16 v27, 0x0

    const-wide/16 v31, 0x0

    move-object/from16 v20, p0

    move-wide/from16 v21, v10

    move-wide/from16 v25, v33

    move-wide/from16 v29, v18

    invoke-direct/range {v20 .. v32}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa11_0(JJJJJJ)I

    move-result v0

    return v0

    .line 931
    :cond_3
    :goto_0
    const/16 v2, 0x9

    move-object/from16 v1, p0

    move-wide v3, v10

    move-wide/from16 v5, v33

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 901
    :catch_0
    move-exception v0

    .line 902
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0x9

    move-object/from16 v1, p0

    move-wide v3, v10

    move-wide/from16 v5, v33

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 903
    return v9

    :sswitch_data_0
    .sparse-switch
        0x65 -> :sswitch_5
        0x66 -> :sswitch_4
        0x69 -> :sswitch_3
        0x6e -> :sswitch_2
        0x72 -> :sswitch_1
        0x74 -> :sswitch_0
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa11_0(JJJJJJ)I
    .locals 26
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .param p5, "old1"    # J
    .param p7, "active1"    # J
    .param p9, "old2"    # J
    .param p11, "active2"    # J

    .line 935
    move-object/from16 v14, p0

    and-long v0, p3, p1

    move-wide/from16 v22, v0

    .end local p3    # "active0":J
    .local v22, "active0":J
    and-long v2, p7, p5

    move-wide/from16 v24, v2

    .end local p7    # "active1":J
    .local v24, "active1":J
    or-long/2addr v0, v2

    and-long v2, p11, p9

    move-wide/from16 v18, v2

    .end local p11    # "active2":J
    .local v18, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 936
    const/16 v2, 0x9

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 937
    :cond_0
    const/16 v9, 0xb

    :try_start_0
    iget-object v0, v14, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v14, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 941
    nop

    .line 942
    const-wide/high16 v4, 0x8000000000000L

    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 955
    :sswitch_0
    and-long v0, v24, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 957
    const/16 v0, 0x73

    iput v0, v14, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 958
    iput v9, v14, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 960
    :cond_1
    const-wide/16 v12, 0x0

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x8

    move-object/from16 v9, p0

    move-wide/from16 v10, v22

    move-object v8, v14

    move-wide/from16 v14, v24

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa12_0(JJJJJJ)I

    move-result v0

    return v0

    .line 953
    :sswitch_1
    move-object v8, v14

    const-wide/16 v4, 0x0

    const-wide/high16 v9, 0x20000000000000L

    const-wide/16 v12, 0x20

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-wide v8, v9

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa12_0(JJJJJJ)I

    move-result v0

    return v0

    .line 947
    :sswitch_2
    and-long v0, v22, v4

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 948
    const/16 v0, 0x33

    const/16 v1, 0x23

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 949
    :cond_2
    const-wide v0, 0x80000000000L

    and-long v0, v24, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 950
    const/16 v0, 0x6b

    invoke-direct {v14, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 945
    :sswitch_3
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x2

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa12_0(JJJJJJ)I

    move-result v0

    return v0

    .line 964
    :cond_3
    :goto_0
    const/16 v2, 0xa

    move-object/from16 v1, p0

    move-wide/from16 v3, v22

    move-wide/from16 v5, v24

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 938
    :catch_0
    move-exception v0

    .line 939
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0xa

    move-object/from16 v1, p0

    move-wide/from16 v3, v22

    move-wide/from16 v5, v24

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 940
    return v9

    nop

    :sswitch_data_0
    .sparse-switch
        0x5f -> :sswitch_3
        0x64 -> :sswitch_2
        0x67 -> :sswitch_1
        0x74 -> :sswitch_0
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa12_0(JJJJJJ)I
    .locals 19
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .param p5, "old1"    # J
    .param p7, "active1"    # J
    .param p9, "old2"    # J
    .param p11, "active2"    # J

    .line 968
    move-object/from16 v11, p0

    and-long v0, p3, p1

    move-wide/from16 v17, v0

    .end local p3    # "active0":J
    .local v17, "active0":J
    and-long v2, p7, p5

    move-wide v13, v2

    .end local p7    # "active1":J
    .local v13, "active1":J
    or-long/2addr v0, v2

    and-long v2, p11, p9

    move-wide v15, v2

    .end local p11    # "active2":J
    .local v15, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 969
    const/16 v2, 0xa

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 970
    :cond_0
    :try_start_0
    iget-object v0, v11, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v11, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 974
    nop

    .line 975
    sparse-switch v0, :sswitch_data_0

    .line 986
    const/16 v10, 0xb

    const-wide/16 v0, 0x0

    move-object/from16 v9, p0

    move-wide v11, v0

    invoke-direct/range {v9 .. v16}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 982
    :sswitch_0
    const-wide/high16 v4, 0x20000000000000L

    const-wide/16 v8, 0x20

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v6, v15

    invoke-direct/range {v1 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa13_0(JJJJ)I

    move-result v0

    return v0

    .line 980
    :sswitch_1
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x2

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v6, v15

    invoke-direct/range {v1 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa13_0(JJJJ)I

    move-result v0

    return v0

    .line 978
    :sswitch_2
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x8

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v6, v15

    invoke-direct/range {v1 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa13_0(JJJJ)I

    move-result v0

    return v0

    .line 971
    :catch_0
    move-exception v0

    .line 972
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0xb

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide v5, v13

    move-wide v7, v15

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 973
    const/16 v1, 0xc

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x5f -> :sswitch_2
        0x61 -> :sswitch_1
        0x6e -> :sswitch_0
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa13_0(JJJJ)I
    .locals 17
    .param p1, "old1"    # J
    .param p3, "active1"    # J
    .param p5, "old2"    # J
    .param p7, "active2"    # J

    .line 990
    move-object/from16 v11, p0

    and-long v0, p3, p1

    move-wide v13, v0

    .end local p3    # "active1":J
    .local v13, "active1":J
    and-long v2, p7, p5

    move-wide v15, v2

    .end local p7    # "active2":J
    .local v15, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 991
    const/16 v2, 0xb

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 992
    :cond_0
    :try_start_0
    iget-object v0, v11, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v11, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 996
    nop

    .line 997
    sparse-switch v0, :sswitch_data_0

    .line 1008
    const/16 v10, 0xc

    const-wide/16 v0, 0x0

    move-object/from16 v9, p0

    move-wide v11, v0

    invoke-direct/range {v9 .. v16}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1004
    :sswitch_0
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x2

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v6, v15

    invoke-direct/range {v1 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa14_0(JJJJ)I

    move-result v0

    return v0

    .line 1002
    :sswitch_1
    const-wide/high16 v4, 0x20000000000000L

    const-wide/16 v8, 0x20

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v6, v15

    invoke-direct/range {v1 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa14_0(JJJJ)I

    move-result v0

    return v0

    .line 1000
    :sswitch_2
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x8

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v6, v15

    invoke-direct/range {v1 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa14_0(JJJJ)I

    move-result v0

    return v0

    .line 993
    :catch_0
    move-exception v0

    .line 994
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0xc

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide v5, v13

    move-wide v7, v15

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 995
    const/16 v1, 0xd

    return v1

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_2
        0x65 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa14_0(JJJJ)I
    .locals 17
    .param p1, "old1"    # J
    .param p3, "active1"    # J
    .param p5, "old2"    # J
    .param p7, "active2"    # J

    .line 1012
    move-object/from16 v11, p0

    and-long v0, p3, p1

    move-wide v13, v0

    .end local p3    # "active1":J
    .local v13, "active1":J
    and-long v2, p7, p5

    move-wide v15, v2

    .end local p7    # "active2":J
    .local v15, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1013
    const/16 v2, 0xc

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1014
    :cond_0
    :try_start_0
    iget-object v0, v11, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v11, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1018
    nop

    .line 1019
    sparse-switch v0, :sswitch_data_0

    .line 1028
    const/16 v10, 0xd

    const-wide/16 v0, 0x0

    move-object/from16 v9, p0

    move-wide v11, v0

    invoke-direct/range {v9 .. v16}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1024
    :sswitch_0
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0xa

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v6, v15

    invoke-direct/range {v1 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa15_0(JJJJ)I

    move-result v0

    return v0

    .line 1022
    :sswitch_1
    const-wide/high16 v4, 0x20000000000000L

    const-wide/16 v8, 0x20

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v6, v15

    invoke-direct/range {v1 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa15_0(JJJJ)I

    move-result v0

    return v0

    .line 1015
    :catch_0
    move-exception v0

    .line 1016
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0xd

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide v5, v13

    move-wide v7, v15

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 1017
    const/16 v1, 0xe

    return v1

    nop

    :sswitch_data_0
    .sparse-switch
        0x64 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa15_0(JJJJ)I
    .locals 17
    .param p1, "old1"    # J
    .param p3, "active1"    # J
    .param p5, "old2"    # J
    .param p7, "active2"    # J

    .line 1032
    move-object/from16 v11, p0

    and-long v0, p3, p1

    move-wide v13, v0

    .end local p3    # "active1":J
    .local v13, "active1":J
    and-long v2, p7, p5

    move-wide v15, v2

    .end local p7    # "active2":J
    .local v15, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1033
    const/16 v2, 0xd

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1034
    :cond_0
    :try_start_0
    iget-object v0, v11, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v11, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1038
    nop

    .line 1039
    sparse-switch v0, :sswitch_data_0

    .line 1050
    const/16 v10, 0xe

    const-wide/16 v0, 0x0

    move-object/from16 v9, p0

    move-wide v11, v0

    invoke-direct/range {v9 .. v16}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1046
    :sswitch_0
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x8

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v6, v15

    invoke-direct/range {v1 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa16_0(JJJJ)I

    move-result v0

    return v0

    .line 1044
    :sswitch_1
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x2

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v6, v15

    invoke-direct/range {v1 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa16_0(JJJJ)I

    move-result v0

    return v0

    .line 1042
    :sswitch_2
    const-wide/high16 v4, 0x20000000000000L

    const-wide/16 v8, 0x20

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v6, v15

    invoke-direct/range {v1 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa16_0(JJJJ)I

    move-result v0

    return v0

    .line 1035
    :catch_0
    move-exception v0

    .line 1036
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0xe

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide v5, v13

    move-wide v7, v15

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 1037
    const/16 v1, 0xf

    return v1

    :sswitch_data_0
    .sparse-switch
        0x5f -> :sswitch_2
        0x69 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa16_0(JJJJ)I
    .locals 17
    .param p1, "old1"    # J
    .param p3, "active1"    # J
    .param p5, "old2"    # J
    .param p7, "active2"    # J

    .line 1054
    move-object/from16 v11, p0

    and-long v0, p3, p1

    move-wide v13, v0

    .end local p3    # "active1":J
    .local v13, "active1":J
    and-long v2, p7, p5

    move-wide v15, v2

    .end local p7    # "active2":J
    .local v15, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1055
    const/16 v2, 0xe

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1056
    :cond_0
    :try_start_0
    iget-object v0, v11, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v11, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1060
    nop

    .line 1061
    sparse-switch v0, :sswitch_data_0

    .line 1072
    const/16 v10, 0xf

    const-wide/16 v0, 0x0

    move-object/from16 v9, p0

    move-wide v11, v0

    invoke-direct/range {v9 .. v16}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1068
    :sswitch_0
    const-wide/high16 v4, 0x20000000000000L

    const-wide/16 v8, 0x20

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v6, v15

    invoke-direct/range {v1 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa17_0(JJJJ)I

    move-result v0

    return v0

    .line 1066
    :sswitch_1
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x8

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v6, v15

    invoke-direct/range {v1 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa17_0(JJJJ)I

    move-result v0

    return v0

    .line 1064
    :sswitch_2
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x2

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v6, v15

    invoke-direct/range {v1 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa17_0(JJJJ)I

    move-result v0

    return v0

    .line 1057
    :catch_0
    move-exception v0

    .line 1058
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0xf

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide v5, v13

    move-wide v7, v15

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 1059
    const/16 v1, 0x10

    return v1

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_2
        0x69 -> :sswitch_1
        0x73 -> :sswitch_0
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa17_0(JJJJ)I
    .locals 20
    .param p1, "old1"    # J
    .param p3, "active1"    # J
    .param p5, "old2"    # J
    .param p7, "active2"    # J

    .line 1076
    move-object/from16 v14, p0

    and-long v0, p3, p1

    move-wide v10, v0

    .end local p3    # "active1":J
    .local v10, "active1":J
    and-long v2, p7, p5

    move-wide/from16 v18, v2

    .end local p7    # "active2":J
    .local v18, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1077
    const/16 v2, 0xf

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1078
    :cond_0
    const/16 v9, 0x11

    :try_start_0
    iget-object v0, v14, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v14, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1082
    nop

    .line 1083
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1090
    :sswitch_0
    const-wide/16 v0, 0x2

    and-long v0, v18, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1091
    const/16 v0, 0x81

    invoke-direct {v14, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 1088
    :sswitch_1
    const-wide/high16 v12, 0x20000000000000L

    const-wide/16 v16, 0x20

    move-object/from16 v9, p0

    move-wide/from16 v14, v18

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa18_0(JJJJ)I

    move-result v0

    return v0

    .line 1086
    :sswitch_2
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x8

    move-object/from16 v1, p0

    move-wide v2, v10

    move-wide/from16 v6, v18

    invoke-direct/range {v1 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa18_0(JJJJ)I

    move-result v0

    return v0

    .line 1096
    :cond_1
    :goto_0
    const/16 v2, 0x10

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide v5, v10

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1079
    :catch_0
    move-exception v0

    .line 1080
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0x10

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide v5, v10

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 1081
    return v9

    :sswitch_data_0
    .sparse-switch
        0x67 -> :sswitch_2
        0x68 -> :sswitch_1
        0x6e -> :sswitch_0
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa18_0(JJJJ)I
    .locals 20
    .param p1, "old1"    # J
    .param p3, "active1"    # J
    .param p5, "old2"    # J
    .param p7, "active2"    # J

    .line 1100
    move-object/from16 v14, p0

    and-long v0, p3, p1

    move-wide v10, v0

    .end local p3    # "active1":J
    .local v10, "active1":J
    and-long v2, p7, p5

    move-wide/from16 v18, v2

    .end local p7    # "active2":J
    .local v18, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1101
    const/16 v2, 0x10

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1102
    :cond_0
    const/16 v9, 0x12

    :try_start_0
    iget-object v0, v14, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v14, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1106
    nop

    .line 1107
    sparse-switch v0, :sswitch_data_0

    goto :goto_0

    .line 1112
    :sswitch_0
    const-wide/16 v0, 0x8

    and-long v0, v18, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1113
    const/16 v0, 0x83

    invoke-direct {v14, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 1110
    :sswitch_1
    const-wide/high16 v12, 0x20000000000000L

    const-wide/16 v16, 0x20

    move-object/from16 v9, p0

    move-wide/from16 v14, v18

    invoke-direct/range {v9 .. v17}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa19_0(JJJJ)I

    move-result v0

    return v0

    .line 1118
    :cond_1
    :goto_0
    const/16 v2, 0x11

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide v5, v10

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1103
    :catch_0
    move-exception v0

    .line 1104
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0x11

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide v5, v10

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 1105
    return v9

    :sswitch_data_0
    .sparse-switch
        0x69 -> :sswitch_1
        0x6e -> :sswitch_0
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa19_0(JJJJ)I
    .locals 17
    .param p1, "old1"    # J
    .param p3, "active1"    # J
    .param p5, "old2"    # J
    .param p7, "active2"    # J

    .line 1122
    move-object/from16 v11, p0

    and-long v0, p3, p1

    move-wide v13, v0

    .end local p3    # "active1":J
    .local v13, "active1":J
    and-long v2, p7, p5

    move-wide v15, v2

    .end local p7    # "active2":J
    .local v15, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1123
    const/16 v2, 0x11

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1124
    :cond_0
    :try_start_0
    iget-object v0, v11, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v11, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1128
    nop

    .line 1129
    packed-switch v0, :pswitch_data_0

    .line 1136
    const/16 v10, 0x12

    const-wide/16 v0, 0x0

    move-object/from16 v9, p0

    move-wide v11, v0

    invoke-direct/range {v9 .. v16}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1132
    :pswitch_0
    const-wide/high16 v4, 0x20000000000000L

    const-wide/16 v8, 0x20

    move-object/from16 v1, p0

    move-wide v2, v13

    move-wide v6, v15

    invoke-direct/range {v1 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa20_0(JJJJ)I

    move-result v0

    return v0

    .line 1125
    :catch_0
    move-exception v0

    .line 1126
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0x12

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide v5, v13

    move-wide v7, v15

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 1127
    const/16 v1, 0x13

    return v1

    :pswitch_data_0
    .packed-switch 0x66
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa1_0(JJJ)I
    .locals 15
    .param p1, "active0"    # J
    .param p3, "active1"    # J
    .param p5, "active2"    # J

    move-object v14, p0

    .line 305
    const/4 v9, 0x1

    :try_start_0
    iget-object v0, v14, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v14, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 309
    nop

    .line 310
    const-wide v1, 0x100000000L

    const-wide/16 v3, 0x0

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 406
    :sswitch_0
    and-long v0, p3, v1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_e

    .line 407
    const/16 v0, 0x60

    invoke-direct {p0, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 404
    :sswitch_1
    const-wide v4, 0x8000000004000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 402
    :sswitch_2
    const-wide/32 v4, 0x2000000

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 400
    :sswitch_3
    const-wide/high16 v4, 0x4000000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 398
    :sswitch_4
    const-wide v4, 0x220000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 396
    :sswitch_5
    const-wide/high16 v4, 0x3000000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 394
    :sswitch_6
    const-wide v4, 0x190180000001000L

    const-wide/high16 v8, 0x28000000000000L

    const-wide/16 v12, 0x28

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 387
    :sswitch_7
    const-wide/32 v0, 0x200000

    and-long v0, p1, v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_0

    .line 389
    const/16 v0, 0x15

    iput v0, v14, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 390
    iput v9, v14, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 392
    :cond_0
    const-wide v4, 0x6000040c04c0800L

    const-wide v8, 0x2000000200000000L

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 385
    :sswitch_8
    const-wide v4, 0x3801000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 383
    :sswitch_9
    const-wide v4, 0x600000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 381
    :sswitch_a
    const-wide/32 v4, 0x20802000

    const-wide v8, 0x2000010200000L

    const-wide/16 v12, 0x2

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 379
    :sswitch_b
    const-wide/32 v4, 0x18000000

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 377
    :sswitch_c
    const-wide v4, 0x860800000020000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 375
    :sswitch_d
    const-wide/16 v4, 0x0

    const-wide/32 v8, 0x40080000

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 371
    :sswitch_e
    and-long v0, p1, v1

    cmp-long v0, v0, v3

    if-eqz v0, :cond_e

    .line 372
    const/16 v0, 0x20

    const/16 v1, 0x23

    invoke-direct {p0, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 369
    :sswitch_f
    const-wide v4, 0x410000100000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 367
    :sswitch_10
    const-wide/16 v4, 0x400

    const-wide v8, 0x280000000000L

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 365
    :sswitch_11
    const-wide v4, 0x48004018000L

    const-wide v8, 0x800000800000000L

    const-wide/16 v12, 0x0

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 358
    :sswitch_12
    const-wide/high16 v0, 0x4000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_1

    .line 360
    const/16 v0, 0x72

    iput v0, v14, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 361
    iput v9, v14, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 363
    :cond_1
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x10000000000000L

    const-wide/16 v12, 0x14

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 332
    :sswitch_13
    const-wide/32 v0, 0x4000000

    and-long v0, p3, v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_2

    .line 333
    const/16 v0, 0x5a

    invoke-direct {p0, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 334
    :cond_2
    const-wide/32 v0, 0x8000000

    and-long v0, p3, v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_3

    .line 335
    const/16 v0, 0x5b

    invoke-direct {p0, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 336
    :cond_3
    const-wide/32 v0, 0x20000000

    and-long v0, p3, v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_4

    .line 337
    const/16 v0, 0x5d

    invoke-direct {p0, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 338
    :cond_4
    const-wide v0, 0x80000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_5

    .line 339
    const/16 v0, 0x5f

    invoke-direct {p0, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 340
    :cond_5
    const-wide/high16 v0, 0x40000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_6

    .line 341
    const/16 v0, 0x76

    invoke-direct {p0, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 342
    :cond_6
    const-wide/high16 v0, 0x80000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_7

    .line 343
    const/16 v0, 0x77

    invoke-direct {p0, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 344
    :cond_7
    const-wide/high16 v0, 0x100000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_8

    .line 345
    const/16 v0, 0x78

    invoke-direct {p0, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 346
    :cond_8
    const-wide/high16 v0, 0x200000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_9

    .line 347
    const/16 v0, 0x79

    invoke-direct {p0, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 348
    :cond_9
    const-wide/high16 v0, 0x400000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_a

    .line 349
    const/16 v0, 0x7a

    invoke-direct {p0, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 350
    :cond_a
    const-wide/high16 v0, 0x1000000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_b

    .line 351
    const/16 v0, 0x7c

    invoke-direct {p0, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 352
    :cond_b
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    and-long v0, p3, v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_c

    .line 353
    const/16 v0, 0x7e

    invoke-direct {p0, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 354
    :cond_c
    const-wide/high16 v0, -0x8000000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_e

    .line 355
    const/16 v0, 0x7f

    invoke-direct {p0, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 325
    :sswitch_14
    const-wide/high16 v0, 0x1000000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_d

    .line 327
    const/16 v0, 0x70

    iput v0, v14, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 328
    iput v9, v14, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 330
    :cond_d
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x1

    move-object v1, p0

    move-wide/from16 v2, p1

    move-wide/from16 v6, p3

    move-wide/from16 v10, p5

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa2_0(JJJJJJ)I

    move-result v0

    return v0

    .line 321
    :sswitch_15
    const-wide v0, 0x2000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_e

    .line 322
    const/16 v0, 0x65

    invoke-direct {p0, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 317
    :sswitch_16
    const-wide v0, 0x1000000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_e

    .line 318
    const/16 v0, 0x64

    invoke-direct {p0, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 313
    :sswitch_17
    const-wide v0, 0x400000000L

    and-long v0, p3, v0

    cmp-long v0, v0, v3

    if-eqz v0, :cond_e

    .line 314
    const/16 v0, 0x62

    invoke-direct {p0, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 412
    :cond_e
    :goto_0
    const/4 v2, 0x0

    move-object v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 306
    :catch_0
    move-exception v0

    .line 307
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x0

    move-object v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p3

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 308
    return v9

    nop

    :sswitch_data_0
    .sparse-switch
        0x26 -> :sswitch_17
        0x2b -> :sswitch_16
        0x2d -> :sswitch_15
        0x3c -> :sswitch_14
        0x3d -> :sswitch_13
        0x3e -> :sswitch_12
        0x61 -> :sswitch_11
        0x62 -> :sswitch_10
        0x65 -> :sswitch_f
        0x66 -> :sswitch_e
        0x67 -> :sswitch_d
        0x68 -> :sswitch_c
        0x69 -> :sswitch_b
        0x6c -> :sswitch_a
        0x6d -> :sswitch_9
        0x6e -> :sswitch_8
        0x6f -> :sswitch_7
        0x72 -> :sswitch_6
        0x74 -> :sswitch_5
        0x75 -> :sswitch_4
        0x77 -> :sswitch_3
        0x78 -> :sswitch_2
        0x79 -> :sswitch_1
        0x7c -> :sswitch_0
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa20_0(JJJJ)I
    .locals 19
    .param p1, "old1"    # J
    .param p3, "active1"    # J
    .param p5, "old2"    # J
    .param p7, "active2"    # J

    .line 1140
    move-object/from16 v13, p0

    and-long v0, p3, p1

    move-wide/from16 v17, v0

    .end local p3    # "active1":J
    .local v17, "active1":J
    and-long v2, p7, p5

    move-wide v15, v2

    .end local p7    # "active2":J
    .local v15, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1141
    const/16 v2, 0x12

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1142
    :cond_0
    const/16 v9, 0x14

    :try_start_0
    iget-object v0, v13, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v13, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1146
    nop

    .line 1147
    packed-switch v0, :pswitch_data_0

    .line 1159
    const/16 v10, 0x13

    const-wide/16 v11, 0x0

    move-object/from16 v9, p0

    move-wide/from16 v13, v17

    invoke-direct/range {v9 .. v16}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1150
    :pswitch_0
    const-wide/high16 v0, 0x20000000000000L

    and-long v0, v17, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1152
    const/16 v0, 0x75

    iput v0, v13, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 1153
    iput v9, v13, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 1155
    :cond_1
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x20

    move-object/from16 v1, p0

    move-wide/from16 v2, v17

    move-wide v6, v15

    invoke-direct/range {v1 .. v9}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa21_0(JJJJ)I

    move-result v0

    return v0

    .line 1143
    :catch_0
    move-exception v0

    .line 1144
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0x13

    const-wide/16 v3, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v5, v17

    move-wide v7, v15

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 1145
    return v9

    :pswitch_data_0
    .packed-switch 0x74
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa21_0(JJJJ)I
    .locals 14
    .param p1, "old1"    # J
    .param p3, "active1"    # J
    .param p5, "old2"    # J
    .param p7, "active2"    # J

    .line 1163
    move-object v9, p0

    and-long v0, p3, p1

    move-wide v10, v0

    .end local p3    # "active1":J
    .local v10, "active1":J
    and-long v2, p7, p5

    move-wide v12, v2

    .end local p7    # "active2":J
    .local v12, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1164
    const/16 v2, 0x13

    const-wide/16 v3, 0x0

    move-object v1, p0

    move-wide v5, p1

    move-wide/from16 v7, p5

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1165
    :cond_0
    :try_start_0
    iget-object v0, v9, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v9, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1169
    nop

    .line 1170
    packed-switch v0, :pswitch_data_0

    .line 1177
    const/16 v2, 0x14

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-wide v7, v12

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1173
    :pswitch_0
    const-wide/16 v0, 0x20

    invoke-direct {p0, v12, v13, v0, v1}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa22_0(JJ)I

    move-result v0

    return v0

    .line 1166
    :catch_0
    move-exception v0

    .line 1167
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0x14

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-wide v7, v12

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 1168
    const/16 v1, 0x15

    return v1

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa22_0(JJ)I
    .locals 10
    .param p1, "old2"    # J
    .param p3, "active2"    # J

    .line 1181
    and-long v0, p3, p1

    move-wide p3, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1182
    const/16 v2, 0x14

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-wide v7, p1

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1183
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1187
    nop

    .line 1188
    packed-switch v0, :pswitch_data_0

    .line 1195
    const/16 v3, 0x15

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-wide v8, p3

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1191
    :pswitch_0
    const-wide/16 v0, 0x20

    invoke-direct {p0, p3, p4, v0, v1}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa23_0(JJ)I

    move-result v0

    return v0

    .line 1184
    :catch_0
    move-exception v0

    .line 1185
    .local v0, "e":Ljava/io/IOException;
    const/16 v3, 0x15

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-wide v8, p3

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 1186
    const/16 v1, 0x16

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x61
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa23_0(JJ)I
    .locals 10
    .param p1, "old2"    # J
    .param p3, "active2"    # J

    .line 1199
    and-long v0, p3, p1

    move-wide p3, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1200
    const/16 v2, 0x15

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-wide v7, p1

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1201
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1205
    nop

    .line 1206
    packed-switch v0, :pswitch_data_0

    .line 1213
    const/16 v3, 0x16

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-wide v8, p3

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1209
    :pswitch_0
    const-wide/16 v0, 0x20

    invoke-direct {p0, p3, p4, v0, v1}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa24_0(JJ)I

    move-result v0

    return v0

    .line 1202
    :catch_0
    move-exception v0

    .line 1203
    .local v0, "e":Ljava/io/IOException;
    const/16 v3, 0x16

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-wide v8, p3

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 1204
    const/16 v1, 0x17

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa24_0(JJ)I
    .locals 10
    .param p1, "old2"    # J
    .param p3, "active2"    # J

    .line 1217
    and-long v0, p3, p1

    move-wide p3, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1218
    const/16 v2, 0x16

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-wide v7, p1

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1219
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1223
    nop

    .line 1224
    packed-switch v0, :pswitch_data_0

    .line 1231
    const/16 v3, 0x17

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-wide v8, p3

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1227
    :pswitch_0
    const-wide/16 v0, 0x20

    invoke-direct {p0, p3, p4, v0, v1}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa25_0(JJ)I

    move-result v0

    return v0

    .line 1220
    :catch_0
    move-exception v0

    .line 1221
    .local v0, "e":Ljava/io/IOException;
    const/16 v3, 0x17

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-wide v8, p3

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 1222
    const/16 v1, 0x18

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x73
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa25_0(JJ)I
    .locals 10
    .param p1, "old2"    # J
    .param p3, "active2"    # J

    .line 1235
    and-long v0, p3, p1

    move-wide p3, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1236
    const/16 v2, 0x17

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-wide v7, p1

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1237
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1241
    nop

    .line 1242
    packed-switch v0, :pswitch_data_0

    .line 1249
    const/16 v3, 0x18

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-wide v8, p3

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1245
    :pswitch_0
    const-wide/16 v0, 0x20

    invoke-direct {p0, p3, p4, v0, v1}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa26_0(JJ)I

    move-result v0

    return v0

    .line 1238
    :catch_0
    move-exception v0

    .line 1239
    .local v0, "e":Ljava/io/IOException;
    const/16 v3, 0x18

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-wide v8, p3

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 1240
    const/16 v1, 0x19

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x69
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa26_0(JJ)I
    .locals 10
    .param p1, "old2"    # J
    .param p3, "active2"    # J

    .line 1253
    and-long v0, p3, p1

    move-wide p3, v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1254
    const/16 v2, 0x18

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-wide v7, p1

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1255
    :cond_0
    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1259
    nop

    .line 1260
    packed-switch v0, :pswitch_data_0

    .line 1267
    const/16 v3, 0x19

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-wide v8, p3

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1263
    :pswitch_0
    const-wide/16 v0, 0x20

    invoke-direct {p0, p3, p4, v0, v1}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa27_0(JJ)I

    move-result v0

    return v0

    .line 1256
    :catch_0
    move-exception v0

    .line 1257
    .local v0, "e":Ljava/io/IOException;
    const/16 v3, 0x19

    const-wide/16 v4, 0x0

    const-wide/16 v6, 0x0

    move-object v2, p0

    move-wide v8, p3

    invoke-direct/range {v2 .. v9}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 1258
    const/16 v1, 0x1a

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x67
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa27_0(JJ)I
    .locals 13
    .param p1, "old2"    # J
    .param p3, "active2"    # J

    .line 1271
    move-object v9, p0

    and-long v0, p3, p1

    move-wide v10, v0

    .end local p3    # "active2":J
    .local v10, "active2":J
    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 1272
    const/16 v2, 0x19

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-wide v7, p1

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1273
    :cond_0
    const/16 v12, 0x1b

    :try_start_0
    iget-object v0, v9, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v9, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1277
    nop

    .line 1278
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 1281
    :pswitch_0
    const-wide/16 v0, 0x20

    and-long/2addr v0, v10

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 1282
    const/16 v0, 0x85

    invoke-direct {p0, v12, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 1287
    :cond_1
    :goto_0
    const/16 v2, 0x1a

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-wide v7, v10

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 1274
    :catch_0
    move-exception v0

    .line 1275
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0x1a

    const-wide/16 v3, 0x0

    const-wide/16 v5, 0x0

    move-object v1, p0

    move-wide v7, v10

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 1276
    return v12

    :pswitch_data_0
    .packed-switch 0x6e
        :pswitch_0
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa2_0(JJJJJJ)I
    .locals 21
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .param p5, "old1"    # J
    .param p7, "active1"    # J
    .param p9, "old2"    # J
    .param p11, "active2"    # J

    .line 416
    move-object/from16 v14, p0

    and-long v0, p3, p1

    move-wide v15, v0

    .end local p3    # "active0":J
    .local v15, "active0":J
    and-long v2, p7, p5

    move-wide/from16 v17, v2

    .end local p7    # "active1":J
    .local v17, "active1":J
    or-long/2addr v0, v2

    and-long v2, p11, p9

    move-wide/from16 v19, v2

    .end local p11    # "active2":J
    .local v19, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 417
    const/4 v2, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 418
    :cond_0
    const/4 v9, 0x2

    :try_start_0
    iget-object v0, v14, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v14, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 422
    nop

    .line 423
    const/16 v1, 0x23

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_1

    .line 493
    :sswitch_0
    const-wide/high16 v4, 0x100000000000000L

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_8

    .line 494
    const/16 v0, 0x38

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 489
    :sswitch_1
    const-wide v4, 0x10000000000L

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_8

    .line 490
    const/16 v0, 0x28

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 487
    :sswitch_2
    const-wide v4, 0x80000001400000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 470
    :sswitch_3
    const-wide v0, 0x1000000000L

    and-long/2addr v0, v15

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 472
    const/16 v0, 0x24

    iput v0, v14, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 473
    iput v9, v14, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto :goto_0

    .line 475
    :cond_1
    const-wide/32 v0, 0x80000

    and-long v0, v17, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_2

    .line 477
    const/16 v0, 0x53

    iput v0, v14, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 478
    iput v9, v14, Lbsh/ParserTokenManager;->jjmatchedPos:I

    goto :goto_0

    .line 480
    :cond_2
    const-wide/32 v0, 0x200000

    and-long v0, v17, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 482
    const/16 v0, 0x55

    iput v0, v14, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 483
    iput v9, v14, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 485
    :cond_3
    :goto_0
    const-wide v4, 0x40a082014000L

    const-wide/32 v8, 0x50000000

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 468
    :sswitch_4
    const-wide v4, 0x800808400L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 459
    :sswitch_5
    const-wide/32 v4, 0x40000000

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    .line 460
    const/16 v0, 0x1e

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 461
    :cond_4
    const-wide v0, 0x200000000L

    and-long v0, v17, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_5

    .line 463
    const/16 v0, 0x61

    iput v0, v14, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 464
    iput v9, v14, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 466
    :cond_5
    const-wide/high16 v4, 0x62000000000000L

    const-wide/high16 v8, 0x2000000000000000L

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 457
    :sswitch_6
    const-wide v4, 0x600000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 455
    :sswitch_7
    const-wide v4, 0x900020000800L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 453
    :sswitch_8
    const-wide v4, 0x80040180c0000L

    const-wide v8, 0x800000800000000L

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 451
    :sswitch_9
    const-wide v4, 0x400020004000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 449
    :sswitch_a
    const-wide v4, 0xa04080000000000L

    const-wide v8, 0x28280000000000L

    const-wide/16 v12, 0x28

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 447
    :sswitch_b
    const-wide/32 v4, 0x100000

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 445
    :sswitch_c
    const-wide/16 v4, 0x1000

    const-wide/high16 v8, 0x2000000000000L

    const-wide/16 v12, 0x2

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 443
    :sswitch_d
    const-wide v4, 0x40000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 441
    :sswitch_e
    const-wide v4, 0x200000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 439
    :sswitch_f
    const-wide v4, 0x11000000022000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 432
    :sswitch_10
    const-wide/high16 v0, 0x10000000000000L

    and-long v0, v17, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 434
    const/16 v0, 0x74

    iput v0, v14, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 435
    iput v9, v14, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 437
    :cond_6
    const-wide/16 v4, 0x0

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x10

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa3_0(JJJJJJ)I

    move-result v0

    return v0

    .line 426
    :sswitch_11
    const-wide/16 v0, 0x1

    and-long v0, v19, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 427
    const/16 v0, 0x80

    invoke-direct {v14, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 428
    :cond_7
    const-wide/16 v0, 0x4

    and-long v0, v19, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_8

    .line 429
    const/16 v0, 0x82

    invoke-direct {v14, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 499
    :cond_8
    :goto_1
    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-wide v3, v15

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 419
    :catch_0
    move-exception v0

    .line 420
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-wide v3, v15

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 421
    return v9

    :sswitch_data_0
    .sparse-switch
        0x3d -> :sswitch_11
        0x3e -> :sswitch_10
        0x61 -> :sswitch_f
        0x62 -> :sswitch_e
        0x63 -> :sswitch_d
        0x65 -> :sswitch_c
        0x66 -> :sswitch_b
        0x69 -> :sswitch_a
        0x6c -> :sswitch_9
        0x6e -> :sswitch_8
        0x6f -> :sswitch_7
        0x70 -> :sswitch_6
        0x72 -> :sswitch_5
        0x73 -> :sswitch_4
        0x74 -> :sswitch_3
        0x75 -> :sswitch_2
        0x77 -> :sswitch_1
        0x79 -> :sswitch_0
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa3_0(JJJJJJ)I
    .locals 21
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .param p5, "old1"    # J
    .param p7, "active1"    # J
    .param p9, "old2"    # J
    .param p11, "active2"    # J

    .line 503
    move-object/from16 v14, p0

    and-long v0, p3, p1

    move-wide v15, v0

    .end local p3    # "active0":J
    .local v15, "active0":J
    and-long v2, p7, p5

    move-wide/from16 v17, v2

    .end local p7    # "active1":J
    .local v17, "active1":J
    or-long/2addr v0, v2

    and-long v2, p11, p9

    move-wide/from16 v19, v2

    .end local p11    # "active2":J
    .local v19, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 504
    const/4 v2, 0x1

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 505
    :cond_0
    const/4 v9, 0x3

    :try_start_0
    iget-object v0, v14, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v14, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 509
    nop

    .line 510
    const/16 v1, 0x23

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 578
    :sswitch_0
    const-wide v4, 0x80000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 576
    :sswitch_1
    const-wide v4, 0x400000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 574
    :sswitch_2
    const-wide v4, 0x5100800080400L

    const-wide v8, 0x280000000000L

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 572
    :sswitch_3
    const-wide/32 v4, 0x4042000

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 568
    :sswitch_4
    const-wide/32 v4, 0x20000

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 569
    const/16 v0, 0x11

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 570
    :cond_1
    const-wide v4, 0x800000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 564
    :sswitch_5
    const-wide v4, 0x80000000L

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 565
    const/16 v0, 0x1f

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 566
    :cond_2
    const-wide v4, 0x60000400000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 562
    :sswitch_6
    const-wide/high16 v4, 0x10000000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 558
    :sswitch_7
    const-wide/32 v4, 0x1000000

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_b

    .line 559
    const/16 v0, 0x18

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 554
    :sswitch_8
    const-wide v4, 0x20000000000L

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    .line 555
    const/16 v0, 0x29

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 556
    :cond_3
    const-wide v4, 0x800200200000800L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 552
    :sswitch_9
    const-wide v4, 0x40000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 550
    :sswitch_a
    const-wide v4, 0x2008000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 546
    :sswitch_b
    const-wide v4, 0x4000000000L

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    .line 547
    const/16 v0, 0x26

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 548
    :cond_4
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x28000000000000L

    const-wide/16 v12, 0x28

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 544
    :sswitch_c
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x2000000000000L

    const-wide/16 v12, 0x2

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 534
    :sswitch_d
    const-wide/16 v4, 0x4000

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5

    .line 535
    const/16 v0, 0xe

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 536
    :cond_5
    const-wide/32 v4, 0x8000

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_6

    .line 537
    const/16 v0, 0xf

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 538
    :cond_6
    const-wide/32 v4, 0x800000

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_7

    .line 539
    const/16 v0, 0x17

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 540
    :cond_7
    const-wide/high16 v4, 0x80000000000000L

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_8

    .line 541
    const/16 v0, 0x37

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 542
    :cond_8
    const-wide v4, 0x2002000000L

    const-wide/32 v8, 0x50000000

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 525
    :sswitch_e
    const-wide/high16 v4, 0x200000000000000L

    and-long/2addr v4, v15

    cmp-long v0, v4, v2

    if-eqz v0, :cond_9

    .line 526
    const/16 v0, 0x39

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 527
    :cond_9
    const-wide v0, 0x800000000L

    and-long v0, v17, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_a

    .line 529
    const/16 v0, 0x63

    iput v0, v14, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 530
    iput v9, v14, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 532
    :cond_a
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x800000000000000L

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 523
    :sswitch_f
    const-wide v4, 0x8000000010000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 521
    :sswitch_10
    const-wide/32 v4, 0x400000

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 519
    :sswitch_11
    const-wide v4, 0x400000038101000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 517
    :sswitch_12
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x2000000000000000L

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide v2, v15

    move-wide/from16 v6, v17

    move-wide/from16 v10, v19

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa4_0(JJJJJJ)I

    move-result v0

    return v0

    .line 513
    :sswitch_13
    const-wide/16 v0, 0x10

    and-long v0, v19, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 514
    const/16 v0, 0x84

    invoke-direct {v14, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 582
    :cond_b
    :goto_0
    const/4 v2, 0x2

    move-object/from16 v1, p0

    move-wide v3, v15

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 506
    :catch_0
    move-exception v0

    .line 507
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x2

    move-object/from16 v1, p0

    move-wide v3, v15

    move-wide/from16 v5, v17

    move-wide/from16 v7, v19

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 508
    return v9

    :sswitch_data_0
    .sparse-switch
        0x3d -> :sswitch_13
        0x5f -> :sswitch_12
        0x61 -> :sswitch_11
        0x62 -> :sswitch_10
        0x63 -> :sswitch_f
        0x64 -> :sswitch_e
        0x65 -> :sswitch_d
        0x66 -> :sswitch_c
        0x67 -> :sswitch_b
        0x69 -> :sswitch_a
        0x6b -> :sswitch_9
        0x6c -> :sswitch_8
        0x6d -> :sswitch_7
        0x6e -> :sswitch_6
        0x6f -> :sswitch_5
        0x72 -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0x75 -> :sswitch_1
        0x76 -> :sswitch_0
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa4_0(JJJJJJ)I
    .locals 26
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .param p5, "old1"    # J
    .param p7, "active1"    # J
    .param p9, "old2"    # J
    .param p11, "active2"    # J

    .line 586
    move-object/from16 v14, p0

    and-long v0, p3, p1

    move-wide/from16 v22, v0

    .end local p3    # "active0":J
    .local v22, "active0":J
    and-long v2, p7, p5

    move-wide/from16 v24, v2

    .end local p7    # "active1":J
    .local v24, "active1":J
    or-long/2addr v0, v2

    and-long v2, p11, p9

    move-wide/from16 v18, v2

    .end local p11    # "active2":J
    .local v18, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 587
    const/4 v2, 0x2

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 588
    :cond_0
    const/4 v9, 0x4

    :try_start_0
    iget-object v0, v14, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v14, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 592
    nop

    .line 593
    const/16 v1, 0x23

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 651
    :pswitch_1
    const-wide/high16 v0, 0x20000000000000L

    and-long v0, v22, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_1

    .line 653
    const/16 v0, 0x35

    iput v0, v14, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 654
    iput v9, v14, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 656
    :cond_1
    const-wide/high16 v12, 0x40000000000000L

    const-wide v16, 0x280000000000L

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide/from16 v10, v22

    move-object v8, v14

    move-wide/from16 v14, v24

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v0

    return v0

    .line 649
    :pswitch_2
    move-object v8, v14

    const-wide v4, 0x8000000000L

    const-wide/16 v9, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-wide v8, v9

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v0

    return v0

    .line 647
    :pswitch_3
    const-wide/32 v4, 0x100000

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v0

    return v0

    .line 639
    :pswitch_4
    const-wide/32 v4, 0x40000

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 640
    const/16 v0, 0x12

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 641
    :cond_2
    const-wide/32 v4, 0x20000000

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    .line 642
    const/16 v0, 0x1d

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 643
    :cond_3
    const-wide v4, 0x800000000000L

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    .line 644
    const/16 v0, 0x2f

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 645
    :cond_4
    const-wide/high16 v4, 0x400000000000000L

    const-wide/high16 v8, 0x2000000000000L

    const-wide/16 v12, 0x2

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v0

    return v0

    .line 635
    :pswitch_5
    const-wide/16 v4, 0x2000

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5

    .line 636
    const/16 v0, 0xd

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 637
    :cond_5
    const-wide/high16 v4, 0x10000000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v0

    return v0

    .line 633
    :pswitch_6
    const-wide v4, 0x402400000400L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v0

    return v0

    .line 627
    :pswitch_7
    const-wide/32 v0, 0x10000000

    and-long v0, v24, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_6

    .line 628
    const/16 v0, 0x5c

    invoke-direct {v14, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 629
    :cond_6
    const-wide/32 v0, 0x40000000

    and-long v0, v24, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_b

    .line 630
    const/16 v0, 0x5e

    invoke-direct {v14, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 625
    :pswitch_8
    const-wide/32 v4, 0x2000000

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v0

    return v0

    .line 618
    :pswitch_9
    const-wide/32 v0, 0x8000000

    and-long v0, v22, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_7

    .line 620
    const/16 v0, 0x1b

    iput v0, v14, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 621
    iput v9, v14, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 623
    :cond_7
    const-wide/32 v4, 0x10400000

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v0

    return v0

    .line 614
    :pswitch_a
    const-wide/16 v4, 0x1000

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_b

    .line 615
    const/16 v0, 0xc

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 612
    :pswitch_b
    const-wide v4, 0x1200000080000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v0

    return v0

    .line 608
    :pswitch_c
    const-wide/32 v4, 0x10000

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_8

    .line 609
    const/16 v0, 0x10

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 610
    :cond_8
    const-wide/high16 v4, 0x8000000000000L

    const-wide/high16 v8, 0x28000000000000L

    const-wide/16 v12, 0x28

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v0

    return v0

    .line 602
    :pswitch_d
    const-wide/32 v4, 0x4000000

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_9

    .line 603
    const/16 v0, 0x1a

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 604
    :cond_9
    const-wide/high16 v4, 0x800000000000000L

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_a

    .line 605
    const/16 v0, 0x3b

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 606
    :cond_a
    const-wide v4, 0x100200000800L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v0

    return v0

    .line 600
    :pswitch_e
    const-wide/high16 v4, 0x6000000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v0

    return v0

    .line 598
    :pswitch_f
    const-wide v4, 0xc0800000000L

    const-wide/high16 v8, 0x2000000000000000L

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v0

    return v0

    .line 596
    :pswitch_10
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x800000000000000L

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa5_0(JJJJJJ)I

    move-result v0

    return v0

    .line 660
    :cond_b
    :goto_0
    const/4 v2, 0x3

    move-object/from16 v1, p0

    move-wide/from16 v3, v22

    move-wide/from16 v5, v24

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 589
    :catch_0
    move-exception v0

    .line 590
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x3

    move-object/from16 v1, p0

    move-wide/from16 v3, v22

    move-wide/from16 v5, v24

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 591
    return v9

    nop

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_10
        :pswitch_0
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_0
        :pswitch_0
        :pswitch_c
        :pswitch_b
        :pswitch_0
        :pswitch_a
        :pswitch_9
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_0
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa5_0(JJJJJJ)I
    .locals 24
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .param p5, "old1"    # J
    .param p7, "active1"    # J
    .param p9, "old2"    # J
    .param p11, "active2"    # J

    .line 664
    move-object/from16 v12, p0

    and-long v0, p3, p1

    move-wide/from16 v22, v0

    .end local p3    # "active0":J
    .local v22, "active0":J
    and-long v2, p7, p5

    move-wide v14, v2

    .end local p7    # "active1":J
    .local v14, "active1":J
    or-long/2addr v0, v2

    and-long v2, p11, p9

    move-wide/from16 v18, v2

    .end local p11    # "active2":J
    .local v18, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 665
    const/4 v2, 0x3

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 666
    :cond_0
    const/4 v9, 0x5

    :try_start_0
    iget-object v0, v12, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v12, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 670
    nop

    .line 671
    const/16 v1, 0x23

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto/16 :goto_0

    .line 716
    :pswitch_1
    const-wide v4, 0x400000000L

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 717
    const/16 v0, 0x22

    invoke-direct {v12, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 718
    :cond_1
    const-wide v0, 0x2080000000000L

    const-wide/high16 v16, 0x28000000000000L

    const-wide/16 v20, 0x28

    move-object/from16 v9, p0

    move-wide/from16 v10, v22

    move-object v8, v12

    move-wide v12, v0

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v0

    return v0

    .line 712
    :pswitch_2
    move-object v8, v12

    const-wide/high16 v4, 0x40000000000000L

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 713
    const/16 v0, 0x36

    invoke-direct {v8, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 714
    :cond_2
    const-wide/16 v4, 0x0

    const-wide/high16 v9, 0x2000000000000000L

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-object v11, v8

    move-wide v8, v9

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v0

    return v0

    .line 710
    :pswitch_3
    const-wide/high16 v4, 0x8000000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v0

    return v0

    .line 706
    :pswitch_4
    const-wide v4, 0x400000000000L

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    .line 707
    const/16 v0, 0x2e

    move-object/from16 v12, p0

    invoke-direct {v12, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 708
    :cond_3
    move-object/from16 v12, p0

    const-wide v4, 0x800080000L

    const-wide/16 v8, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    move-wide/from16 v12, v16

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v0

    return v0

    .line 704
    :pswitch_5
    const-wide v4, 0x200000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v0

    return v0

    .line 702
    :pswitch_6
    const-wide/32 v4, 0x10100000

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v0

    return v0

    .line 700
    :pswitch_7
    const-wide/high16 v4, 0x410000000000000L

    const-wide v8, 0x280000000000L

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v0

    return v0

    .line 696
    :pswitch_8
    const-wide/high16 v4, 0x4000000000000L

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    .line 697
    const/16 v0, 0x32

    move-object/from16 v12, p0

    invoke-direct {v12, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 696
    :cond_4
    move-object/from16 v12, p0

    goto/16 :goto_0

    .line 694
    :pswitch_9
    const-wide v4, 0x40000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    move-wide/from16 v12, v16

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v0

    return v0

    .line 692
    :pswitch_a
    const-wide v4, 0x2000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v0

    return v0

    .line 686
    :pswitch_b
    const-wide/32 v4, 0x400000

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5

    .line 687
    const/16 v0, 0x16

    move-object/from16 v12, p0

    invoke-direct {v12, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 688
    :cond_5
    move-object/from16 v12, p0

    const-wide v4, 0x8000000000L

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_8

    .line 689
    const/16 v0, 0x27

    invoke-direct {v12, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 684
    :pswitch_c
    const-wide/32 v4, 0x2000000

    const-wide/16 v8, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    move-wide/from16 p3, v14

    move-object v14, v12

    .end local v14    # "active1":J
    .local p3, "active1":J
    move-wide/from16 v12, v16

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v0

    return v0

    .line 678
    .end local p3    # "active1":J
    .restart local v14    # "active1":J
    :pswitch_d
    move-wide/from16 p3, v14

    move-object v14, v12

    .end local v14    # "active1":J
    .restart local p3    # "active1":J
    const-wide v4, 0x200000000000L

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_6

    .line 679
    const/16 v0, 0x2d

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 680
    :cond_6
    const-wide/high16 v4, 0x1000000000000L

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_7

    .line 681
    const/16 v0, 0x30

    invoke-direct {v14, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 682
    :cond_7
    const-wide v4, 0x100000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v14, p3

    .end local p3    # "active1":J
    .restart local v14    # "active1":J
    move-wide v6, v14

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v0

    return v0

    .line 676
    :pswitch_e
    const-wide/16 v4, 0xc00

    const-wide/high16 v8, 0x800000000000000L

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v0

    return v0

    .line 674
    :pswitch_f
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x2000000000000L

    const-wide/16 v12, 0x2

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa6_0(JJJJJJ)I

    move-result v0

    return v0

    .line 722
    :cond_8
    :goto_0
    const/4 v2, 0x4

    move-object/from16 v1, p0

    move-wide/from16 v3, v22

    move-wide v5, v14

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 667
    :catch_0
    move-exception v0

    .line 668
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x4

    move-object/from16 v1, p0

    move-wide/from16 v3, v22

    move-wide v5, v14

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 669
    return v9

    :pswitch_data_0
    .packed-switch 0x5f
        :pswitch_f
        :pswitch_0
        :pswitch_e
        :pswitch_0
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_0
        :pswitch_0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private final jjMoveStringLiteralDfa6_0(JJJJJJ)I
    .locals 24
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .param p5, "old1"    # J
    .param p7, "active1"    # J
    .param p9, "old2"    # J
    .param p11, "active2"    # J

    .line 726
    move-object/from16 v12, p0

    and-long v0, p3, p1

    move-wide/from16 v22, v0

    .end local p3    # "active0":J
    .local v22, "active0":J
    and-long v2, p7, p5

    move-wide v14, v2

    .end local p7    # "active1":J
    .local v14, "active1":J
    or-long/2addr v0, v2

    and-long v2, p11, p9

    move-wide/from16 v18, v2

    .end local p11    # "active2":J
    .local v18, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 727
    const/4 v2, 0x4

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 728
    :cond_0
    const/4 v9, 0x6

    :try_start_0
    iget-object v0, v12, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v12, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 732
    nop

    .line 733
    const/16 v1, 0x23

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 768
    :sswitch_0
    const-wide/32 v4, 0x10000000

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_6

    .line 769
    const/16 v0, 0x1c

    invoke-direct {v12, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 766
    :sswitch_1
    const-wide/32 v0, 0x80000

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide/from16 v10, v22

    move-object v8, v12

    move-wide v12, v0

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v0

    return v0

    .line 762
    :sswitch_2
    move-object v8, v12

    const-wide/32 v4, 0x100000

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 763
    const/16 v0, 0x14

    invoke-direct {v8, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 764
    :cond_1
    const-wide v4, 0x100000000000L

    const-wide/16 v9, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-object v11, v8

    move-wide v8, v9

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v0

    return v0

    .line 758
    :sswitch_3
    const-wide/32 v4, 0x2000000

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 759
    const/16 v0, 0x19

    move-object/from16 v12, p0

    invoke-direct {v12, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 760
    :cond_2
    move-object/from16 v12, p0

    const-wide/16 v4, 0x0

    const-wide v8, 0x2802280000000000L    # 5.759938310470282E-116

    const-wide/16 v16, 0x2

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    move-wide/from16 v12, v16

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v0

    return v0

    .line 756
    :sswitch_4
    const-wide/high16 v4, 0x8000000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v0

    return v0

    .line 752
    :sswitch_5
    const-wide/16 v4, 0x800

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    .line 753
    const/16 v0, 0xb

    move-object/from16 v12, p0

    invoke-direct {v12, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 752
    :cond_3
    move-object/from16 v12, p0

    goto/16 :goto_0

    .line 750
    :sswitch_6
    const-wide/high16 v4, 0x400000000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    move-wide/from16 v12, v16

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v0

    return v0

    .line 748
    :sswitch_7
    const-wide/high16 v4, 0x2000000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v0

    return v0

    .line 742
    :sswitch_8
    const-wide v4, 0x40000000000L

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    .line 743
    const/16 v0, 0x2a

    move-object/from16 v12, p0

    invoke-direct {v12, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 744
    :cond_4
    move-object/from16 v12, p0

    const-wide v4, 0x80000000000L

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_5

    .line 745
    const/16 v0, 0x2b

    invoke-direct {v12, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 746
    :cond_5
    const-wide v4, 0x10000200000000L

    const-wide/16 v8, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    move-wide/from16 v12, v16

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v0

    return v0

    .line 740
    :sswitch_9
    const-wide v4, 0x800000400L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v0

    return v0

    .line 738
    :sswitch_a
    const-wide v4, 0x2000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v0

    return v0

    .line 736
    :sswitch_b
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x28000000000000L

    const-wide/16 v12, 0x28

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa7_0(JJJJJJ)I

    move-result v0

    return v0

    .line 774
    :cond_6
    :goto_0
    const/4 v2, 0x5

    move-object/from16 v1, p0

    move-wide/from16 v3, v22

    move-wide v5, v14

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 729
    :catch_0
    move-exception v0

    .line 730
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x5

    move-object/from16 v1, p0

    move-wide/from16 v3, v22

    move-wide v5, v14

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 731
    return v9

    nop

    :sswitch_data_0
    .sparse-switch
        0x5f -> :sswitch_b
        0x61 -> :sswitch_a
        0x63 -> :sswitch_9
        0x65 -> :sswitch_8
        0x66 -> :sswitch_7
        0x6c -> :sswitch_6
        0x6e -> :sswitch_5
        0x6f -> :sswitch_4
        0x73 -> :sswitch_3
        0x74 -> :sswitch_2
        0x75 -> :sswitch_1
        0x79 -> :sswitch_0
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa7_0(JJJJJJ)I
    .locals 24
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .param p5, "old1"    # J
    .param p7, "active1"    # J
    .param p9, "old2"    # J
    .param p11, "active2"    # J

    .line 778
    move-object/from16 v12, p0

    and-long v0, p3, p1

    move-wide/from16 v22, v0

    .end local p3    # "active0":J
    .local v22, "active0":J
    and-long v2, p7, p5

    move-wide v14, v2

    .end local p7    # "active1":J
    .local v14, "active1":J
    or-long/2addr v0, v2

    and-long v2, p11, p9

    move-wide/from16 v18, v2

    .end local p11    # "active2":J
    .local v18, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 779
    const/4 v2, 0x5

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 780
    :cond_0
    const/4 v9, 0x7

    :try_start_0
    iget-object v0, v12, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v12, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 784
    nop

    .line 785
    const/16 v1, 0x23

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 812
    :sswitch_0
    const-wide/16 v0, 0x0

    const-wide/high16 v16, 0x20000000000000L

    const-wide/16 v20, 0x20

    move-object/from16 v9, p0

    move-wide/from16 v10, v22

    move-object v8, v12

    move-wide v12, v0

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v0

    return v0

    .line 808
    :sswitch_1
    move-object v8, v12

    const-wide/16 v4, 0x400

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_4

    .line 809
    const/16 v0, 0xa

    invoke-direct {v8, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 806
    :sswitch_2
    move-object v8, v12

    const-wide/16 v4, 0x0

    const-wide/high16 v9, 0x808000000000000L

    const-wide/16 v12, 0x8

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-object v11, v8

    move-wide v8, v9

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v0

    return v0

    .line 802
    :sswitch_3
    const-wide/high16 v4, 0x2000000000000L

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 803
    const/16 v0, 0x31

    move-object/from16 v12, p0

    invoke-direct {v12, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 802
    :cond_1
    move-object/from16 v12, p0

    goto/16 :goto_0

    .line 800
    :sswitch_4
    const-wide v4, 0x18000200000000L

    const-wide/16 v8, 0x0

    const-wide/16 v16, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    move-wide/from16 v12, v16

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v0

    return v0

    .line 798
    :sswitch_5
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x2000000000000000L

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v0

    return v0

    .line 796
    :sswitch_6
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x2000000000000L

    const-wide/16 v12, 0x2

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v0

    return v0

    .line 790
    :sswitch_7
    const-wide/32 v4, 0x80000

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 791
    const/16 v0, 0x13

    move-object/from16 v12, p0

    invoke-direct {v12, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 792
    :cond_2
    move-object/from16 v12, p0

    const-wide/high16 v4, 0x400000000000000L

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    .line 793
    const/16 v0, 0x3a

    invoke-direct {v12, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 794
    :cond_3
    const-wide v4, 0x100800000000L

    const-wide v8, 0x280000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    move-wide/from16 v12, v16

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v0

    return v0

    .line 788
    :sswitch_8
    const-wide v4, 0x2000000000L

    const-wide/16 v8, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa8_0(JJJJJJ)I

    move-result v0

    return v0

    .line 816
    :cond_4
    :goto_0
    const/4 v2, 0x6

    move-object/from16 v1, p0

    move-wide/from16 v3, v22

    move-wide v5, v14

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 781
    :catch_0
    move-exception v0

    .line 782
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x6

    move-object/from16 v1, p0

    move-wide/from16 v3, v22

    move-wide v5, v14

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 783
    return v9

    :sswitch_data_0
    .sparse-switch
        0x63 -> :sswitch_8
        0x65 -> :sswitch_7
        0x68 -> :sswitch_6
        0x69 -> :sswitch_5
        0x6e -> :sswitch_4
        0x70 -> :sswitch_3
        0x73 -> :sswitch_2
        0x74 -> :sswitch_1
        0x75 -> :sswitch_0
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa8_0(JJJJJJ)I
    .locals 24
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .param p5, "old1"    # J
    .param p7, "active1"    # J
    .param p9, "old2"    # J
    .param p11, "active2"    # J

    .line 820
    move-object/from16 v12, p0

    and-long v0, p3, p1

    move-wide/from16 v22, v0

    .end local p3    # "active0":J
    .local v22, "active0":J
    and-long v2, p7, p5

    move-wide v14, v2

    .end local p7    # "active1":J
    .local v14, "active1":J
    or-long/2addr v0, v2

    and-long v2, p11, p9

    move-wide/from16 v18, v2

    .end local p11    # "active2":J
    .local v18, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 821
    const/4 v2, 0x6

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 822
    :cond_0
    const/16 v9, 0x8

    :try_start_0
    iget-object v0, v12, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v12, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 826
    nop

    .line 827
    const/16 v1, 0x23

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 850
    :sswitch_0
    const-wide/high16 v4, 0x10000000000000L

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 851
    const/16 v0, 0x34

    invoke-direct {v12, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 852
    :cond_1
    const-wide v0, 0x200000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide/from16 v10, v22

    move-object v8, v12

    move-wide v12, v0

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v0

    return v0

    .line 848
    :sswitch_1
    move-object v8, v12

    const-wide v4, 0x800000000L

    const-wide/16 v9, 0x0

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-object v11, v8

    move-wide v8, v9

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v0

    return v0

    .line 846
    :sswitch_2
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x20000000000000L

    const-wide/16 v12, 0x20

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v0

    return v0

    .line 844
    :sswitch_3
    const-wide/high16 v4, 0x8000000000000L

    const-wide/high16 v8, 0x802000000000000L

    const-wide/16 v12, 0x2

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v0

    return v0

    .line 842
    :sswitch_4
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x8000000000000L

    const-wide/16 v12, 0x8

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v0

    return v0

    .line 840
    :sswitch_5
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x2000000000000000L

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v0

    return v0

    .line 836
    :sswitch_6
    const-wide v4, 0x2000000000L

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 837
    const/16 v0, 0x25

    move-object/from16 v12, p0

    invoke-direct {v12, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 836
    :cond_2
    move-object/from16 v12, p0

    goto :goto_0

    .line 832
    :sswitch_7
    const-wide v4, 0x100000000000L

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_3

    .line 833
    const/16 v0, 0x2c

    invoke-direct {v12, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 830
    :sswitch_8
    const-wide/16 v4, 0x0

    const-wide v8, 0x280000000000L

    const-wide/16 v16, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide v6, v14

    move-wide/from16 v10, v18

    move-wide/from16 v12, v16

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa9_0(JJJJJJ)I

    move-result v0

    return v0

    .line 856
    :cond_3
    :goto_0
    const/4 v2, 0x7

    move-object/from16 v1, p0

    move-wide/from16 v3, v22

    move-wide v5, v14

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 823
    :catch_0
    move-exception v0

    .line 824
    .local v0, "e":Ljava/io/IOException;
    const/4 v2, 0x7

    move-object/from16 v1, p0

    move-wide/from16 v3, v22

    move-wide v5, v14

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 825
    return v9

    :sswitch_data_0
    .sparse-switch
        0x5f -> :sswitch_8
        0x64 -> :sswitch_7
        0x65 -> :sswitch_6
        0x67 -> :sswitch_5
        0x68 -> :sswitch_4
        0x69 -> :sswitch_3
        0x6e -> :sswitch_2
        0x6f -> :sswitch_1
        0x74 -> :sswitch_0
    .end sparse-switch
.end method

.method private final jjMoveStringLiteralDfa9_0(JJJJJJ)I
    .locals 26
    .param p1, "old0"    # J
    .param p3, "active0"    # J
    .param p5, "old1"    # J
    .param p7, "active1"    # J
    .param p9, "old2"    # J
    .param p11, "active2"    # J

    .line 860
    move-object/from16 v14, p0

    and-long v0, p3, p1

    move-wide/from16 v22, v0

    .end local p3    # "active0":J
    .local v22, "active0":J
    and-long v2, p7, p5

    move-wide/from16 v24, v2

    .end local p7    # "active1":J
    .local v24, "active1":J
    or-long/2addr v0, v2

    and-long v2, p11, p9

    move-wide/from16 v18, v2

    .end local p11    # "active2":J
    .local v18, "active2":J
    or-long/2addr v0, v2

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    .line 861
    const/4 v2, 0x7

    move-object/from16 v1, p0

    move-wide/from16 v3, p1

    move-wide/from16 v5, p5

    move-wide/from16 v7, p9

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 862
    :cond_0
    const/16 v9, 0x9

    :try_start_0
    iget-object v0, v14, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, v14, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 866
    nop

    .line 867
    const/16 v1, 0x23

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    .line 890
    :sswitch_0
    const-wide/high16 v12, 0x8000000000000L

    const-wide/16 v16, 0x0

    const-wide/16 v20, 0x0

    move-object/from16 v9, p0

    move-wide/from16 v10, v22

    move-object v8, v14

    move-wide/from16 v14, v24

    invoke-direct/range {v9 .. v21}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v0

    return v0

    .line 886
    :sswitch_1
    move-object v8, v14

    const-wide v4, 0x200000000L

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_1

    .line 887
    const/16 v0, 0x21

    invoke-direct {v8, v9, v0, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 888
    :cond_1
    const-wide/16 v4, 0x0

    const-wide/high16 v9, 0x20000000000000L

    const-wide/16 v12, 0x20

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-object v14, v8

    move-wide v8, v9

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v0

    return v0

    .line 884
    :sswitch_2
    const-wide/16 v4, 0x0

    const-wide v8, 0x200000000000L

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v0

    return v0

    .line 880
    :sswitch_3
    const-wide/high16 v0, 0x2000000000000000L

    and-long v0, v24, v0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_3

    .line 881
    const/16 v0, 0x7d

    invoke-direct {v14, v9, v0}, Lbsh/ParserTokenManager;->jjStopAtPos(II)I

    move-result v0

    return v0

    .line 878
    :sswitch_4
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x8000000000000L

    const-wide/16 v12, 0x8

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v0

    return v0

    .line 876
    :sswitch_5
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x800000000000000L

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v0

    return v0

    .line 872
    :sswitch_6
    const-wide v4, 0x800000000L

    and-long v4, v22, v4

    cmp-long v0, v4, v2

    if-eqz v0, :cond_2

    .line 873
    invoke-direct {v14, v9, v1, v1}, Lbsh/ParserTokenManager;->jjStartNfaWithStates_0(III)I

    move-result v0

    return v0

    .line 874
    :cond_2
    const-wide/16 v4, 0x0

    const-wide/high16 v8, 0x2000000000000L

    const-wide/16 v12, 0x2

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v0

    return v0

    .line 870
    :sswitch_7
    const-wide/16 v4, 0x0

    const-wide v8, 0x80000000000L

    const-wide/16 v12, 0x0

    move-object/from16 v1, p0

    move-wide/from16 v2, v22

    move-wide/from16 v6, v24

    move-wide/from16 v10, v18

    invoke-direct/range {v1 .. v13}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa10_0(JJJJJJ)I

    move-result v0

    return v0

    .line 894
    :cond_3
    :goto_0
    const/16 v2, 0x8

    move-object/from16 v1, p0

    move-wide/from16 v3, v22

    move-wide/from16 v5, v24

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStartNfa_0(IJJJ)I

    move-result v0

    return v0

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Ljava/io/IOException;
    const/16 v2, 0x8

    move-object/from16 v1, p0

    move-wide/from16 v3, v22

    move-wide/from16 v5, v24

    move-wide/from16 v7, v18

    invoke-direct/range {v1 .. v8}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    .line 865
    return v9

    :sswitch_data_0
    .sparse-switch
        0x61 -> :sswitch_7
        0x66 -> :sswitch_6
        0x67 -> :sswitch_5
        0x69 -> :sswitch_4
        0x6e -> :sswitch_3
        0x6f -> :sswitch_2
        0x73 -> :sswitch_1
        0x7a -> :sswitch_0
    .end sparse-switch
.end method

.method private final jjStartNfaWithStates_0(III)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "kind"    # I
    .param p3, "state"    # I

    .line 185
    iput p2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 186
    iput p1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 187
    :try_start_0
    iget-object v0, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    move-result v0

    iput-char v0, p0, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 188
    nop

    .line 189
    add-int/lit8 v0, p1, 0x1

    invoke-direct {p0, p3, v0}, Lbsh/ParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0

    .line 188
    :catch_0
    move-exception v0

    .local v0, "e":Ljava/io/IOException;
    add-int/lit8 v1, p1, 0x1

    return v1
.end method

.method private final jjStartNfa_0(IJJJ)I
    .locals 2
    .param p1, "pos"    # I
    .param p2, "active0"    # J
    .param p4, "active1"    # J
    .param p6, "active2"    # J

    .line 175
    invoke-direct/range {p0 .. p7}, Lbsh/ParserTokenManager;->jjStopStringLiteralDfa_0(IJJJ)I

    move-result v0

    add-int/lit8 v1, p1, 0x1

    invoke-direct {p0, v0, v1}, Lbsh/ParserTokenManager;->jjMoveNfa_0(II)I

    move-result v0

    return v0
.end method

.method private final jjStopAtPos(II)I
    .locals 1
    .param p1, "pos"    # I
    .param p2, "kind"    # I

    .line 179
    iput p2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 180
    iput p1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 181
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method private final jjStopStringLiteralDfa_0(IJJJ)I
    .locals 7
    .param p1, "pos"    # I
    .param p2, "active0"    # J
    .param p4, "active1"    # J
    .param p6, "active2"    # J

    .line 37
    const-wide/high16 v0, 0x8000000000000L

    const/16 v2, 0x45

    const/4 v3, -0x1

    const/16 v4, 0x23

    const-wide/16 v5, 0x0

    packed-switch p1, :pswitch_data_0

    .line 170
    return v3

    .line 166
    :pswitch_0
    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_0

    .line 167
    return v4

    .line 168
    :cond_0
    return v3

    .line 155
    :pswitch_1
    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_2

    .line 157
    iget v0, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    const/16 v1, 0xa

    if-eq v0, v1, :cond_1

    .line 159
    iput v2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 160
    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 162
    :cond_1
    return v4

    .line 164
    :cond_2
    return v3

    .line 145
    :pswitch_2
    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_3

    .line 147
    iput v2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 148
    const/16 v0, 0x9

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 149
    return v4

    .line 151
    :cond_3
    const-wide v0, 0xa00000000L

    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_4

    .line 152
    return v4

    .line 153
    :cond_4
    return v3

    .line 135
    :pswitch_3
    const-wide v0, 0x8000a00000000L

    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_5

    .line 137
    iput v2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 138
    const/16 v0, 0x8

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 139
    return v4

    .line 141
    :cond_5
    const-wide v0, 0x10102000000000L

    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_6

    .line 142
    return v4

    .line 143
    :cond_6
    return v3

    .line 125
    :pswitch_4
    const-wide v0, 0x402000000080400L

    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_7

    .line 126
    return v4

    .line 127
    :cond_7
    const-wide v0, 0x18102a00000000L

    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_8

    .line 129
    iput v2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 130
    const/4 v0, 0x7

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 131
    return v4

    .line 133
    :cond_8
    return v3

    .line 115
    :pswitch_5
    const-wide v0, 0x41a102a00080400L

    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_9

    .line 117
    iput v2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 118
    const/4 v0, 0x6

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 119
    return v4

    .line 121
    :cond_9
    const-wide v0, 0xc0012100800L

    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_a

    .line 122
    return v4

    .line 123
    :cond_a
    return v3

    .line 105
    :pswitch_6
    const-wide v0, 0x41a1c2a12180c00L

    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_b

    .line 107
    iput v2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 108
    const/4 v0, 0x5

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 109
    return v4

    .line 111
    :cond_b
    const-wide v0, 0x45608400400000L

    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_c

    .line 112
    return v4

    .line 113
    :cond_c
    return v3

    .line 92
    :pswitch_7
    const-wide v0, 0x86080003c053000L

    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_d

    .line 93
    return v4

    .line 94
    :cond_d
    const-wide v0, 0x41f7cae02580c00L

    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_f

    .line 96
    iget v0, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    const/4 v1, 0x4

    if-eq v0, v1, :cond_e

    .line 98
    iput v2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 99
    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 101
    :cond_e
    return v4

    .line 103
    :cond_f
    return v3

    .line 79
    :pswitch_8
    const-wide v0, 0xc7ffcae3e5d3c00L

    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_11

    .line 81
    iget v0, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    const/4 v1, 0x3

    if-eq v0, v1, :cond_10

    .line 83
    iput v2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 84
    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 86
    :cond_10
    return v4

    .line 88
    :cond_11
    const-wide v0, 0x28002408182c000L

    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_12

    .line 89
    return v4

    .line 90
    :cond_12
    return v3

    .line 66
    :pswitch_9
    const-wide v0, 0xefffecebfdffc00L

    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_14

    .line 68
    iget v0, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    const/4 v1, 0x2

    if-eq v0, v1, :cond_13

    .line 70
    iput v2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 71
    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 73
    :cond_13
    return v4

    .line 75
    :cond_14
    const-wide v0, 0x100013040000000L

    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_15

    .line 76
    return v4

    .line 77
    :cond_15
    return v3

    .line 53
    :pswitch_a
    const-wide v0, 0x100600000L

    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_16

    .line 54
    return v4

    .line 55
    :cond_16
    const-wide v0, 0xffffffeff9ffc00L

    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_18

    .line 57
    iget v0, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_17

    .line 59
    iput v2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 60
    iput v1, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 62
    :cond_17
    return v4

    .line 64
    :cond_18
    return v3

    .line 40
    :pswitch_b
    const-wide v0, 0x200020000000000L

    and-long/2addr v0, p4

    cmp-long v0, v0, v5

    if-eqz v0, :cond_19

    .line 41
    const/16 v0, 0x38

    return v0

    .line 42
    :cond_19
    const-wide/16 v0, 0x3e

    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_1a

    .line 43
    const/4 v0, 0x0

    return v0

    .line 44
    :cond_1a
    const-wide/32 v0, 0x10000

    and-long/2addr v0, p4

    cmp-long v0, v0, v5

    if-eqz v0, :cond_1b

    .line 45
    const/16 v0, 0xb

    return v0

    .line 46
    :cond_1b
    const-wide v0, 0xffffffffffffc00L

    and-long/2addr v0, p2

    cmp-long v0, v0, v5

    if-eqz v0, :cond_1c

    .line 48
    iput v2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 49
    return v4

    .line 51
    :cond_1c
    return v3

    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public ReInit(Lbsh/JavaCharStream;)V
    .locals 1
    .param p1, "stream"    # Lbsh/JavaCharStream;

    .line 2015
    const/4 v0, 0x0

    iput v0, p0, Lbsh/ParserTokenManager;->jjnewStateCnt:I

    iput v0, p0, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 2016
    iget v0, p0, Lbsh/ParserTokenManager;->defaultLexState:I

    iput v0, p0, Lbsh/ParserTokenManager;->curLexState:I

    .line 2017
    iput-object p1, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    .line 2018
    invoke-direct {p0}, Lbsh/ParserTokenManager;->ReInitRounds()V

    .line 2019
    return-void
.end method

.method public ReInit(Lbsh/JavaCharStream;I)V
    .locals 0
    .param p1, "stream"    # Lbsh/JavaCharStream;
    .param p2, "lexState"    # I

    .line 2029
    invoke-virtual {p0, p1}, Lbsh/ParserTokenManager;->ReInit(Lbsh/JavaCharStream;)V

    .line 2030
    invoke-virtual {p0, p2}, Lbsh/ParserTokenManager;->SwitchTo(I)V

    .line 2031
    return-void
.end method

.method public SwitchTo(I)V
    .locals 3
    .param p1, "lexState"    # I

    .line 2034
    const/4 v0, 0x1

    if-ge p1, v0, :cond_0

    if-ltz p1, :cond_0

    .line 2037
    iput p1, p0, Lbsh/ParserTokenManager;->curLexState:I

    .line 2038
    return-void

    .line 2035
    :cond_0
    new-instance v0, Lbsh/TokenMgrError;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Error: Ignoring invalid lexical state : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ". State unchanged."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    invoke-direct {v0, v1, v2}, Lbsh/TokenMgrError;-><init>(Ljava/lang/String;I)V

    throw v0
.end method

.method public getNextToken()Lbsh/Token;
    .locals 18

    .line 2063
    move-object/from16 v1, p0

    const-string v2, ""

    const/4 v0, 0x0

    .line 2065
    .local v0, "specialToken":Lbsh/Token;
    const/4 v3, 0x0

    move v4, v3

    move-object v3, v0

    .line 2072
    .end local v0    # "specialToken":Lbsh/Token;
    .local v3, "specialToken":Lbsh/Token;
    .local v4, "curPos":I
    :cond_0
    :goto_0
    const/4 v5, 0x0

    :try_start_0
    iget-object v0, v1, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->BeginToken()C

    move-result v0

    iput-char v0, v1, Lbsh/ParserTokenManager;->curChar:C
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    .line 2080
    nop

    .line 2082
    const v0, 0x7fffffff

    iput v0, v1, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 2083
    iput v5, v1, Lbsh/ParserTokenManager;->jjmatchedPos:I

    .line 2084
    invoke-direct/range {p0 .. p0}, Lbsh/ParserTokenManager;->jjMoveStringLiteralDfa0_0()I

    move-result v4

    .line 2085
    iget v5, v1, Lbsh/ParserTokenManager;->jjmatchedKind:I

    const/4 v6, 0x1

    if-eq v5, v0, :cond_4

    .line 2087
    iget v0, v1, Lbsh/ParserTokenManager;->jjmatchedPos:I

    add-int/lit8 v5, v0, 0x1

    if-ge v5, v4, :cond_1

    .line 2088
    iget-object v5, v1, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    sub-int v0, v4, v0

    sub-int/2addr v0, v6

    invoke-virtual {v5, v0}, Lbsh/JavaCharStream;->backup(I)V

    .line 2089
    :cond_1
    sget-object v0, Lbsh/ParserTokenManager;->jjtoToken:[J

    iget v5, v1, Lbsh/ParserTokenManager;->jjmatchedKind:I

    shr-int/lit8 v6, v5, 0x6

    aget-wide v6, v0, v6

    and-int/lit8 v0, v5, 0x3f

    const-wide/16 v8, 0x1

    shl-long v10, v8, v0

    and-long/2addr v6, v10

    const-wide/16 v10, 0x0

    cmp-long v0, v6, v10

    if-eqz v0, :cond_2

    .line 2091
    invoke-virtual/range {p0 .. p0}, Lbsh/ParserTokenManager;->jjFillToken()Lbsh/Token;

    move-result-object v0

    .line 2092
    .local v0, "matchedToken":Lbsh/Token;
    iput-object v3, v0, Lbsh/Token;->specialToken:Lbsh/Token;

    .line 2093
    return-object v0

    .line 2097
    .end local v0    # "matchedToken":Lbsh/Token;
    :cond_2
    sget-object v0, Lbsh/ParserTokenManager;->jjtoSpecial:[J

    shr-int/lit8 v6, v5, 0x6

    aget-wide v6, v0, v6

    and-int/lit8 v0, v5, 0x3f

    shl-long/2addr v8, v0

    and-long v5, v6, v8

    cmp-long v0, v5, v10

    if-eqz v0, :cond_0

    .line 2099
    invoke-virtual/range {p0 .. p0}, Lbsh/ParserTokenManager;->jjFillToken()Lbsh/Token;

    move-result-object v0

    .line 2100
    .restart local v0    # "matchedToken":Lbsh/Token;
    if-nez v3, :cond_3

    .line 2101
    move-object v3, v0

    goto :goto_0

    .line 2104
    :cond_3
    iput-object v3, v0, Lbsh/Token;->specialToken:Lbsh/Token;

    .line 2105
    iput-object v0, v3, Lbsh/Token;->next:Lbsh/Token;

    move-object v3, v0

    goto :goto_0

    .line 2111
    .end local v0    # "matchedToken":Lbsh/Token;
    :cond_4
    iget-object v0, v1, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->getEndLine()I

    move-result v5

    .line 2112
    .local v5, "error_line":I
    iget-object v0, v1, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->getEndColumn()I

    move-result v7

    .line 2113
    .local v7, "error_column":I
    const/4 v8, 0x0

    .line 2114
    .local v8, "error_after":Ljava/lang/String;
    const/4 v9, 0x0

    .line 2115
    .local v9, "EOFSeen":Z
    :try_start_1
    iget-object v0, v1, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->readChar()C

    iget-object v0, v1, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0, v6}, Lbsh/JavaCharStream;->backup(I)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 2125
    goto :goto_3

    .line 2116
    :catch_0
    move-exception v0

    .line 2117
    .local v0, "e1":Ljava/io/IOException;
    const/4 v9, 0x1

    .line 2118
    if-gt v4, v6, :cond_5

    move-object v10, v2

    goto :goto_1

    :cond_5
    iget-object v10, v1, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v10}, Lbsh/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v10

    :goto_1
    move-object v8, v10

    .line 2119
    iget-char v10, v1, Lbsh/ParserTokenManager;->curChar:C

    const/16 v11, 0xa

    if-eq v10, v11, :cond_7

    const/16 v11, 0xd

    if-ne v10, v11, :cond_6

    goto :goto_2

    .line 2124
    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 2120
    :cond_7
    :goto_2
    add-int/lit8 v5, v5, 0x1

    .line 2121
    const/4 v7, 0x0

    .line 2126
    .end local v0    # "e1":Ljava/io/IOException;
    :goto_3
    if-nez v9, :cond_9

    .line 2127
    iget-object v0, v1, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0, v6}, Lbsh/JavaCharStream;->backup(I)V

    .line 2128
    if-gt v4, v6, :cond_8

    goto :goto_4

    :cond_8
    iget-object v0, v1, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v0}, Lbsh/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    :goto_4
    move-object v8, v2

    .line 2130
    :cond_9
    new-instance v0, Lbsh/TokenMgrError;

    iget v12, v1, Lbsh/ParserTokenManager;->curLexState:I

    iget-char v2, v1, Lbsh/ParserTokenManager;->curChar:C

    const/16 v17, 0x0

    move-object v10, v0

    move v11, v9

    move v13, v5

    move v14, v7

    move-object v15, v8

    move/from16 v16, v2

    invoke-direct/range {v10 .. v17}, Lbsh/TokenMgrError;-><init>(ZIIILjava/lang/String;CI)V

    throw v0

    .line 2074
    .end local v5    # "error_line":I
    .end local v7    # "error_column":I
    .end local v8    # "error_after":Ljava/lang/String;
    .end local v9    # "EOFSeen":Z
    :catch_1
    move-exception v0

    .line 2076
    .local v0, "e":Ljava/io/IOException;
    iput v5, v1, Lbsh/ParserTokenManager;->jjmatchedKind:I

    .line 2077
    invoke-virtual/range {p0 .. p0}, Lbsh/ParserTokenManager;->jjFillToken()Lbsh/Token;

    move-result-object v2

    .line 2078
    .local v2, "matchedToken":Lbsh/Token;
    iput-object v3, v2, Lbsh/Token;->specialToken:Lbsh/Token;

    .line 2079
    return-object v2
.end method

.method protected jjFillToken()Lbsh/Token;
    .locals 3

    .line 2042
    iget v0, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    invoke-static {v0}, Lbsh/Token;->newToken(I)Lbsh/Token;

    move-result-object v0

    .line 2043
    .local v0, "t":Lbsh/Token;
    iget v1, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    iput v1, v0, Lbsh/Token;->kind:I

    .line 2044
    sget-object v1, Lbsh/ParserTokenManager;->jjstrLiteralImages:[Ljava/lang/String;

    iget v2, p0, Lbsh/ParserTokenManager;->jjmatchedKind:I

    aget-object v1, v1, v2

    .line 2045
    .local v1, "im":Ljava/lang/String;
    if-nez v1, :cond_0

    iget-object v2, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->GetImage()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    move-object v2, v1

    :goto_0
    iput-object v2, v0, Lbsh/Token;->image:Ljava/lang/String;

    .line 2046
    iget-object v2, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->getBeginLine()I

    move-result v2

    iput v2, v0, Lbsh/Token;->beginLine:I

    .line 2047
    iget-object v2, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->getBeginColumn()I

    move-result v2

    iput v2, v0, Lbsh/Token;->beginColumn:I

    .line 2048
    iget-object v2, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->getEndLine()I

    move-result v2

    iput v2, v0, Lbsh/Token;->endLine:I

    .line 2049
    iget-object v2, p0, Lbsh/ParserTokenManager;->input_stream:Lbsh/JavaCharStream;

    invoke-virtual {v2}, Lbsh/JavaCharStream;->getEndColumn()I

    move-result v2

    iput v2, v0, Lbsh/Token;->endColumn:I

    .line 2050
    return-object v0
.end method

.method public setDebugStream(Ljava/io/PrintStream;)V
    .locals 0
    .param p1, "ds"    # Ljava/io/PrintStream;

    .line 34
    iput-object p1, p0, Lbsh/ParserTokenManager;->debugStream:Ljava/io/PrintStream;

    return-void
.end method
