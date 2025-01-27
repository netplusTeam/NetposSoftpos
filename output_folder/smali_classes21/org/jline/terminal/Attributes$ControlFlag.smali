.class public final enum Lorg/jline/terminal/Attributes$ControlFlag;
.super Ljava/lang/Enum;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ControlFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/terminal/Attributes$ControlFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/terminal/Attributes$ControlFlag;

.field public static final enum CCAR_OFLOW:Lorg/jline/terminal/Attributes$ControlFlag;

.field public static final enum CCTS_OFLOW:Lorg/jline/terminal/Attributes$ControlFlag;

.field public static final enum CDSR_OFLOW:Lorg/jline/terminal/Attributes$ControlFlag;

.field public static final enum CDTR_IFLOW:Lorg/jline/terminal/Attributes$ControlFlag;

.field public static final enum CIGNORE:Lorg/jline/terminal/Attributes$ControlFlag;

.field public static final enum CLOCAL:Lorg/jline/terminal/Attributes$ControlFlag;

.field public static final enum CREAD:Lorg/jline/terminal/Attributes$ControlFlag;

.field public static final enum CRTS_IFLOW:Lorg/jline/terminal/Attributes$ControlFlag;

.field public static final enum CS5:Lorg/jline/terminal/Attributes$ControlFlag;

.field public static final enum CS6:Lorg/jline/terminal/Attributes$ControlFlag;

.field public static final enum CS7:Lorg/jline/terminal/Attributes$ControlFlag;

.field public static final enum CS8:Lorg/jline/terminal/Attributes$ControlFlag;

.field public static final enum CSTOPB:Lorg/jline/terminal/Attributes$ControlFlag;

.field public static final enum HUPCL:Lorg/jline/terminal/Attributes$ControlFlag;

.field public static final enum PARENB:Lorg/jline/terminal/Attributes$ControlFlag;

