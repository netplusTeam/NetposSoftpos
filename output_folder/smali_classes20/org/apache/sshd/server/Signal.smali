.class public final enum Lorg/apache/sshd/server/Signal;
.super Ljava/lang/Enum;
.source "Signal.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/server/Signal;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/server/Signal;

.field public static final enum ALRM:Lorg/apache/sshd/server/Signal;

.field public static final enum BUS:Lorg/apache/sshd/server/Signal;

.field public static final enum CHLD:Lorg/apache/sshd/server/Signal;

.field public static final enum CONT:Lorg/apache/sshd/server/Signal;

.field public static final enum FPE:Lorg/apache/sshd/server/Signal;

.field public static final enum HUP:Lorg/apache/sshd/server/Signal;

.field public static final enum ILL:Lorg/apache/sshd/server/Signal;

.field public static final enum INT:Lorg/apache/sshd/server/Signal;

.field public static final enum IO:Lorg/apache/sshd/server/Signal;

.field public static final enum IOT:Lorg/apache/sshd/server/Signal;

.field public static final enum KILL:Lorg/apache/sshd/server/Signal;

.field public static final NAME_LOOKUP_TABLE:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/String;",
            "Lorg/apache/sshd/server/Signal;",
            ">;"
        }
    .end annotation
.end field

.field public static final NUMERIC_LOOKUP_TABLE:Ljava/util/NavigableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/NavigableMap<",
            "Ljava/lang/Integer;",
            "Lorg/apache/sshd/server/Signal;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum PIPE:Lorg/apache/sshd/server/Signal;

.field public static final enum PROF:Lorg/apache/sshd/server/Signal;

.field public static final enum PWR:Lorg/apache/sshd/server/Signal;

.field public static final enum QUIT:Lorg/apache/sshd/server/Signal;

.field public static final enum SEGV:Lorg/apache/sshd/server/Signal;

.field public static final SIGNALS:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/server/Signal;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum STKFLT:Lorg/apache/sshd/server/Signal;

.field public static final enum STOP:Lorg/apache/sshd/server/Signal;

.field public static final enum TERM:Lorg/apache/sshd/server/Signal;

.field public static final enum TRAP:Lorg/apache/sshd/server/Signal;

.field public static final enum TSTP:Lorg/apache/sshd/server/Signal;

.field public static final enum TTIN:Lorg/apache/sshd/server/Signal;

.field public static final enum TTOU:Lorg/apache/sshd/server/Signal;

.field public static final enum URG:Lorg/apache/sshd/server/Signal;

.field public static final enum USR1:Lorg/apache/sshd/server/Signal;

.field public static final enum USR2:Lorg/apache/sshd/server/Signal;

.field public static final enum VTALRM:Lorg/apache/sshd/server/Signal;

.field public static final enum WINCH:Lorg/apache/sshd/server/Signal;

.field public static final enum XCPU:Lorg/apache/sshd/server/Signal;

.field public static final enum XFSZ:Lorg/apache/sshd/server/Signal;


# instance fields
.field private final numeric:I


