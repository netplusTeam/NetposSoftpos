.class public final enum Lorg/jline/terminal/Attributes$LocalFlag;
.super Ljava/lang/Enum;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "LocalFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/terminal/Attributes$LocalFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/terminal/Attributes$LocalFlag;

.field public static final enum ALTWERASE:Lorg/jline/terminal/Attributes$LocalFlag;

.field public static final enum ECHO:Lorg/jline/terminal/Attributes$LocalFlag;

.field public static final enum ECHOCTL:Lorg/jline/terminal/Attributes$LocalFlag;

.field public static final enum ECHOE:Lorg/jline/terminal/Attributes$LocalFlag;

.field public static final enum ECHOK:Lorg/jline/terminal/Attributes$LocalFlag;

.field public static final enum ECHOKE:Lorg/jline/terminal/Attributes$LocalFlag;

.field public static final enum ECHONL:Lorg/jline/terminal/Attributes$LocalFlag;

.field public static final enum ECHOPRT:Lorg/jline/terminal/Attributes$LocalFlag;

.field public static final enum EXTPROC:Lorg/jline/terminal/Attributes$LocalFlag;

.field public static final enum FLUSHO:Lorg/jline/terminal/Attributes$LocalFlag;

.field public static final enum ICANON:Lorg/jline/terminal/Attributes$LocalFlag;

.field public static final enum IEXTEN:Lorg/jline/terminal/Attributes$LocalFlag;

.field public static final enum ISIG:Lorg/jline/terminal/Attributes$LocalFlag;

.field public static final enum NOFLSH:Lorg/jline/terminal/Attributes$LocalFlag;

.field public static final enum NOKERNINFO:Lorg/jline/terminal/Attributes$LocalFlag;

.field public static final enum PENDIN:Lorg/jline/terminal/Attributes$LocalFlag;

