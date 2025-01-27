.class public final enum Lorg/jline/terminal/Attributes$OutputFlag;
.super Ljava/lang/Enum;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "OutputFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/terminal/Attributes$OutputFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/terminal/Attributes$OutputFlag;

.field public static final enum BSDLY:Lorg/jline/terminal/Attributes$OutputFlag;

.field public static final enum CRDLY:Lorg/jline/terminal/Attributes$OutputFlag;

.field public static final enum FFDLY:Lorg/jline/terminal/Attributes$OutputFlag;

.field public static final enum NLDLY:Lorg/jline/terminal/Attributes$OutputFlag;

.field public static final enum OCRNL:Lorg/jline/terminal/Attributes$OutputFlag;

.field public static final enum OFDEL:Lorg/jline/terminal/Attributes$OutputFlag;

.field public static final enum OFILL:Lorg/jline/terminal/Attributes$OutputFlag;

.field public static final enum ONLCR:Lorg/jline/terminal/Attributes$OutputFlag;

.field public static final enum ONLRET:Lorg/jline/terminal/Attributes$OutputFlag;

.field public static final enum ONOCR:Lorg/jline/terminal/Attributes$OutputFlag;

.field public static final enum ONOEOT:Lorg/jline/terminal/Attributes$OutputFlag;

.field public static final enum OPOST:Lorg/jline/terminal/Attributes$OutputFlag;

.field public static final enum OXTABS:Lorg/jline/terminal/Attributes$OutputFlag;

.field public static final enum TABDLY:Lorg/jline/terminal/Attributes$OutputFlag;

.field public static final enum VTDLY:Lorg/jline/terminal/Attributes$OutputFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 66
    new-instance v0, Lorg/jline/terminal/Attributes$OutputFlag;

    const-string v1, "OPOST"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/terminal/Attributes$OutputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/terminal/Attributes$OutputFlag;->OPOST:Lorg/jline/terminal/Attributes$OutputFlag;

    .line 67
    new-instance v1, Lorg/jline/terminal/Attributes$OutputFlag;

    const-string v3, "ONLCR"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/terminal/Attributes$OutputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/terminal/Attributes$OutputFlag;->ONLCR:Lorg/jline/terminal/Attributes$OutputFlag;

    .line 68
    new-instance v3, Lorg/jline/terminal/Attributes$OutputFlag;

    const-string v5, "OXTABS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/terminal/Attributes$OutputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/terminal/Attributes$OutputFlag;->OXTABS:Lorg/jline/terminal/Attributes$OutputFlag;

    .line 69
    new-instance v5, Lorg/jline/terminal/Attributes$OutputFlag;

    const-string v7, "ONOEOT"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/terminal/Attributes$OutputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/terminal/Attributes$OutputFlag;->ONOEOT:Lorg/jline/terminal/Attributes$OutputFlag;

    .line 70
    new-instance v7, Lorg/jline/terminal/Attributes$OutputFlag;

    const-string v9, "OCRNL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jline/terminal/Attributes$OutputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jline/terminal/Attributes$OutputFlag;->OCRNL:Lorg/jline/terminal/Attributes$OutputFlag;

    .line 71
    new-instance v9, Lorg/jline/terminal/Attributes$OutputFlag;

    const-string v11, "ONOCR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/jline/terminal/Attributes$OutputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/jline/terminal/Attributes$OutputFlag;->ONOCR:Lorg/jline/terminal/Attributes$OutputFlag;

    .line 72
    new-instance v11, Lorg/jline/terminal/Attributes$OutputFlag;

    const-string v13, "ONLRET"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/jline/terminal/Attributes$OutputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/jline/terminal/Attributes$OutputFlag;->ONLRET:Lorg/jline/terminal/Attributes$OutputFlag;

    .line 73
    new-instance v13, Lorg/jline/terminal/Attributes$OutputFlag;

    const-string v15, "OFILL"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/jline/terminal/Attributes$OutputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/jline/terminal/Attributes$OutputFlag;->OFILL:Lorg/jline/terminal/Attributes$OutputFlag;

    .line 74
    new-instance v15, Lorg/jline/terminal/Attributes$OutputFlag;

    const-string v14, "NLDLY"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/jline/terminal/Attributes$OutputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/jline/terminal/Attributes$OutputFlag;->NLDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    .line 75
    new-instance v14, Lorg/jline/terminal/Attributes$OutputFlag;

    const-string v12, "TABDLY"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/jline/terminal/Attributes$OutputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/jline/terminal/Attributes$OutputFlag;->TABDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    .line 76
    new-instance v12, Lorg/jline/terminal/Attributes$OutputFlag;

    const-string v10, "CRDLY"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/jline/terminal/Attributes$OutputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/jline/terminal/Attributes$OutputFlag;->CRDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    .line 77
    new-instance v10, Lorg/jline/terminal/Attributes$OutputFlag;

    const-string v8, "FFDLY"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/jline/terminal/Attributes$OutputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/jline/terminal/Attributes$OutputFlag;->FFDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    .line 78
    new-instance v8, Lorg/jline/terminal/Attributes$OutputFlag;

    const-string v6, "BSDLY"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/jline/terminal/Attributes$OutputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/jline/terminal/Attributes$OutputFlag;->BSDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    .line 79
    new-instance v6, Lorg/jline/terminal/Attributes$OutputFlag;

    const-string v4, "VTDLY"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/jline/terminal/Attributes$OutputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jline/terminal/Attributes$OutputFlag;->VTDLY:Lorg/jline/terminal/Attributes$OutputFlag;

    .line 80
    new-instance v4, Lorg/jline/terminal/Attributes$OutputFlag;

    const-string v2, "OFDEL"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lorg/jline/terminal/Attributes$OutputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/terminal/Attributes$OutputFlag;->OFDEL:Lorg/jline/terminal/Attributes$OutputFlag;

    .line 65
    const/16 v2, 0xf

    new-array v2, v2, [Lorg/jline/terminal/Attributes$OutputFlag;

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

    aput-object v4, v2, v6

    sput-object v2, Lorg/jline/terminal/Attributes$OutputFlag;->$VALUES:[Lorg/jline/terminal/Attributes$OutputFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 65
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/terminal/Attributes$OutputFlag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 65
    const-class v0, Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/Attributes$OutputFlag;

    return-object v0
.end method

.method public static values()[Lorg/jline/terminal/Attributes$OutputFlag;
    .locals 1

    .line 65
    sget-object v0, Lorg/jline/terminal/Attributes$OutputFlag;->$VALUES:[Lorg/jline/terminal/Attributes$OutputFlag;

    invoke-virtual {v0}, [Lorg/jline/terminal/Attributes$OutputFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/terminal/Attributes$OutputFlag;

    return-object v0
.end method
