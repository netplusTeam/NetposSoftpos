.class final enum Lorg/jpos/iso/ISOServer$PermLogPolicy;
.super Ljava/lang/Enum;
.source "ISOServer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/iso/ISOServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "PermLogPolicy"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/iso/ISOServer$PermLogPolicy;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/iso/ISOServer$PermLogPolicy;

.field public static final enum ALLOW_LOG:Lorg/jpos/iso/ISOServer$PermLogPolicy;

.field public static final enum ALLOW_NOLOG:Lorg/jpos/iso/ISOServer$PermLogPolicy;

.field public static final enum DENY_LOG:Lorg/jpos/iso/ISOServer$PermLogPolicy;

.field public static final enum DENY_LOGWARNING:Lorg/jpos/iso/ISOServer$PermLogPolicy;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 67
    new-instance v0, Lorg/jpos/iso/ISOServer$PermLogPolicy;

    const-string v1, "ALLOW_NOLOG"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jpos/iso/ISOServer$PermLogPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jpos/iso/ISOServer$PermLogPolicy;->ALLOW_NOLOG:Lorg/jpos/iso/ISOServer$PermLogPolicy;

    new-instance v1, Lorg/jpos/iso/ISOServer$PermLogPolicy;

    const-string v3, "DENY_LOG"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jpos/iso/ISOServer$PermLogPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jpos/iso/ISOServer$PermLogPolicy;->DENY_LOG:Lorg/jpos/iso/ISOServer$PermLogPolicy;

    new-instance v3, Lorg/jpos/iso/ISOServer$PermLogPolicy;

    const-string v5, "ALLOW_LOG"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jpos/iso/ISOServer$PermLogPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jpos/iso/ISOServer$PermLogPolicy;->ALLOW_LOG:Lorg/jpos/iso/ISOServer$PermLogPolicy;

    new-instance v5, Lorg/jpos/iso/ISOServer$PermLogPolicy;

    const-string v7, "DENY_LOGWARNING"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jpos/iso/ISOServer$PermLogPolicy;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jpos/iso/ISOServer$PermLogPolicy;->DENY_LOGWARNING:Lorg/jpos/iso/ISOServer$PermLogPolicy;

    .line 66
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/jpos/iso/ISOServer$PermLogPolicy;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/jpos/iso/ISOServer$PermLogPolicy;->$VALUES:[Lorg/jpos/iso/ISOServer$PermLogPolicy;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 66
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/iso/ISOServer$PermLogPolicy;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 66
    const-class v0, Lorg/jpos/iso/ISOServer$PermLogPolicy;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/iso/ISOServer$PermLogPolicy;

    return-object v0
.end method

.method public static values()[Lorg/jpos/iso/ISOServer$PermLogPolicy;
    .locals 1

    .line 66
    sget-object v0, Lorg/jpos/iso/ISOServer$PermLogPolicy;->$VALUES:[Lorg/jpos/iso/ISOServer$PermLogPolicy;

    invoke-virtual {v0}, [Lorg/jpos/iso/ISOServer$PermLogPolicy;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/iso/ISOServer$PermLogPolicy;

    return-object v0
.end method