.field public static final enum PARODD:Lorg/jline/terminal/Attributes$ControlFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 19

    .line 87
    new-instance v0, Lorg/jline/terminal/Attributes$ControlFlag;

    const-string v1, "CIGNORE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/terminal/Attributes$ControlFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/terminal/Attributes$ControlFlag;->CIGNORE:Lorg/jline/terminal/Attributes$ControlFlag;

    .line 88
    new-instance v1, Lorg/jline/terminal/Attributes$ControlFlag;

    const-string v3, "CS5"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/terminal/Attributes$ControlFlag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/terminal/Attributes$ControlFlag;->CS5:Lorg/jline/terminal/Attributes$ControlFlag;

    .line 89
    new-instance v3, Lorg/jline/terminal/Attributes$ControlFlag;

    const-string v5, "CS6"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/terminal/Attributes$ControlFlag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/terminal/Attributes$ControlFlag;->CS6:Lorg/jline/terminal/Attributes$ControlFlag;

    .line 90
    new-instance v5, Lorg/jline/terminal/Attributes$ControlFlag;

    const-string v7, "CS7"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/terminal/Attributes$ControlFlag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/terminal/Attributes$ControlFlag;->CS7:Lorg/jline/terminal/Attributes$ControlFlag;

    .line 91
    new-instance v7, Lorg/jline/terminal/Attributes$ControlFlag;

    const-string v9, "CS8"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jline/terminal/Attributes$ControlFlag;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jline/terminal/Attributes$ControlFlag;->CS8:Lorg/jline/terminal/Attributes$ControlFlag;

    .line 92
    new-instance v9, Lorg/jline/terminal/Attributes$ControlFlag;

    const-string v11, "CSTOPB"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/jline/terminal/Attributes$ControlFlag;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/jline/terminal/Attributes$ControlFlag;->CSTOPB:Lorg/jline/terminal/Attributes$ControlFlag;

    .line 93
    new-instance v11, Lorg/jline/terminal/Attributes$ControlFlag;

    const-string v13, "CREAD"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/jline/terminal/Attributes$ControlFlag;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/jline/terminal/Attributes$ControlFlag;->CREAD:Lorg/jline/terminal/Attributes$ControlFlag;

    .line 94
    new-instance v13, Lorg/jline/terminal/Attributes$ControlFlag;

    const-string v15, "PARENB"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/jline/terminal/Attributes$ControlFlag;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/jline/terminal/Attributes$ControlFlag;->PARENB:Lorg/jline/terminal/Attributes$ControlFlag;

    .line 95
    new-instance v15, Lorg/jline/terminal/Attributes$ControlFlag;

    const-string v14, "PARODD"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/jline/terminal/Attributes$ControlFlag;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/jline/terminal/Attributes$ControlFlag;->PARODD:Lorg/jline/terminal/Attributes$ControlFlag;

    .line 96
    new-instance v14, Lorg/jline/terminal/Attributes$ControlFlag;

    const-string v12, "HUPCL"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/jline/terminal/Attributes$ControlFlag;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/jline/terminal/Attributes$ControlFlag;->HUPCL:Lorg/jline/terminal/Attributes$ControlFlag;

    .line 97
    new-instance v12, Lorg/jline/terminal/Attributes$ControlFlag;

    const-string v10, "CLOCAL"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/jline/terminal/Attributes$ControlFlag;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/jline/terminal/Attributes$ControlFlag;->CLOCAL:Lorg/jline/terminal/Attributes$ControlFlag;

    .line 98
    new-instance v10, Lorg/jline/terminal/Attributes$ControlFlag;

    const-string v8, "CCTS_OFLOW"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/jline/terminal/Attributes$ControlFlag;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/jline/terminal/Attributes$ControlFlag;->CCTS_OFLOW:Lorg/jline/terminal/Attributes$ControlFlag;

    .line 99
    new-instance v8, Lorg/jline/terminal/Attributes$ControlFlag;

    const-string v6, "CRTS_IFLOW"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/jline/terminal/Attributes$ControlFlag;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/jline/terminal/Attributes$ControlFlag;->CRTS_IFLOW:Lorg/jline/terminal/Attributes$ControlFlag;

    .line 100
    new-instance v6, Lorg/jline/terminal/Attributes$ControlFlag;

    const-string v4, "CDTR_IFLOW"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/jline/terminal/Attributes$ControlFlag;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jline/terminal/Attributes$ControlFlag;->CDTR_IFLOW:Lorg/jline/terminal/Attributes$ControlFlag;

    .line 101
    new-instance v4, Lorg/jline/terminal/Attributes$ControlFlag;

    const-string v2, "CDSR_OFLOW"

    move-object/from16 v17, v6

    const/16 v6, 0xe

    invoke-direct {v4, v2, v6}, Lorg/jline/terminal/Attributes$ControlFlag;-><init>(Ljava/lang/String;I)V

    sput-object v4, Lorg/jline/terminal/Attributes$ControlFlag;->CDSR_OFLOW:Lorg/jline/terminal/Attributes$ControlFlag;

    .line 102
    new-instance v2, Lorg/jline/terminal/Attributes$ControlFlag;

    const-string v6, "CCAR_OFLOW"

    move-object/from16 v18, v4

    const/16 v4, 0xf

    invoke-direct {v2, v6, v4}, Lorg/jline/terminal/Attributes$ControlFlag;-><init>(Ljava/lang/String;I)V

    sput-object v2, Lorg/jline/terminal/Attributes$ControlFlag;->CCAR_OFLOW:Lorg/jline/terminal/Attributes$ControlFlag;

    .line 86
    const/16 v6, 0x10

    new-array v6, v6, [Lorg/jline/terminal/Attributes$ControlFlag;

    const/16 v16, 0x0

    aput-object v0, v6, v16

    const/4 v0, 0x1

    aput-object v1, v6, v0

    const/4 v0, 0x2

    aput-object v3, v6, v0

    const/4 v0, 0x3

    aput-object v5, v6, v0

    const/4 v0, 0x4

    aput-object v7, v6, v0

    const/4 v0, 0x5

    aput-object v9, v6, v0

    const/4 v0, 0x6

    aput-object v11, v6, v0

    const/4 v0, 0x7

    aput-object v13, v6, v0

    const/16 v0, 0x8

    aput-object v15, v6, v0

    const/16 v0, 0x9

    aput-object v14, v6, v0

    const/16 v0, 0xa

    aput-object v12, v6, v0

    const/16 v0, 0xb

    aput-object v10, v6, v0

    const/16 v0, 0xc

    aput-object v8, v6, v0

    const/16 v0, 0xd

    aput-object v17, v6, v0

    const/16 v0, 0xe

    aput-object v18, v6, v0

    aput-object v2, v6, v4

    sput-object v6, Lorg/jline/terminal/Attributes$ControlFlag;->$VALUES:[Lorg/jline/terminal/Attributes$ControlFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 86
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/terminal/Attributes$ControlFlag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 86
    const-class v0, Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/Attributes$ControlFlag;

    return-object v0
.end method

.method public static values()[Lorg/jline/terminal/Attributes$ControlFlag;
    .locals 1

    .line 86
    sget-object v0, Lorg/jline/terminal/Attributes$ControlFlag;->$VALUES:[Lorg/jline/terminal/Attributes$ControlFlag;

    invoke-virtual {v0}, [Lorg/jline/terminal/Attributes$ControlFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/terminal/Attributes$ControlFlag;

    return-object v0
.end method
