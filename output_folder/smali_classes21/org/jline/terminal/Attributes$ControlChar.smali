.class public final enum Lorg/jline/terminal/Attributes$ControlChar;
.super Ljava/lang/Enum;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControlChar"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/terminal/Attributes$ControlChar;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/terminal/Attributes$ControlChar;

.field public static final enum VDISCARD:Lorg/jline/terminal/Attributes$ControlChar;

.field public static final enum VDSUSP:Lorg/jline/terminal/Attributes$ControlChar;

.field public static final enum VEOF:Lorg/jline/terminal/Attributes$ControlChar;

.field public static final enum VEOL:Lorg/jline/terminal/Attributes$ControlChar;

.field public static final enum VEOL2:Lorg/jline/terminal/Attributes$ControlChar;

.field public static final enum VERASE:Lorg/jline/terminal/Attributes$ControlChar;

.field public static final enum VINTR:Lorg/jline/terminal/Attributes$ControlChar;

.field public static final enum VKILL:Lorg/jline/terminal/Attributes$ControlChar;

.field public static final enum VLNEXT:Lorg/jline/terminal/Attributes$ControlChar;

.field public static final enum VMIN:Lorg/jline/terminal/Attributes$ControlChar;

.field public static final enum VQUIT:Lorg/jline/terminal/Attributes$ControlChar;

.field public static final enum VREPRINT:Lorg/jline/terminal/Attributes$ControlChar;

.field public static final enum VSTART:Lorg/jline/terminal/Attributes$ControlChar;

.field public static final enum VSTATUS:Lorg/jline/terminal/Attributes$ControlChar;

.field public static final enum VSTOP:Lorg/jline/terminal/Attributes$ControlChar;

.field public static final enum VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

.field public static final enum VTIME:Lorg/jline/terminal/Attributes$ControlChar;

.field public static final enum VWERASE:Lorg/jline/terminal/Attributes$ControlChar;