# direct methods
.method static constructor <clinit>()V
    .locals 33

    .line 34
    new-instance v0, Lorg/apache/sshd/server/Signal;

    const-string v1, "HUP"

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lorg/apache/sshd/server/Signal;->HUP:Lorg/apache/sshd/server/Signal;

    .line 35
    new-instance v1, Lorg/apache/sshd/server/Signal;

    const-string v2, "INT"

    const/4 v4, 0x2

    invoke-direct {v1, v2, v3, v4}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lorg/apache/sshd/server/Signal;->INT:Lorg/apache/sshd/server/Signal;

    .line 36
    new-instance v2, Lorg/apache/sshd/server/Signal;

    const-string v5, "QUIT"

    const/4 v6, 0x3

    invoke-direct {v2, v5, v4, v6}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lorg/apache/sshd/server/Signal;->QUIT:Lorg/apache/sshd/server/Signal;

    .line 37
    new-instance v5, Lorg/apache/sshd/server/Signal;

    const-string v7, "ILL"

    const/4 v8, 0x4

    invoke-direct {v5, v7, v6, v8}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lorg/apache/sshd/server/Signal;->ILL:Lorg/apache/sshd/server/Signal;

    .line 38
    new-instance v7, Lorg/apache/sshd/server/Signal;

    const-string v9, "TRAP"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v8, v10}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lorg/apache/sshd/server/Signal;->TRAP:Lorg/apache/sshd/server/Signal;

    .line 39
    new-instance v9, Lorg/apache/sshd/server/Signal;

    const-string v11, "IOT"

    const/4 v12, 0x6

    invoke-direct {v9, v11, v10, v12}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lorg/apache/sshd/server/Signal;->IOT:Lorg/apache/sshd/server/Signal;

    .line 40
    new-instance v11, Lorg/apache/sshd/server/Signal;

    const-string v13, "BUS"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v12, v14}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lorg/apache/sshd/server/Signal;->BUS:Lorg/apache/sshd/server/Signal;

    .line 41
    new-instance v13, Lorg/apache/sshd/server/Signal;

    const-string v15, "FPE"

    const/16 v12, 0x8

    invoke-direct {v13, v15, v14, v12}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lorg/apache/sshd/server/Signal;->FPE:Lorg/apache/sshd/server/Signal;

    .line 42
    new-instance v15, Lorg/apache/sshd/server/Signal;

    const-string v14, "KILL"

    const/16 v10, 0x9

    invoke-direct {v15, v14, v12, v10}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lorg/apache/sshd/server/Signal;->KILL:Lorg/apache/sshd/server/Signal;

    .line 43
    new-instance v14, Lorg/apache/sshd/server/Signal;

    const-string v12, "USR1"

    const/16 v8, 0xa

    invoke-direct {v14, v12, v10, v8}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lorg/apache/sshd/server/Signal;->USR1:Lorg/apache/sshd/server/Signal;

    .line 44
    new-instance v12, Lorg/apache/sshd/server/Signal;

    const-string v10, "SEGV"

    const/16 v6, 0xb

    invoke-direct {v12, v10, v8, v6}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lorg/apache/sshd/server/Signal;->SEGV:Lorg/apache/sshd/server/Signal;

    .line 45
    new-instance v10, Lorg/apache/sshd/server/Signal;

    const-string v8, "USR2"

    const/16 v4, 0xc

    invoke-direct {v10, v8, v6, v4}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lorg/apache/sshd/server/Signal;->USR2:Lorg/apache/sshd/server/Signal;

    .line 46
    new-instance v8, Lorg/apache/sshd/server/Signal;

    const-string v6, "PIPE"

    const/16 v3, 0xd

    invoke-direct {v8, v6, v4, v3}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/sshd/server/Signal;->PIPE:Lorg/apache/sshd/server/Signal;

    .line 47
    new-instance v6, Lorg/apache/sshd/server/Signal;

    const-string v4, "ALRM"

    move-object/from16 v16, v8

    const/16 v8, 0xe

    invoke-direct {v6, v4, v3, v8}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/sshd/server/Signal;->ALRM:Lorg/apache/sshd/server/Signal;

    .line 48
    new-instance v4, Lorg/apache/sshd/server/Signal;

    const-string v3, "TERM"

    move-object/from16 v17, v6

    const/16 v6, 0xf

    invoke-direct {v4, v3, v8, v6}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/sshd/server/Signal;->TERM:Lorg/apache/sshd/server/Signal;

    .line 49
    new-instance v3, Lorg/apache/sshd/server/Signal;

    const-string v8, "STKFLT"

    move-object/from16 v18, v4

    const/16 v4, 0x10

    invoke-direct {v3, v8, v6, v4}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/server/Signal;->STKFLT:Lorg/apache/sshd/server/Signal;

    .line 50
    new-instance v8, Lorg/apache/sshd/server/Signal;

    const-string v6, "CHLD"

    move-object/from16 v19, v3

    const/16 v3, 0x11

    invoke-direct {v8, v6, v4, v3}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/sshd/server/Signal;->CHLD:Lorg/apache/sshd/server/Signal;

    .line 51
    new-instance v6, Lorg/apache/sshd/server/Signal;

    const-string v4, "CONT"

    move-object/from16 v20, v8

    const/16 v8, 0x12

    invoke-direct {v6, v4, v3, v8}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/sshd/server/Signal;->CONT:Lorg/apache/sshd/server/Signal;

    .line 52
    new-instance v4, Lorg/apache/sshd/server/Signal;

    const-string v3, "STOP"

    move-object/from16 v21, v6

    const/16 v6, 0x13

    invoke-direct {v4, v3, v8, v6}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/sshd/server/Signal;->STOP:Lorg/apache/sshd/server/Signal;

    .line 53
    new-instance v3, Lorg/apache/sshd/server/Signal;

    const-string v8, "TSTP"

    move-object/from16 v22, v4

    const/16 v4, 0x14

    invoke-direct {v3, v8, v6, v4}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/server/Signal;->TSTP:Lorg/apache/sshd/server/Signal;

    .line 54
    new-instance v8, Lorg/apache/sshd/server/Signal;

    const-string v6, "TTIN"

    move-object/from16 v23, v3

    const/16 v3, 0x15

    invoke-direct {v8, v6, v4, v3}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lorg/apache/sshd/server/Signal;->TTIN:Lorg/apache/sshd/server/Signal;

    .line 55
    new-instance v6, Lorg/apache/sshd/server/Signal;

    const-string v4, "TTOU"

    move-object/from16 v24, v8

    const/16 v8, 0x16

    invoke-direct {v6, v4, v3, v8}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lorg/apache/sshd/server/Signal;->TTOU:Lorg/apache/sshd/server/Signal;

    .line 56
    new-instance v4, Lorg/apache/sshd/server/Signal;

    const-string v3, "URG"

    move-object/from16 v25, v6

    const/16 v6, 0x17

    invoke-direct {v4, v3, v8, v6}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/sshd/server/Signal;->URG:Lorg/apache/sshd/server/Signal;

    .line 57
    new-instance v3, Lorg/apache/sshd/server/Signal;

    const-string v6, "XCPU"

    const/16 v8, 0x17

    move-object/from16 v26, v4

    const/16 v4, 0x18

    invoke-direct {v3, v6, v8, v4}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/server/Signal;->XCPU:Lorg/apache/sshd/server/Signal;

    .line 58
    new-instance v4, Lorg/apache/sshd/server/Signal;

    const-string v6, "XFSZ"

    const/16 v8, 0x18

    move-object/from16 v27, v3

    const/16 v3, 0x19

    invoke-direct {v4, v6, v8, v3}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/sshd/server/Signal;->XFSZ:Lorg/apache/sshd/server/Signal;

    .line 59
    new-instance v3, Lorg/apache/sshd/server/Signal;

    const-string v6, "VTALRM"

    const/16 v8, 0x19

    move-object/from16 v28, v4

    const/16 v4, 0x1a

    invoke-direct {v3, v6, v8, v4}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/server/Signal;->VTALRM:Lorg/apache/sshd/server/Signal;

    .line 60
    new-instance v4, Lorg/apache/sshd/server/Signal;

    const-string v6, "PROF"

    const/16 v8, 0x1a

    move-object/from16 v29, v3

    const/16 v3, 0x1b

    invoke-direct {v4, v6, v8, v3}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/sshd/server/Signal;->PROF:Lorg/apache/sshd/server/Signal;

    .line 61
    new-instance v3, Lorg/apache/sshd/server/Signal;

    const-string v6, "WINCH"

    const/16 v8, 0x1b

    move-object/from16 v30, v4

    const/16 v4, 0x1c

    invoke-direct {v3, v6, v8, v4}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/server/Signal;->WINCH:Lorg/apache/sshd/server/Signal;

    .line 62
    new-instance v4, Lorg/apache/sshd/server/Signal;

    const-string v6, "IO"

    const/16 v8, 0x1c

    move-object/from16 v31, v3

    const/16 v3, 0x1d

    invoke-direct {v4, v6, v8, v3}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lorg/apache/sshd/server/Signal;->IO:Lorg/apache/sshd/server/Signal;

    .line 63
    new-instance v3, Lorg/apache/sshd/server/Signal;

    const-string v6, "PWR"

    const/16 v8, 0x1d

    move-object/from16 v32, v4

    const/16 v4, 0x1e

    invoke-direct {v3, v6, v8, v4}, Lorg/apache/sshd/server/Signal;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lorg/apache/sshd/server/Signal;->PWR:Lorg/apache/sshd/server/Signal;

    .line 33
    new-array v4, v4, [Lorg/apache/sshd/server/Signal;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v2, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v7, v4, v0

    const/4 v0, 0x5

    aput-object v9, v4, v0

    const/4 v0, 0x6

    aput-object v11, v4, v0

    const/4 v0, 0x7

    aput-object v13, v4, v0

    const/16 v0, 0x8

    aput-object v15, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v12, v4, v0

    const/16 v0, 0xb

    aput-object v10, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    const/16 v0, 0x10

    aput-object v20, v4, v0

    const/16 v0, 0x11

    aput-object v21, v4, v0

    const/16 v0, 0x12

    aput-object v22, v4, v0

    const/16 v0, 0x13

    aput-object v23, v4, v0

    const/16 v0, 0x14

    aput-object v24, v4, v0

    const/16 v0, 0x15

    aput-object v25, v4, v0

    const/16 v0, 0x16

    aput-object v26, v4, v0

    const/16 v0, 0x17

    aput-object v27, v4, v0

    const/16 v0, 0x18

    aput-object v28, v4, v0

    const/16 v0, 0x19

    aput-object v29, v4, v0

    const/16 v0, 0x1a

    aput-object v30, v4, v0

    const/16 v0, 0x1b

    aput-object v31, v4, v0

    const/16 v0, 0x1c

    aput-object v32, v4, v0

    const/16 v0, 0x1d

    aput-object v3, v4, v0

    sput-object v4, Lorg/apache/sshd/server/Signal;->$VALUES:[Lorg/apache/sshd/server/Signal;

    .line 68
    const-class v0, Lorg/apache/sshd/server/Signal;

    .line 69
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/server/Signal;->SIGNALS:Ljava/util/Set;

    .line 75
    new-instance v1, Lorg/apache/sshd/server/Signal$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/sshd/server/Signal$$ExternalSyntheticLambda0;-><init>()V

    .line 77
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    sget-object v3, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    invoke-static {v0, v1, v2, v3}, Lorg/apache/sshd/common/util/GenericUtils;->toSortedMap(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/NavigableMap;

    move-result-object v1

    .line 76
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v1

    sput-object v1, Lorg/apache/sshd/server/Signal;->NAME_LOOKUP_TABLE:Ljava/util/NavigableMap;

    .line 84
    new-instance v1, Lorg/apache/sshd/server/Signal$$ExternalSyntheticLambda1;

    invoke-direct {v1}, Lorg/apache/sshd/server/Signal$$ExternalSyntheticLambda1;-><init>()V

    .line 86
    invoke-static {}, Ljava/util/function/Function;->identity()Ljava/util/function/Function;

    move-result-object v2

    invoke-static {}, Ljava/util/Comparator;->naturalOrder()Ljava/util/Comparator;

    move-result-object v3

    invoke-static {v0, v1, v2, v3}, Lorg/apache/sshd/common/util/GenericUtils;->toSortedMap(Ljava/lang/Iterable;Ljava/util/function/Function;Ljava/util/function/Function;Ljava/util/Comparator;)Ljava/util/NavigableMap;

    move-result-object v0

    .line 85
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableNavigableMap(Ljava/util/NavigableMap;)Ljava/util/NavigableMap;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/server/Signal;->NUMERIC_LOOKUP_TABLE:Ljava/util/NavigableMap;

    .line 84
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "numeric"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 90
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 91
    iput p3, p0, Lorg/apache/sshd/server/Signal;->numeric:I

    .line 92
    return-void
.end method

.method public static get(I)Lorg/apache/sshd/server/Signal;
    .locals 2
    .param p0, "num"    # I

    .line 119
    sget-object v0, Lorg/apache/sshd/server/Signal;->NUMERIC_LOOKUP_TABLE:Ljava/util/NavigableMap;

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/Signal;

    return-object v0
.end method

.method public static get(Ljava/lang/String;)Lorg/apache/sshd/server/Signal;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 108
    invoke-static {p0}, Lorg/apache/sshd/common/util/GenericUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    sget-object v0, Lorg/apache/sshd/server/Signal;->NAME_LOOKUP_TABLE:Ljava/util/NavigableMap;

    invoke-interface {v0, p0}, Ljava/util/NavigableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/Signal;

    :goto_0
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/server/Signal;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 33
    const-class v0, Lorg/apache/sshd/server/Signal;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/Signal;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/server/Signal;
    .locals 1

    .line 33
    sget-object v0, Lorg/apache/sshd/server/Signal;->$VALUES:[Lorg/apache/sshd/server/Signal;

    invoke-virtual {v0}, [Lorg/apache/sshd/server/Signal;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/server/Signal;

    return-object v0
.end method


# virtual methods
.method public getNumeric()I
    .locals 1

    .line 98
    iget v0, p0, Lorg/apache/sshd/server/Signal;->numeric:I

    return v0
.end method