.field public static final enum TOSTOP:Lorg/jline/terminal/Attributes$LocalFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 20

    .line 113
    new-instance v0, Lorg/jline/terminal/Attributes$LocalFlag;

    const-string v1, "ECHOKE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/terminal/Attributes$LocalFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOKE:Lorg/jline/terminal/Attributes$LocalFlag;

    .line 114
    new-instance v1, Lorg/jline/terminal/Attributes$LocalFlag;

    const-string v3, "ECHOE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/terminal/Attributes$LocalFlag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOE:Lorg/jline/terminal/Attributes$LocalFlag;

    .line 115
    new-instance v3, Lorg/jline/terminal/Attributes$LocalFlag;

    const-string v5, "ECHOK"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/terminal/Attributes$LocalFlag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOK:Lorg/jline/terminal/Attributes$LocalFlag;

    .line 116
    new-instance v5, Lorg/jline/terminal/Attributes$LocalFlag;

    const-string v7, "ECHO"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/terminal/Attributes$LocalFlag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/terminal/Attributes$LocalFlag;->ECHO:Lorg/jline/terminal/Attributes$LocalFlag;

    .line 117
    new-instance v7, Lorg/jline/terminal/Attributes$LocalFlag;

    const-string v9, "ECHONL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jline/terminal/Attributes$LocalFlag;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jline/terminal/Attributes$LocalFlag;->ECHONL:Lorg/jline/terminal/Attributes$LocalFlag;

    .line 118
    new-instance v9, Lorg/jline/terminal/Attributes$LocalFlag;

    const-string v11, "ECHOPRT"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/jline/terminal/Attributes$LocalFlag;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOPRT:Lorg/jline/terminal/Attributes$LocalFlag;

    .line 119
    new-instance v11, Lorg/jline/terminal/Attributes$LocalFlag;

    const-string v13, "ECHOCTL"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/jline/terminal/Attributes$LocalFlag;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/jline/terminal/Attributes$LocalFlag;->ECHOCTL:Lorg/jline/terminal/Attributes$LocalFlag;

    .line 120
    new-instance v13, Lorg/jline/terminal/Attributes$LocalFlag;

    const-string v15, "ISIG"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/jline/terminal/Attributes$LocalFlag;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/jline/terminal/Attributes$LocalFlag;->ISIG:Lorg/jline/terminal/Attributes$LocalFlag;

    .line 121
    new-instance v15, Lorg/jline/terminal/Attributes$LocalFlag;

    const-string v14, "ICANON"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/jline/terminal/Attributes$LocalFlag;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/jline/terminal/Attributes$LocalFlag;->ICANON:Lorg/jline/terminal/Attributes$LocalFlag;

    .line 122
    new-instance v14, Lorg/jline/terminal/Attributes$LocalFlag;

    const-string v12, "ALTWERASE"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/jline/terminal/Attributes$LocalFlag;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/jline/terminal/Attributes$LocalFlag;->ALTWERASE:Lorg/jline/terminal/Attributes$LocalFlag;

    .line 123
    new-instance v12, Lorg/jline/terminal/Attributes$LocalFlag;

    const-string v10, "IEXTEN"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/jline/terminal/Attributes$LocalFlag;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/jline/terminal/Attributes$LocalFlag;->IEXTEN:Lorg/jline/terminal/Attributes$LocalFlag;

    .line 124
    new-instance v10, Lorg/jline/terminal/Attributes$LocalFlag;

    const-string v8, "EXTPROC"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/jline/terminal/Attributes$LocalFlag;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/jline/terminal/Attributes$LocalFlag;->EXTPROC:Lorg/jline/terminal/Attributes$LocalFlag;

    .line 125
    new-instance v8, Lorg/jline/terminal/Attributes$LocalFlag;

    const-string v6, "TOSTOP"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/jline/terminal/Attributes$LocalFlag;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/jline/terminal/Attributes$LocalFlag;->TOSTOP:Lorg/jline/terminal/Attributes$LocalFlag;

    .line 126
    new-instance v6, Lorg/jline/terminal/Attributes$LocalFlag;

    const-string v4, "FLUSHO"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/jline/terminal/Attributes$LocalFlag;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jline/terminal/Attributes$LocalFlag;->FLUSHO:Lorg/jline/terminal/Attributes$LocalFlag;

    .line 127
    new-instance v4, Lorg/jline/terminal/Attributes$LocalFlag;

    const-string v2, "NOKERNINFO"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lorg/jline/terminal/Attributes$LocalFlag;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->NOKERNINFO:Lorg/jline/terminal/Attributes$LocalFlag;

    .line 128
    new-instance v2, Lorg/jline/terminal/Attributes$LocalFlag;

    const-string v6, "PENDIN"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lorg/jline/terminal/Attributes$LocalFlag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/terminal/Attributes$LocalFlag;->PENDIN:Lorg/jline/terminal/Attributes$LocalFlag;

    .line 129
    new-instance v6, Lorg/jline/terminal/Attributes$LocalFlag;

    const-string v4, "NOFLSH"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lorg/jline/terminal/Attributes$LocalFlag;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jline/terminal/Attributes$LocalFlag;->NOFLSH:Lorg/jline/terminal/Attributes$LocalFlag;

    .line 112
    const/16 v4, 0x11

    new-array v4, v4, [Lorg/jline/terminal/Attributes$LocalFlag;

    const/16 v16, 0x0

    aput-object v0, v4, v16

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

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

    aput-object v8, v4, v0

    const/16 v0, 0xd

    aput-object v17, v4, v0

    const/16 v0, 0xe

    aput-object v18, v4, v0

    const/16 v0, 0xf

    aput-object v19, v4, v0

    aput-object v6, v4, v2

    sput-object v4, Lorg/jline/terminal/Attributes$LocalFlag;->$VALUES:[Lorg/jline/terminal/Attributes$LocalFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 112
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/terminal/Attributes$LocalFlag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 112
    const-class v0, Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/Attributes$LocalFlag;

    return-object v0
.end method

.method public static values()[Lorg/jline/terminal/Attributes$LocalFlag;
    .locals 1

    .line 112
    sget-object v0, Lorg/jline/terminal/Attributes$LocalFlag;->$VALUES:[Lorg/jline/terminal/Attributes$LocalFlag;

    invoke-virtual {v0}, [Lorg/jline/terminal/Attributes$LocalFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/terminal/Attributes$LocalFlag;

    return-object v0
.end method