# direct methods
.method static constructor <clinit>()V
    .locals 21

    .line 22
    new-instance v0, Lorg/jline/terminal/Attributes$ControlChar;

    const-string v1, "VEOF"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/terminal/Attributes$ControlChar;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/terminal/Attributes$ControlChar;->VEOF:Lorg/jline/terminal/Attributes$ControlChar;

    .line 23
    new-instance v1, Lorg/jline/terminal/Attributes$ControlChar;

    const-string v3, "VEOL"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/terminal/Attributes$ControlChar;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/terminal/Attributes$ControlChar;->VEOL:Lorg/jline/terminal/Attributes$ControlChar;

    .line 24
    new-instance v3, Lorg/jline/terminal/Attributes$ControlChar;

    const-string v5, "VEOL2"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/terminal/Attributes$ControlChar;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/terminal/Attributes$ControlChar;->VEOL2:Lorg/jline/terminal/Attributes$ControlChar;

    .line 25
    new-instance v5, Lorg/jline/terminal/Attributes$ControlChar;

    const-string v7, "VERASE"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/terminal/Attributes$ControlChar;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/terminal/Attributes$ControlChar;->VERASE:Lorg/jline/terminal/Attributes$ControlChar;

    .line 26
    new-instance v7, Lorg/jline/terminal/Attributes$ControlChar;

    const-string v9, "VWERASE"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jline/terminal/Attributes$ControlChar;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jline/terminal/Attributes$ControlChar;->VWERASE:Lorg/jline/terminal/Attributes$ControlChar;

    .line 27
    new-instance v9, Lorg/jline/terminal/Attributes$ControlChar;

    const-string v11, "VKILL"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/jline/terminal/Attributes$ControlChar;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/jline/terminal/Attributes$ControlChar;->VKILL:Lorg/jline/terminal/Attributes$ControlChar;

    .line 28
    new-instance v11, Lorg/jline/terminal/Attributes$ControlChar;

    const-string v13, "VREPRINT"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/jline/terminal/Attributes$ControlChar;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/jline/terminal/Attributes$ControlChar;->VREPRINT:Lorg/jline/terminal/Attributes$ControlChar;

    .line 29
    new-instance v13, Lorg/jline/terminal/Attributes$ControlChar;

    const-string v15, "VINTR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/jline/terminal/Attributes$ControlChar;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/jline/terminal/Attributes$ControlChar;->VINTR:Lorg/jline/terminal/Attributes$ControlChar;

    .line 30
    new-instance v15, Lorg/jline/terminal/Attributes$ControlChar;

    const-string v14, "VQUIT"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/jline/terminal/Attributes$ControlChar;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/jline/terminal/Attributes$ControlChar;->VQUIT:Lorg/jline/terminal/Attributes$ControlChar;

    .line 31
    new-instance v14, Lorg/jline/terminal/Attributes$ControlChar;

    const-string v12, "VSUSP"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/jline/terminal/Attributes$ControlChar;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/jline/terminal/Attributes$ControlChar;->VSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    .line 32
    new-instance v12, Lorg/jline/terminal/Attributes$ControlChar;

    const-string v10, "VDSUSP"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/jline/terminal/Attributes$ControlChar;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/jline/terminal/Attributes$ControlChar;->VDSUSP:Lorg/jline/terminal/Attributes$ControlChar;

    .line 33
    new-instance v10, Lorg/jline/terminal/Attributes$ControlChar;

    const-string v8, "VSTART"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/jline/terminal/Attributes$ControlChar;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/jline/terminal/Attributes$ControlChar;->VSTART:Lorg/jline/terminal/Attributes$ControlChar;

    .line 34
    new-instance v8, Lorg/jline/terminal/Attributes$ControlChar;

    const-string v6, "VSTOP"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/jline/terminal/Attributes$ControlChar;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/jline/terminal/Attributes$ControlChar;->VSTOP:Lorg/jline/terminal/Attributes$ControlChar;

    .line 35
    new-instance v6, Lorg/jline/terminal/Attributes$ControlChar;

    const-string v4, "VLNEXT"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/jline/terminal/Attributes$ControlChar;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VLNEXT:Lorg/jline/terminal/Attributes$ControlChar;

    .line 36
    new-instance v4, Lorg/jline/terminal/Attributes$ControlChar;

    const-string v2, "VDISCARD"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lorg/jline/terminal/Attributes$ControlChar;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/terminal/Attributes$ControlChar;->VDISCARD:Lorg/jline/terminal/Attributes$ControlChar;

    .line 37
    new-instance v2, Lorg/jline/terminal/Attributes$ControlChar;

    const-string v6, "VMIN"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lorg/jline/terminal/Attributes$ControlChar;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/terminal/Attributes$ControlChar;->VMIN:Lorg/jline/terminal/Attributes$ControlChar;

    .line 38
    new-instance v6, Lorg/jline/terminal/Attributes$ControlChar;

    const-string v4, "VTIME"

    move-object/from16 v19, v2

    const/16 v2, 0x10

    invoke-direct {v6, v4, v2}, Lorg/jline/terminal/Attributes$ControlChar;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jline/terminal/Attributes$ControlChar;->VTIME:Lorg/jline/terminal/Attributes$ControlChar;

    .line 39
    new-instance v4, Lorg/jline/terminal/Attributes$ControlChar;

    const-string v2, "VSTATUS"

    move-object/from16 v20, v6

    const/16 v6, 0x11

    invoke-direct {v4, v2, v6}, Lorg/jline/terminal/Attributes$ControlChar;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/terminal/Attributes$ControlChar;->VSTATUS:Lorg/jline/terminal/Attributes$ControlChar;

    .line 21
    const/16 v2, 0x12

    new-array v2, v2, [Lorg/jline/terminal/Attributes$ControlChar;

    const/16 v16, 0x0

    aput-object v0, v2, v16

    const/4 v0, 0x1

    aput-object v1, v2, v0

    const/4 v0, 0x2

    aput-object v3, v2, v0

    const/4 v0, 0x3

    aput-object v5, v2, v0

    const/4 v0, 0x4

    aput-object v7, v2, v0

    const/4 v0, 0x5

    aput-object v9, v2, v0

    const/4 v0, 0x6

    aput-object v11, v2, v0

    const/4 v0, 0x7

    aput-object v13, v2, v0

    const/16 v0, 0x8

    aput-object v15, v2, v0

    const/16 v0, 0x9

    aput-object v14, v2, v0

    const/16 v0, 0xa

    aput-object v12, v2, v0

    const/16 v0, 0xb

    aput-object v10, v2, v0

    const/16 v0, 0xc

    aput-object v8, v2, v0

    const/16 v0, 0xd

    aput-object v17, v2, v0

    const/16 v0, 0xe

    aput-object v18, v2, v0

    const/16 v0, 0xf

    aput-object v19, v2, v0

    const/16 v0, 0x10

    aput-object v20, v2, v0

    aput-object v4, v2, v6

    sput-object v2, Lorg/jline/terminal/Attributes$ControlChar;->$VALUES:[Lorg/jline/terminal/Attributes$ControlChar;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 21
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/terminal/Attributes$ControlChar;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 21
    const-class v0, Lorg/jline/terminal/Attributes$ControlChar;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/Attributes$ControlChar;

    return-object v0
.end method

.method public static values()[Lorg/jline/terminal/Attributes$ControlChar;
    .locals 1

    .line 21
    sget-object v0, Lorg/jline/terminal/Attributes$ControlChar;->$VALUES:[Lorg/jline/terminal/Attributes$ControlChar;

    invoke-virtual {v0}, [Lorg/jline/terminal/Attributes$ControlChar;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/terminal/Attributes$ControlChar;

    return-object v0
.end method
