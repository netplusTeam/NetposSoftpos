.class public final enum Lorg/jline/terminal/Attributes$InputFlag;
.super Ljava/lang/Enum;
.source "Attributes.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jline/terminal/Attributes;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "InputFlag"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jline/terminal/Attributes$InputFlag;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jline/terminal/Attributes$InputFlag;

.field public static final enum BRKINT:Lorg/jline/terminal/Attributes$InputFlag;

.field public static final enum ICRNL:Lorg/jline/terminal/Attributes$InputFlag;

.field public static final enum IGNBRK:Lorg/jline/terminal/Attributes$InputFlag;

.field public static final enum IGNCR:Lorg/jline/terminal/Attributes$InputFlag;

.field public static final enum IGNPAR:Lorg/jline/terminal/Attributes$InputFlag;

.field public static final enum IMAXBEL:Lorg/jline/terminal/Attributes$InputFlag;

.field public static final enum INLCR:Lorg/jline/terminal/Attributes$InputFlag;

.field public static final enum INPCK:Lorg/jline/terminal/Attributes$InputFlag;

.field public static final enum ISTRIP:Lorg/jline/terminal/Attributes$InputFlag;

.field public static final enum IUTF8:Lorg/jline/terminal/Attributes$InputFlag;

.field public static final enum IXANY:Lorg/jline/terminal/Attributes$InputFlag;

.field public static final enum IXOFF:Lorg/jline/terminal/Attributes$InputFlag;

.field public static final enum IXON:Lorg/jline/terminal/Attributes$InputFlag;

.field public static final enum PARMRK:Lorg/jline/terminal/Attributes$InputFlag;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 46
    new-instance v0, Lorg/jline/terminal/Attributes$InputFlag;

    const-string v1, "IGNBRK"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jline/terminal/Attributes$InputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jline/terminal/Attributes$InputFlag;->IGNBRK:Lorg/jline/terminal/Attributes$InputFlag;

    .line 47
    new-instance v1, Lorg/jline/terminal/Attributes$InputFlag;

    const-string v3, "BRKINT"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jline/terminal/Attributes$InputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jline/terminal/Attributes$InputFlag;->BRKINT:Lorg/jline/terminal/Attributes$InputFlag;

    .line 48
    new-instance v3, Lorg/jline/terminal/Attributes$InputFlag;

    const-string v5, "IGNPAR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jline/terminal/Attributes$InputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jline/terminal/Attributes$InputFlag;->IGNPAR:Lorg/jline/terminal/Attributes$InputFlag;

    .line 49
    new-instance v5, Lorg/jline/terminal/Attributes$InputFlag;

    const-string v7, "PARMRK"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jline/terminal/Attributes$InputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jline/terminal/Attributes$InputFlag;->PARMRK:Lorg/jline/terminal/Attributes$InputFlag;

    .line 50
    new-instance v7, Lorg/jline/terminal/Attributes$InputFlag;

    const-string v9, "INPCK"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lorg/jline/terminal/Attributes$InputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lorg/jline/terminal/Attributes$InputFlag;->INPCK:Lorg/jline/terminal/Attributes$InputFlag;

    .line 51
    new-instance v9, Lorg/jline/terminal/Attributes$InputFlag;

    const-string v11, "ISTRIP"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lorg/jline/terminal/Attributes$InputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lorg/jline/terminal/Attributes$InputFlag;->ISTRIP:Lorg/jline/terminal/Attributes$InputFlag;

    .line 52
    new-instance v11, Lorg/jline/terminal/Attributes$InputFlag;

    const-string v13, "INLCR"

    const/4 v14, 0x6

    invoke-direct {v11, v13, v14}, Lorg/jline/terminal/Attributes$InputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lorg/jline/terminal/Attributes$InputFlag;->INLCR:Lorg/jline/terminal/Attributes$InputFlag;

    .line 53
    new-instance v13, Lorg/jline/terminal/Attributes$InputFlag;

    const-string v15, "IGNCR"

    const/4 v14, 0x7

    invoke-direct {v13, v15, v14}, Lorg/jline/terminal/Attributes$InputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lorg/jline/terminal/Attributes$InputFlag;->IGNCR:Lorg/jline/terminal/Attributes$InputFlag;

    .line 54
    new-instance v15, Lorg/jline/terminal/Attributes$InputFlag;

    const-string v14, "ICRNL"

    const/16 v12, 0x8

    invoke-direct {v15, v14, v12}, Lorg/jline/terminal/Attributes$InputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v15, Lorg/jline/terminal/Attributes$InputFlag;->ICRNL:Lorg/jline/terminal/Attributes$InputFlag;

    .line 55
    new-instance v14, Lorg/jline/terminal/Attributes$InputFlag;

    const-string v12, "IXON"

    const/16 v10, 0x9

    invoke-direct {v14, v12, v10}, Lorg/jline/terminal/Attributes$InputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v14, Lorg/jline/terminal/Attributes$InputFlag;->IXON:Lorg/jline/terminal/Attributes$InputFlag;

    .line 56
    new-instance v12, Lorg/jline/terminal/Attributes$InputFlag;

    const-string v10, "IXOFF"

    const/16 v8, 0xa

    invoke-direct {v12, v10, v8}, Lorg/jline/terminal/Attributes$InputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lorg/jline/terminal/Attributes$InputFlag;->IXOFF:Lorg/jline/terminal/Attributes$InputFlag;

    .line 57
    new-instance v10, Lorg/jline/terminal/Attributes$InputFlag;

    const-string v8, "IXANY"

    const/16 v6, 0xb

    invoke-direct {v10, v8, v6}, Lorg/jline/terminal/Attributes$InputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v10, Lorg/jline/terminal/Attributes$InputFlag;->IXANY:Lorg/jline/terminal/Attributes$InputFlag;

    .line 58
    new-instance v8, Lorg/jline/terminal/Attributes$InputFlag;

    const-string v6, "IMAXBEL"

    const/16 v4, 0xc

    invoke-direct {v8, v6, v4}, Lorg/jline/terminal/Attributes$InputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lorg/jline/terminal/Attributes$InputFlag;->IMAXBEL:Lorg/jline/terminal/Attributes$InputFlag;

    .line 59
    new-instance v6, Lorg/jline/terminal/Attributes$InputFlag;

    const-string v4, "IUTF8"

    const/16 v2, 0xd

    invoke-direct {v6, v4, v2}, Lorg/jline/terminal/Attributes$InputFlag;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lorg/jline/terminal/Attributes$InputFlag;->IUTF8:Lorg/jline/terminal/Attributes$InputFlag;

    .line 45
    const/16 v4, 0xe

    new-array v4, v4, [Lorg/jline/terminal/Attributes$InputFlag;

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

    aput-object v6, v4, v2

    sput-object v4, Lorg/jline/terminal/Attributes$InputFlag;->$VALUES:[Lorg/jline/terminal/Attributes$InputFlag;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 45
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jline/terminal/Attributes$InputFlag;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 45
    const-class v0, Lorg/jline/terminal/Attributes$InputFlag;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jline/terminal/Attributes$InputFlag;

    return-object v0
.end method

.method public static values()[Lorg/jline/terminal/Attributes$InputFlag;
    .locals 1

    .line 45
    sget-object v0, Lorg/jline/terminal/Attributes$InputFlag;->$VALUES:[Lorg/jline/terminal/Attributes$InputFlag;

    invoke-virtual {v0}, [Lorg/jline/terminal/Attributes$InputFlag;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jline/terminal/Attributes$InputFlag;

    return-object v0
.end method
