.class Lcom/sleepycat/json_simple/Yylex;
.super Ljava/lang/Object;
.source "Yylex.java"


# static fields
.field public static final STRING_BEGIN:I = 0x2

.field public static final YYEOF:I = -0x1

.field public static final YYINITIAL:I = 0x0

.field private static final ZZ_ACTION:[I

.field private static final ZZ_ACTION_PACKED_0:Ljava/lang/String; = "\u0002\u0000\u0002\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0003\u0001\u0001\u0005\u0001\u0006\u0001\u0007\u0001\u0008\u0001\t\u0001\n\u0001\u000b\u0001\u000c\u0001\r\u0005\u0000\u0001\u000c\u0001\u000e\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0000\u0001\u0002\u0001\u0000\u0001\u0002\u0004\u0000\u0001\u0015\u0001\u0016\u0002\u0000\u0001\u0017"

.field private static final ZZ_ATTRIBUTE:[I

.field private static final ZZ_ATTRIBUTE_PACKED_0:Ljava/lang/String; = "\u0002\u0000\u0001\t\u0003\u0001\u0001\t\u0003\u0001\u0006\t\u0002\u0001\u0001\t\u0005\u0000\u0008\t\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0004\u0000\u0002\t\u0002\u0000\u0001\t"

.field private static final ZZ_BUFFERSIZE:I = 0x4000

.field private static final ZZ_CMAP:[C

.field private static final ZZ_CMAP_PACKED:Ljava/lang/String; = "\t\u0000\u0001\u0007\u0001\u0007\u0002\u0000\u0001\u0007\u0012\u0000\u0001\u0007\u0001\u0000\u0001\t\u0008\u0000\u0001\u0006\u0001\u0019\u0001\u0002\u0001\u0004\u0001\n\n\u0003\u0001\u001a\u0006\u0000\u0004\u0001\u0001\u0005\u0001\u0001\u0014\u0000\u0001\u0017\u0001\u0008\u0001\u0018\u0003\u0000\u0001\u0012\u0001\u000b\u0002\u0001\u0001\u0011\u0001\u000c\u0005\u0000\u0001\u0013\u0001\u0000\u0001\r\u0003\u0000\u0001\u000e\u0001\u0014\u0001\u000f\u0001\u0010\u0005\u0000\u0001\u0015\u0001\u0000\u0001\u0016\uff82\u0000"

.field private static final ZZ_ERROR_MSG:[Ljava/lang/String;

.field private static final ZZ_LEXSTATE:[I

.field private static final ZZ_NO_MATCH:I = 0x1

.field private static final ZZ_PUSHBACK_2BIG:I = 0x2

.field private static final ZZ_ROWMAP:[I

.field private static final ZZ_ROWMAP_PACKED_0:Ljava/lang/String; = "\u0000\u0000\u0000\u001b\u00006\u0000Q\u0000l\u0000\u0087\u00006\u0000\u00a2\u0000\u00bd\u0000\u00d8\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u00f3\u0000\u010e\u00006\u0000\u0129\u0000\u0144\u0000\u015f\u0000\u017a\u0000\u0195\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u01b0\u0000\u01cb\u0000\u01e6\u0000\u01e6\u0000\u0201\u0000\u021c\u0000\u0237\u0000\u0252\u00006\u00006\u0000\u026d\u0000\u0288\u00006"

.field private static final ZZ_TRANS:[I

.field private static final ZZ_UNKNOWN_ERROR:I


# instance fields
.field private sb:Ljava/lang/StringBuilder;

.field private yychar:I

.field private yycolumn:I

.field private yyline:I

.field private zzAtBOL:Z

.field private zzAtEOF:Z

.field private zzBuffer:[C

.field private zzCurrentPos:I

.field private zzEOFDone:Z

.field private zzEndRead:I

.field private zzLexicalState:I

.field private zzMarkedPos:I

.field private zzReader:Ljava/io/Reader;

.field private zzStartRead:I

.field private zzState:I


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 30
    const/4 v0, 0x4

    new-array v0, v0, [I

    fill-array-data v0, :array_0

    sput-object v0, Lcom/sleepycat/json_simple/Yylex;->ZZ_LEXSTATE:[I

    .line 47
    const-string v0, "\t\u0000\u0001\u0007\u0001\u0007\u0002\u0000\u0001\u0007\u0012\u0000\u0001\u0007\u0001\u0000\u0001\t\u0008\u0000\u0001\u0006\u0001\u0019\u0001\u0002\u0001\u0004\u0001\n\n\u0003\u0001\u001a\u0006\u0000\u0004\u0001\u0001\u0005\u0001\u0001\u0014\u0000\u0001\u0017\u0001\u0008\u0001\u0018\u0003\u0000\u0001\u0012\u0001\u000b\u0002\u0001\u0001\u0011\u0001\u000c\u0005\u0000\u0001\u0013\u0001\u0000\u0001\r\u0003\u0000\u0001\u000e\u0001\u0014\u0001\u000f\u0001\u0010\u0005\u0000\u0001\u0015\u0001\u0000\u0001\u0016\uff82\u0000"

    invoke-static {v0}, Lcom/sleepycat/json_simple/Yylex;->zzUnpackCMap(Ljava/lang/String;)[C

    move-result-object v0

    sput-object v0, Lcom/sleepycat/json_simple/Yylex;->ZZ_CMAP:[C

    .line 52
    invoke-static {}, Lcom/sleepycat/json_simple/Yylex;->zzUnpackAction()[I

    move-result-object v0

    sput-object v0, Lcom/sleepycat/json_simple/Yylex;->ZZ_ACTION:[I

    .line 84
    invoke-static {}, Lcom/sleepycat/json_simple/Yylex;->zzUnpackRowMap()[I

    move-result-object v0

    sput-object v0, Lcom/sleepycat/json_simple/Yylex;->ZZ_ROWMAP:[I

    .line 115
    const/16 v0, 0x2a3

    new-array v0, v0, [I

    fill-array-data v0, :array_1

    sput-object v0, Lcom/sleepycat/json_simple/Yylex;->ZZ_TRANS:[I

    .line 192
    const-string v0, "Unkown internal scanner error"

    const-string v1, "Error: could not match input"

    const-string v2, "Error: pushback value was too large"

    filled-new-array {v0, v1, v2}, [Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/sleepycat/json_simple/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    .line 201
    invoke-static {}, Lcom/sleepycat/json_simple/Yylex;->zzUnpackAttribute()[I

    move-result-object v0

    sput-object v0, Lcom/sleepycat/json_simple/Yylex;->ZZ_ATTRIBUTE:[I

    return-void

    :array_0
    .array-data 4
        0x0
        0x0
        0x1
        0x1
    .end array-data

    :array_1
    .array-data 4
        0x2
        0x2
        0x3
        0x4
        0x2
        0x2
        0x2
        0x5
        0x2
        0x6
        0x2
        0x2
        0x7
        0x8
        0x2
        0x9
        0x2
        0x2
        0x2
        0x2
        0x2
        0xa
        0xb
        0xc
        0xd
        0xe
        0xf
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x11
        0x12
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x4
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x4
        0x13
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x5
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x15
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x16
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x17
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        0x10
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x18
        0x19
        0x1a
        0x1b
        0x1c
        0x1d
        0x1e
        0x1f
        0x20
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x21
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x22
        0x23
        -0x1
        -0x1
        0x22
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x24
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x25
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        -0x1
        0x27
        -0x1
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        0x27
        0x27
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x21
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x14
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x23
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x26
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x28
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x29
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        -0x1
        0x2a
        -0x1
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        0x2a
        0x2a
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        -0x1
        0x2b
        -0x1
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        0x2b
        0x2b
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        -0x1
        0x2c
        -0x1
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        0x2c
        0x2c
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
        -0x1
    .end array-data
.end method

.method constructor <init>(Ljava/io/InputStream;)V
    .locals 1
    .param p1, "in"    # Ljava/io/InputStream;

    .line 302
    new-instance v0, Ljava/io/InputStreamReader;

    invoke-direct {v0, p1}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {p0, v0}, Lcom/sleepycat/json_simple/Yylex;-><init>(Ljava/io/Reader;)V

    .line 303
    return-void
.end method

.method constructor <init>(Ljava/io/Reader;)V
    .locals 1
    .param p1, "in"    # Ljava/io/Reader;

    .line 291
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 234
    const/4 v0, 0x0

    iput v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzLexicalState:I

    .line 238
    const/16 v0, 0x4000

    new-array v0, v0, [C

    iput-object v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzBuffer:[C

    .line 268
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzAtBOL:Z

    .line 277
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/sleepycat/json_simple/Yylex;->sb:Ljava/lang/StringBuilder;

    .line 292
    iput-object p1, p0, Lcom/sleepycat/json_simple/Yylex;->zzReader:Ljava/io/Reader;

    .line 293
    return-void
.end method

.method private zzRefill()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 334
    iget v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzStartRead:I

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 335
    iget-object v2, p0, Lcom/sleepycat/json_simple/Yylex;->zzBuffer:[C

    iget v3, p0, Lcom/sleepycat/json_simple/Yylex;->zzEndRead:I

    sub-int/2addr v3, v0

    invoke-static {v2, v0, v2, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 340
    iget v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzEndRead:I

    iget v2, p0, Lcom/sleepycat/json_simple/Yylex;->zzStartRead:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzEndRead:I

    .line 341
    iget v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzCurrentPos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzCurrentPos:I

    .line 342
    iget v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzMarkedPos:I

    sub-int/2addr v0, v2

    iput v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzMarkedPos:I

    .line 343
    iput v1, p0, Lcom/sleepycat/json_simple/Yylex;->zzStartRead:I

    .line 347
    :cond_0
    iget v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzCurrentPos:I

    iget-object v2, p0, Lcom/sleepycat/json_simple/Yylex;->zzBuffer:[C

    array-length v3, v2

    if-lt v0, v3, :cond_1

    .line 349
    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [C

    .line 350
    .local v0, "newBuffer":[C
    array-length v3, v2

    invoke-static {v2, v1, v0, v1, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 351
    iput-object v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzBuffer:[C

    .line 355
    .end local v0    # "newBuffer":[C
    :cond_1
    iget-object v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzReader:Ljava/io/Reader;

    iget-object v2, p0, Lcom/sleepycat/json_simple/Yylex;->zzBuffer:[C

    iget v3, p0, Lcom/sleepycat/json_simple/Yylex;->zzEndRead:I

    array-length v4, v2

    sub-int/2addr v4, v3

    invoke-virtual {v0, v2, v3, v4}, Ljava/io/Reader;->read([CII)I

    move-result v0

    .line 358
    .local v0, "numRead":I
    if-lez v0, :cond_2

    .line 359
    iget v2, p0, Lcom/sleepycat/json_simple/Yylex;->zzEndRead:I

    add-int/2addr v2, v0

    iput v2, p0, Lcom/sleepycat/json_simple/Yylex;->zzEndRead:I

    .line 360
    return v1

    .line 363
    :cond_2
    const/4 v2, 0x1

    if-nez v0, :cond_4

    .line 364
    iget-object v3, p0, Lcom/sleepycat/json_simple/Yylex;->zzReader:Ljava/io/Reader;

    invoke-virtual {v3}, Ljava/io/Reader;->read()I

    move-result v3

    .line 365
    .local v3, "c":I
    const/4 v4, -0x1

    if-ne v3, v4, :cond_3

    .line 366
    return v2

    .line 368
    :cond_3
    iget-object v2, p0, Lcom/sleepycat/json_simple/Yylex;->zzBuffer:[C

    iget v4, p0, Lcom/sleepycat/json_simple/Yylex;->zzEndRead:I

    add-int/lit8 v5, v4, 0x1

    iput v5, p0, Lcom/sleepycat/json_simple/Yylex;->zzEndRead:I

    int-to-char v5, v3

    aput-char v5, v2, v4

    .line 369
    return v1

    .line 374
    .end local v3    # "c":I
    :cond_4
    return v2
.end method

.method private zzScanError(I)V
    .locals 3
    .param p1, "errorCode"    # I

    .line 479
    :try_start_0
    sget-object v0, Lcom/sleepycat/json_simple/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    aget-object v0, v0, p1
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 483
    .local v0, "message":Ljava/lang/String;
    goto :goto_0

    .line 481
    .end local v0    # "message":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 482
    .local v0, "e":Ljava/lang/ArrayIndexOutOfBoundsException;
    sget-object v1, Lcom/sleepycat/json_simple/Yylex;->ZZ_ERROR_MSG:[Ljava/lang/String;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    move-object v0, v1

    .line 485
    .local v0, "message":Ljava/lang/String;
    :goto_0
    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method private static zzUnpackAction(Ljava/lang/String;I[I)I
    .locals 6
    .param p0, "packed"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "result"    # [I

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "i":I
    move v1, p1

    .line 71
    .local v1, "j":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 72
    .local v2, "l":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 73
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 74
    .local v0, "count":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 75
    .local v3, "value":I
    :goto_1
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "j":I
    .local v5, "j":I
    aput v3, p2, v1

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    .line 76
    .end local v0    # "count":I
    .end local v3    # "value":I
    move v0, v4

    move v1, v5

    goto :goto_0

    .line 75
    .restart local v0    # "count":I
    .restart local v3    # "value":I
    :cond_0
    move v1, v5

    goto :goto_1

    .line 77
    .end local v3    # "value":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .local v0, "i":I
    .restart local v1    # "j":I
    :cond_1
    return v1
.end method

.method private static zzUnpackAction()[I
    .locals 3

    .line 62
    const/16 v0, 0x2d

    new-array v0, v0, [I

    .line 63
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 64
    .local v1, "offset":I
    const-string v2, "\u0002\u0000\u0002\u0001\u0001\u0002\u0001\u0003\u0001\u0004\u0003\u0001\u0001\u0005\u0001\u0006\u0001\u0007\u0001\u0008\u0001\t\u0001\n\u0001\u000b\u0001\u000c\u0001\r\u0005\u0000\u0001\u000c\u0001\u000e\u0001\u000f\u0001\u0010\u0001\u0011\u0001\u0012\u0001\u0013\u0001\u0014\u0001\u0000\u0001\u0002\u0001\u0000\u0001\u0002\u0004\u0000\u0001\u0015\u0001\u0016\u0002\u0000\u0001\u0017"

    invoke-static {v2, v1, v0}, Lcom/sleepycat/json_simple/Yylex;->zzUnpackAction(Ljava/lang/String;I[I)I

    move-result v1

    .line 65
    return-object v0
.end method

.method private static zzUnpackAttribute(Ljava/lang/String;I[I)I
    .locals 6
    .param p0, "packed"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "result"    # [I

    .line 216
    const/4 v0, 0x0

    .line 217
    .local v0, "i":I
    move v1, p1

    .line 218
    .local v1, "j":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 219
    .local v2, "l":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 220
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 221
    .local v0, "count":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 222
    .local v3, "value":I
    :goto_1
    add-int/lit8 v5, v1, 0x1

    .end local v1    # "j":I
    .local v5, "j":I
    aput v3, p2, v1

    add-int/lit8 v0, v0, -0x1

    if-gtz v0, :cond_0

    .line 223
    .end local v0    # "count":I
    .end local v3    # "value":I
    move v0, v4

    move v1, v5

    goto :goto_0

    .line 222
    .restart local v0    # "count":I
    .restart local v3    # "value":I
    :cond_0
    move v1, v5

    goto :goto_1

    .line 224
    .end local v3    # "value":I
    .end local v4    # "i":I
    .end local v5    # "j":I
    .local v0, "i":I
    .restart local v1    # "j":I
    :cond_1
    return v1
.end method

.method private static zzUnpackAttribute()[I
    .locals 3

    .line 209
    const/16 v0, 0x2d

    new-array v0, v0, [I

    .line 210
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 211
    .local v1, "offset":I
    const-string v2, "\u0002\u0000\u0001\t\u0003\u0001\u0001\t\u0003\u0001\u0006\t\u0002\u0001\u0001\t\u0005\u0000\u0008\t\u0001\u0000\u0001\u0001\u0001\u0000\u0001\u0001\u0004\u0000\u0002\t\u0002\u0000\u0001\t"

    invoke-static {v2, v1, v0}, Lcom/sleepycat/json_simple/Yylex;->zzUnpackAttribute(Ljava/lang/String;I[I)I

    move-result v1

    .line 212
    return-object v0
.end method

.method private static zzUnpackCMap(Ljava/lang/String;)[C
    .locals 6
    .param p0, "packed"    # Ljava/lang/String;

    .line 312
    const/high16 v0, 0x10000

    new-array v0, v0, [C

    .line 313
    .local v0, "map":[C
    const/4 v1, 0x0

    .line 314
    .local v1, "i":I
    const/4 v2, 0x0

    .line 315
    .local v2, "j":I
    :goto_0
    const/16 v3, 0x5a

    if-ge v1, v3, :cond_1

    .line 316
    add-int/lit8 v3, v1, 0x1

    .end local v1    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 317
    .local v1, "count":I
    add-int/lit8 v4, v3, 0x1

    .end local v3    # "i":I
    .local v4, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    .line 318
    .local v3, "value":C
    :goto_1
    add-int/lit8 v5, v2, 0x1

    .end local v2    # "j":I
    .local v5, "j":I
    aput-char v3, v0, v2

    add-int/lit8 v1, v1, -0x1

    if-gtz v1, :cond_0

    .line 319
    .end local v1    # "count":I
    .end local v3    # "value":C
    move v1, v4

    move v2, v5

    goto :goto_0

    .line 318
    .restart local v1    # "count":I
    .restart local v3    # "value":C
    :cond_0
    move v2, v5

    goto :goto_1

    .line 320
    .end local v3    # "value":C
    .end local v4    # "i":I
    .end local v5    # "j":I
    .local v1, "i":I
    .restart local v2    # "j":I
    :cond_1
    return-object v0
.end method

.method private static zzUnpackRowMap(Ljava/lang/String;I[I)I
    .locals 6
    .param p0, "packed"    # Ljava/lang/String;
    .param p1, "offset"    # I
    .param p2, "result"    # [I

    .line 102
    const/4 v0, 0x0

    .line 103
    .local v0, "i":I
    move v1, p1

    .line 104
    .local v1, "j":I
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 105
    .local v2, "l":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 106
    add-int/lit8 v3, v0, 0x1

    .end local v0    # "i":I
    .local v3, "i":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    shl-int/lit8 v0, v0, 0x10

    .line 107
    .local v0, "high":I
    add-int/lit8 v4, v1, 0x1

    .end local v1    # "j":I
    .local v4, "j":I
    add-int/lit8 v5, v3, 0x1

    .end local v3    # "i":I
    .local v5, "i":I
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    or-int/2addr v3, v0

    aput v3, p2, v1

    .line 108
    .end local v0    # "high":I
    move v1, v4

    move v0, v5

    goto :goto_0

    .line 109
    .end local v4    # "j":I
    .end local v5    # "i":I
    .local v0, "i":I
    .restart local v1    # "j":I
    :cond_0
    return v1
.end method

.method private static zzUnpackRowMap()[I
    .locals 3

    .line 95
    const/16 v0, 0x2d

    new-array v0, v0, [I

    .line 96
    .local v0, "result":[I
    const/4 v1, 0x0

    .line 97
    .local v1, "offset":I
    const-string v2, "\u0000\u0000\u0000\u001b\u00006\u0000Q\u0000l\u0000\u0087\u00006\u0000\u00a2\u0000\u00bd\u0000\u00d8\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u00f3\u0000\u010e\u00006\u0000\u0129\u0000\u0144\u0000\u015f\u0000\u017a\u0000\u0195\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u00006\u0000\u01b0\u0000\u01cb\u0000\u01e6\u0000\u01e6\u0000\u0201\u0000\u021c\u0000\u0237\u0000\u0252\u00006\u00006\u0000\u026d\u0000\u0288\u00006"

    invoke-static {v2, v1, v0}, Lcom/sleepycat/json_simple/Yylex;->zzUnpackRowMap(Ljava/lang/String;I[I)I

    move-result v1

    .line 98
    return-object v0
.end method


# virtual methods
.method getPosition()I
    .locals 1

    .line 280
    iget v0, p0, Lcom/sleepycat/json_simple/Yylex;->yychar:I

    return v0
.end method

.method public final yybegin(I)V
    .locals 0
    .param p1, "newState"    # I

    .line 426
    iput p1, p0, Lcom/sleepycat/json_simple/Yylex;->zzLexicalState:I

    .line 427
    return-void
.end method

.method public final yycharat(I)C
    .locals 2
    .param p1, "pos"    # I

    .line 450
    iget-object v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzBuffer:[C

    iget v1, p0, Lcom/sleepycat/json_simple/Yylex;->zzStartRead:I

    add-int/2addr v1, p1

    aget-char v0, v0, v1

    return v0
.end method

.method public final yyclose()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 382
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzAtEOF:Z

    .line 383
    iget v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzStartRead:I

    iput v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzEndRead:I

    .line 385
    iget-object v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzReader:Ljava/io/Reader;

    if-eqz v0, :cond_0

    .line 386
    invoke-virtual {v0}, Ljava/io/Reader;->close()V

    .line 387
    :cond_0
    return-void
.end method

.method public final yylength()I
    .locals 2

    .line 458
    iget v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzMarkedPos:I

    iget v1, p0, Lcom/sleepycat/json_simple/Yylex;->zzStartRead:I

    sub-int/2addr v0, v1

    return v0
.end method

.method public yylex()Lcom/sleepycat/json_simple/Yytoken;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/sleepycat/json_simple/JsonException;
        }
    .end annotation

    .line 519
    move-object/from16 v1, p0

    iget v0, v1, Lcom/sleepycat/json_simple/Yylex;->zzEndRead:I

    .line 520
    .local v0, "zzEndReadL":I
    iget-object v2, v1, Lcom/sleepycat/json_simple/Yylex;->zzBuffer:[C

    .line 521
    .local v2, "zzBufferL":[C
    sget-object v3, Lcom/sleepycat/json_simple/Yylex;->ZZ_CMAP:[C

    .line 523
    .local v3, "zzCMapL":[C
    sget-object v4, Lcom/sleepycat/json_simple/Yylex;->ZZ_TRANS:[I

    .line 524
    .local v4, "zzTransL":[I
    sget-object v5, Lcom/sleepycat/json_simple/Yylex;->ZZ_ROWMAP:[I

    .line 525
    .local v5, "zzRowMapL":[I
    sget-object v6, Lcom/sleepycat/json_simple/Yylex;->ZZ_ATTRIBUTE:[I

    .line 528
    .local v6, "zzAttrL":[I
    :goto_0
    iget v7, v1, Lcom/sleepycat/json_simple/Yylex;->zzMarkedPos:I

    .line 530
    .local v7, "zzMarkedPosL":I
    iget v8, v1, Lcom/sleepycat/json_simple/Yylex;->yychar:I

    iget v9, v1, Lcom/sleepycat/json_simple/Yylex;->zzStartRead:I

    sub-int v9, v7, v9

    add-int/2addr v8, v9

    iput v8, v1, Lcom/sleepycat/json_simple/Yylex;->yychar:I

    .line 532
    const/4 v8, -0x1

    .line 534
    .local v8, "zzAction":I
    iput v7, v1, Lcom/sleepycat/json_simple/Yylex;->zzStartRead:I

    iput v7, v1, Lcom/sleepycat/json_simple/Yylex;->zzCurrentPos:I

    move v9, v7

    .line 536
    .local v9, "zzCurrentPosL":I
    sget-object v10, Lcom/sleepycat/json_simple/Yylex;->ZZ_LEXSTATE:[I

    iget v11, v1, Lcom/sleepycat/json_simple/Yylex;->zzLexicalState:I

    aget v10, v10, v11

    iput v10, v1, Lcom/sleepycat/json_simple/Yylex;->zzState:I

    .line 542
    :goto_1
    const/4 v10, -0x1

    const/16 v11, 0x8

    const/4 v12, 0x1

    if-ge v9, v0, :cond_0

    .line 543
    add-int/lit8 v13, v9, 0x1

    .end local v9    # "zzCurrentPosL":I
    .local v13, "zzCurrentPosL":I
    aget-char v9, v2, v9

    .local v9, "zzInput":I
    goto :goto_2

    .line 544
    .end local v13    # "zzCurrentPosL":I
    .local v9, "zzCurrentPosL":I
    :cond_0
    iget-boolean v13, v1, Lcom/sleepycat/json_simple/Yylex;->zzAtEOF:Z

    if-eqz v13, :cond_1

    .line 545
    const/4 v13, -0x1

    .line 546
    .local v13, "zzInput":I
    move v14, v13

    move v13, v9

    move v9, v8

    move v8, v7

    move-object v7, v2

    move v2, v0

    goto :goto_3

    .line 550
    .end local v13    # "zzInput":I
    :cond_1
    iput v9, v1, Lcom/sleepycat/json_simple/Yylex;->zzCurrentPos:I

    .line 551
    iput v7, v1, Lcom/sleepycat/json_simple/Yylex;->zzMarkedPos:I

    .line 552
    invoke-direct/range {p0 .. p0}, Lcom/sleepycat/json_simple/Yylex;->zzRefill()Z

    move-result v13

    .line 554
    .local v13, "eof":Z
    iget v9, v1, Lcom/sleepycat/json_simple/Yylex;->zzCurrentPos:I

    .line 555
    iget v7, v1, Lcom/sleepycat/json_simple/Yylex;->zzMarkedPos:I

    .line 556
    iget-object v2, v1, Lcom/sleepycat/json_simple/Yylex;->zzBuffer:[C

    .line 557
    iget v0, v1, Lcom/sleepycat/json_simple/Yylex;->zzEndRead:I

    .line 558
    if-eqz v13, :cond_2

    .line 559
    const/4 v14, -0x1

    .line 560
    .local v14, "zzInput":I
    move v13, v9

    move v9, v8

    move v8, v7

    move-object v7, v2

    move v2, v0

    goto :goto_3

    .line 563
    .end local v14    # "zzInput":I
    :cond_2
    add-int/lit8 v14, v9, 0x1

    .end local v9    # "zzCurrentPosL":I
    .local v14, "zzCurrentPosL":I
    aget-char v9, v2, v9

    move v13, v14

    .line 566
    .end local v14    # "zzCurrentPosL":I
    .local v9, "zzInput":I
    .local v13, "zzCurrentPosL":I
    :goto_2
    iget v14, v1, Lcom/sleepycat/json_simple/Yylex;->zzState:I

    aget v14, v5, v14

    aget-char v15, v3, v9

    add-int/2addr v14, v15

    aget v14, v4, v14

    .line 567
    .local v14, "zzNext":I
    if-ne v14, v10, :cond_3

    move v14, v9

    move v9, v8

    move v8, v7

    move-object v7, v2

    move v2, v0

    goto :goto_3

    .line 568
    :cond_3
    iput v14, v1, Lcom/sleepycat/json_simple/Yylex;->zzState:I

    .line 570
    aget v15, v6, v14

    .line 571
    .local v15, "zzAttributes":I
    and-int/lit8 v10, v15, 0x1

    if-ne v10, v12, :cond_6

    .line 572
    iget v8, v1, Lcom/sleepycat/json_simple/Yylex;->zzState:I

    .line 573
    move v7, v13

    .line 574
    and-int/lit8 v10, v15, 0x8

    if-ne v10, v11, :cond_6

    move v14, v9

    move v9, v8

    move v8, v7

    move-object v7, v2

    move v2, v0

    .line 581
    .end local v0    # "zzEndReadL":I
    .end local v15    # "zzAttributes":I
    .local v2, "zzEndReadL":I
    .local v7, "zzBufferL":[C
    .local v8, "zzMarkedPosL":I
    .local v9, "zzAction":I
    .local v14, "zzInput":I
    :goto_3
    iput v8, v1, Lcom/sleepycat/json_simple/Yylex;->zzMarkedPos:I

    .line 583
    if-gez v9, :cond_4

    move v0, v9

    goto :goto_4

    :cond_4
    sget-object v0, Lcom/sleepycat/json_simple/Yylex;->ZZ_ACTION:[I

    aget v0, v0, v9

    :goto_4
    const/4 v10, 0x2

    const/4 v15, 0x0

    const/4 v12, 0x0

    packed-switch v0, :pswitch_data_0

    .line 683
    const/4 v0, -0x1

    if-ne v14, v0, :cond_5

    iget v0, v1, Lcom/sleepycat/json_simple/Yylex;->zzStartRead:I

    iget v10, v1, Lcom/sleepycat/json_simple/Yylex;->zzCurrentPos:I

    if-ne v0, v10, :cond_5

    .line 684
    const/4 v0, 0x1

    iput-boolean v0, v1, Lcom/sleepycat/json_simple/Yylex;->zzAtEOF:Z

    .line 685
    return-object v12

    .line 677
    :pswitch_0
    goto/16 :goto_5

    .line 669
    :pswitch_1
    goto/16 :goto_5

    .line 661
    :pswitch_2
    goto/16 :goto_5

    .line 643
    :pswitch_3
    goto/16 :goto_5

    .line 635
    :pswitch_4
    goto/16 :goto_5

    .line 623
    :pswitch_5
    goto/16 :goto_5

    .line 619
    :pswitch_6
    goto/16 :goto_5

    .line 615
    :pswitch_7
    goto/16 :goto_5

    .line 607
    :pswitch_8
    goto/16 :goto_5

    .line 599
    :pswitch_9
    goto/16 :goto_5

    .line 587
    :pswitch_a
    goto/16 :goto_5

    .line 646
    :pswitch_b
    :try_start_0
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/json_simple/Yylex;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, v10}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    const/16 v10, 0x10

    invoke-static {v0, v10}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I

    move-result v0

    .line 647
    .local v0, "ch":I
    iget-object v10, v1, Lcom/sleepycat/json_simple/Yylex;->sb:Ljava/lang/StringBuilder;

    int-to-char v11, v0

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 651
    nop

    .line 653
    .end local v0    # "ch":I
    :pswitch_c
    goto/16 :goto_5

    .line 648
    :catch_0
    move-exception v0

    .line 650
    .local v0, "e":Ljava/lang/Exception;
    new-instance v10, Lcom/sleepycat/json_simple/JsonException;

    iget v11, v1, Lcom/sleepycat/json_simple/Yylex;->yychar:I

    sget-object v12, Lcom/sleepycat/json_simple/JsonException$Problems;->UNEXPECTED_EXCEPTION:Lcom/sleepycat/json_simple/JsonException$Problems;

    invoke-direct {v10, v11, v12, v0}, Lcom/sleepycat/json_simple/JsonException;-><init>(ILcom/sleepycat/json_simple/JsonException$Problems;Ljava/lang/Object;)V

    throw v10

    .line 605
    .end local v0    # "e":Ljava/lang/Exception;
    :pswitch_d
    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/json_simple/Yylex;->yytext()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v0

    .local v0, "val":Ljava/lang/Boolean;
    new-instance v10, Lcom/sleepycat/json_simple/Yytoken;

    sget-object v11, Lcom/sleepycat/json_simple/Yytoken$Types;->DATUM:Lcom/sleepycat/json_simple/Yytoken$Types;

    invoke-direct {v10, v11, v0}, Lcom/sleepycat/json_simple/Yytoken;-><init>(Lcom/sleepycat/json_simple/Yytoken$Types;Ljava/lang/Object;)V

    return-object v10

    .line 621
    .end local v0    # "val":Ljava/lang/Boolean;
    :pswitch_e
    new-instance v0, Lcom/sleepycat/json_simple/Yytoken;

    sget-object v10, Lcom/sleepycat/json_simple/Yytoken$Types;->DATUM:Lcom/sleepycat/json_simple/Yytoken$Types;

    invoke-direct {v0, v10, v12}, Lcom/sleepycat/json_simple/Yytoken;-><init>(Lcom/sleepycat/json_simple/Yytoken$Types;Ljava/lang/Object;)V

    return-object v0

    .line 663
    :pswitch_f
    iget-object v0, v1, Lcom/sleepycat/json_simple/Yylex;->sb:Ljava/lang/StringBuilder;

    const/16 v10, 0x9

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 665
    :pswitch_10
    goto/16 :goto_5

    .line 625
    :pswitch_11
    iget-object v0, v1, Lcom/sleepycat/json_simple/Yylex;->sb:Ljava/lang/StringBuilder;

    const/16 v10, 0xd

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 627
    :pswitch_12
    goto/16 :goto_5

    .line 671
    :pswitch_13
    iget-object v0, v1, Lcom/sleepycat/json_simple/Yylex;->sb:Ljava/lang/StringBuilder;

    const/16 v10, 0xa

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 673
    :pswitch_14
    goto/16 :goto_5

    .line 655
    :pswitch_15
    iget-object v0, v1, Lcom/sleepycat/json_simple/Yylex;->sb:Ljava/lang/StringBuilder;

    const/16 v10, 0xc

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 657
    :pswitch_16
    goto/16 :goto_5

    .line 601
    :pswitch_17
    iget-object v0, v1, Lcom/sleepycat/json_simple/Yylex;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 603
    :pswitch_18
    goto/16 :goto_5

    .line 629
    :pswitch_19
    iget-object v0, v1, Lcom/sleepycat/json_simple/Yylex;->sb:Ljava/lang/StringBuilder;

    const/16 v10, 0x2f

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 631
    :pswitch_1a
    goto/16 :goto_5

    .line 637
    :pswitch_1b
    iget-object v0, v1, Lcom/sleepycat/json_simple/Yylex;->sb:Ljava/lang/StringBuilder;

    const/16 v10, 0x22

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 639
    :pswitch_1c
    goto/16 :goto_5

    .line 675
    :pswitch_1d
    invoke-virtual {v1, v15}, Lcom/sleepycat/json_simple/Yylex;->yybegin(I)V

    new-instance v0, Lcom/sleepycat/json_simple/Yytoken;

    sget-object v10, Lcom/sleepycat/json_simple/Yytoken$Types;->DATUM:Lcom/sleepycat/json_simple/Yytoken$Types;

    iget-object v11, v1, Lcom/sleepycat/json_simple/Yylex;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, v10, v11}, Lcom/sleepycat/json_simple/Yytoken;-><init>(Lcom/sleepycat/json_simple/Yytoken$Types;Ljava/lang/Object;)V

    return-object v0

    .line 609
    :pswitch_1e
    iget-object v0, v1, Lcom/sleepycat/json_simple/Yylex;->sb:Ljava/lang/StringBuilder;

    const/16 v10, 0x5c

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 611
    :pswitch_1f
    goto :goto_5

    .line 593
    :pswitch_20
    iget-object v0, v1, Lcom/sleepycat/json_simple/Yylex;->sb:Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/json_simple/Yylex;->yytext()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 595
    :pswitch_21
    goto :goto_5

    .line 613
    :pswitch_22
    new-instance v0, Lcom/sleepycat/json_simple/Yytoken;

    sget-object v10, Lcom/sleepycat/json_simple/Yytoken$Types;->COLON:Lcom/sleepycat/json_simple/Yytoken$Types;

    invoke-direct {v0, v10, v12}, Lcom/sleepycat/json_simple/Yytoken;-><init>(Lcom/sleepycat/json_simple/Yytoken$Types;Ljava/lang/Object;)V

    return-object v0

    .line 617
    :pswitch_23
    new-instance v0, Lcom/sleepycat/json_simple/Yytoken;

    sget-object v10, Lcom/sleepycat/json_simple/Yytoken$Types;->COMMA:Lcom/sleepycat/json_simple/Yytoken$Types;

    invoke-direct {v0, v10, v12}, Lcom/sleepycat/json_simple/Yytoken;-><init>(Lcom/sleepycat/json_simple/Yytoken$Types;Ljava/lang/Object;)V

    return-object v0

    .line 641
    :pswitch_24
    new-instance v0, Lcom/sleepycat/json_simple/Yytoken;

    sget-object v10, Lcom/sleepycat/json_simple/Yytoken$Types;->RIGHT_SQUARE:Lcom/sleepycat/json_simple/Yytoken$Types;

    invoke-direct {v0, v10, v12}, Lcom/sleepycat/json_simple/Yytoken;-><init>(Lcom/sleepycat/json_simple/Yytoken$Types;Ljava/lang/Object;)V

    return-object v0

    .line 667
    :pswitch_25
    new-instance v0, Lcom/sleepycat/json_simple/Yytoken;

    sget-object v10, Lcom/sleepycat/json_simple/Yytoken$Types;->LEFT_SQUARE:Lcom/sleepycat/json_simple/Yytoken$Types;

    invoke-direct {v0, v10, v12}, Lcom/sleepycat/json_simple/Yytoken;-><init>(Lcom/sleepycat/json_simple/Yytoken$Types;Ljava/lang/Object;)V

    return-object v0

    .line 659
    :pswitch_26
    new-instance v0, Lcom/sleepycat/json_simple/Yytoken;

    sget-object v10, Lcom/sleepycat/json_simple/Yytoken$Types;->RIGHT_BRACE:Lcom/sleepycat/json_simple/Yytoken$Types;

    invoke-direct {v0, v10, v12}, Lcom/sleepycat/json_simple/Yytoken;-><init>(Lcom/sleepycat/json_simple/Yytoken$Types;Ljava/lang/Object;)V

    return-object v0

    .line 597
    :pswitch_27
    new-instance v0, Lcom/sleepycat/json_simple/Yytoken;

    sget-object v10, Lcom/sleepycat/json_simple/Yytoken$Types;->LEFT_BRACE:Lcom/sleepycat/json_simple/Yytoken$Types;

    invoke-direct {v0, v10, v12}, Lcom/sleepycat/json_simple/Yytoken;-><init>(Lcom/sleepycat/json_simple/Yytoken$Types;Ljava/lang/Object;)V

    return-object v0

    .line 589
    :pswitch_28
    iput-object v12, v1, Lcom/sleepycat/json_simple/Yylex;->sb:Ljava/lang/StringBuilder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, v1, Lcom/sleepycat/json_simple/Yylex;->sb:Ljava/lang/StringBuilder;

    invoke-virtual {v1, v10}, Lcom/sleepycat/json_simple/Yylex;->yybegin(I)V

    .line 591
    :pswitch_29
    goto :goto_5

    .line 681
    :pswitch_2a
    goto :goto_5

    .line 633
    :pswitch_2b
    new-instance v0, Ljava/math/BigDecimal;

    invoke-virtual/range {p0 .. p0}, Lcom/sleepycat/json_simple/Yylex;->yytext()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v0, v10}, Ljava/math/BigDecimal;-><init>(Ljava/lang/String;)V

    .local v0, "val":Ljava/math/BigDecimal;
    new-instance v10, Lcom/sleepycat/json_simple/Yytoken;

    sget-object v11, Lcom/sleepycat/json_simple/Yytoken$Types;->DATUM:Lcom/sleepycat/json_simple/Yytoken$Types;

    invoke-direct {v10, v11, v0}, Lcom/sleepycat/json_simple/Yytoken;-><init>(Lcom/sleepycat/json_simple/Yytoken$Types;Ljava/lang/Object;)V

    return-object v10

    .line 585
    .end local v0    # "val":Ljava/math/BigDecimal;
    :pswitch_2c
    new-instance v0, Lcom/sleepycat/json_simple/JsonException;

    iget v10, v1, Lcom/sleepycat/json_simple/Yylex;->yychar:I

    sget-object v11, Lcom/sleepycat/json_simple/JsonException$Problems;->UNEXPECTED_CHARACTER:Lcom/sleepycat/json_simple/JsonException$Problems;

    new-instance v12, Ljava/lang/Character;

    invoke-virtual {v1, v15}, Lcom/sleepycat/json_simple/Yylex;->yycharat(I)C

    move-result v15

    invoke-direct {v12, v15}, Ljava/lang/Character;-><init>(C)V

    invoke-direct {v0, v10, v11, v12}, Lcom/sleepycat/json_simple/JsonException;-><init>(ILcom/sleepycat/json_simple/JsonException$Problems;Ljava/lang/Object;)V

    throw v0

    .line 683
    :cond_5
    const/4 v0, 0x1

    .line 688
    invoke-direct {v1, v0}, Lcom/sleepycat/json_simple/Yylex;->zzScanError(I)V

    .line 528
    .end local v8    # "zzMarkedPosL":I
    .end local v9    # "zzAction":I
    .end local v13    # "zzCurrentPosL":I
    .end local v14    # "zzInput":I
    :goto_5
    move v0, v2

    move-object v2, v7

    goto/16 :goto_0

    .line 577
    .local v0, "zzEndReadL":I
    .local v2, "zzBufferL":[C
    .local v7, "zzMarkedPosL":I
    .local v8, "zzAction":I
    .local v9, "zzInput":I
    .restart local v13    # "zzCurrentPosL":I
    :cond_6
    move v9, v13

    goto/16 :goto_1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2c
        :pswitch_2b
        :pswitch_2a
        :pswitch_28
        :pswitch_27
        :pswitch_26
        :pswitch_25
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_20
        :pswitch_1e
        :pswitch_1d
        :pswitch_1b
        :pswitch_19
        :pswitch_17
        :pswitch_15
        :pswitch_13
        :pswitch_11
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_b
        :pswitch_a
        :pswitch_29
        :pswitch_21
        :pswitch_9
        :pswitch_18
        :pswitch_8
        :pswitch_1f
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_12
        :pswitch_1a
        :pswitch_4
        :pswitch_1c
        :pswitch_3
        :pswitch_c
        :pswitch_16
        :pswitch_2
        :pswitch_10
        :pswitch_1
        :pswitch_14
        :pswitch_0
        :pswitch_2a
    .end packed-switch
.end method

.method public yypushback(I)V
    .locals 1
    .param p1, "number"    # I

    .line 498
    invoke-virtual {p0}, Lcom/sleepycat/json_simple/Yylex;->yylength()I

    move-result v0

    if-le p1, v0, :cond_0

    .line 499
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/sleepycat/json_simple/Yylex;->zzScanError(I)V

    .line 501
    :cond_0
    iget v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzMarkedPos:I

    sub-int/2addr v0, p1

    iput v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzMarkedPos:I

    .line 502
    return-void
.end method

.method public final yyreset(Ljava/io/Reader;)V
    .locals 1
    .param p1, "reader"    # Ljava/io/Reader;

    .line 401
    iput-object p1, p0, Lcom/sleepycat/json_simple/Yylex;->zzReader:Ljava/io/Reader;

    .line 402
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzAtBOL:Z

    .line 403
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzAtEOF:Z

    .line 404
    iput-boolean v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzEOFDone:Z

    .line 405
    iput v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzStartRead:I

    iput v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzEndRead:I

    .line 406
    iput v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzMarkedPos:I

    iput v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzCurrentPos:I

    .line 407
    iput v0, p0, Lcom/sleepycat/json_simple/Yylex;->yycolumn:I

    iput v0, p0, Lcom/sleepycat/json_simple/Yylex;->yychar:I

    iput v0, p0, Lcom/sleepycat/json_simple/Yylex;->yyline:I

    .line 408
    iput v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzLexicalState:I

    .line 409
    return-void
.end method

.method public final yystate()I
    .locals 1

    .line 416
    iget v0, p0, Lcom/sleepycat/json_simple/Yylex;->zzLexicalState:I

    return v0
.end method

.method public final yytext()Ljava/lang/String;
    .locals 4

    .line 434
    new-instance v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/sleepycat/json_simple/Yylex;->zzBuffer:[C

    iget v2, p0, Lcom/sleepycat/json_simple/Yylex;->zzStartRead:I

    iget v3, p0, Lcom/sleepycat/json_simple/Yylex;->zzMarkedPos:I

    sub-int/2addr v3, v2

    invoke-direct {v0, v1, v2, v3}, Ljava/lang/String;-><init>([CII)V

    return-object v0
.end method
