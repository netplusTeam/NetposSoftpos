.class public final enum Lorg/jpos/security/CipherMode;
.super Ljava/lang/Enum;
.source "CipherMode.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/jpos/security/CipherMode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/jpos/security/CipherMode;

.field public static final enum CBC:Lorg/jpos/security/CipherMode;

.field public static final enum CFB64:Lorg/jpos/security/CipherMode;

.field public static final enum CFB8:Lorg/jpos/security/CipherMode;

.field public static final enum ECB:Lorg/jpos/security/CipherMode;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 31
    new-instance v0, Lorg/jpos/security/CipherMode;

    const-string v1, "ECB"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/jpos/security/CipherMode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/jpos/security/CipherMode;->ECB:Lorg/jpos/security/CipherMode;

    .line 36
    new-instance v1, Lorg/jpos/security/CipherMode;

    const-string v3, "CBC"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/jpos/security/CipherMode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/jpos/security/CipherMode;->CBC:Lorg/jpos/security/CipherMode;

    .line 41
    new-instance v3, Lorg/jpos/security/CipherMode;

    const-string v5, "CFB8"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lorg/jpos/security/CipherMode;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lorg/jpos/security/CipherMode;->CFB8:Lorg/jpos/security/CipherMode;

    .line 46
    new-instance v5, Lorg/jpos/security/CipherMode;

    const-string v7, "CFB64"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lorg/jpos/security/CipherMode;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lorg/jpos/security/CipherMode;->CFB64:Lorg/jpos/security/CipherMode;

    .line 26
    const/4 v7, 0x4

    new-array v7, v7, [Lorg/jpos/security/CipherMode;

    aput-object v0, v7, v2

    aput-object v1, v7, v4

    aput-object v3, v7, v6

    aput-object v5, v7, v8

    sput-object v7, Lorg/jpos/security/CipherMode;->$VALUES:[Lorg/jpos/security/CipherMode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 26
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/jpos/security/CipherMode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 26
    const-class v0, Lorg/jpos/security/CipherMode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/jpos/security/CipherMode;

    return-object v0
.end method

.method public static values()[Lorg/jpos/security/CipherMode;
    .locals 1

    .line 26
    sget-object v0, Lorg/jpos/security/CipherMode;->$VALUES:[Lorg/jpos/security/CipherMode;

    invoke-virtual {v0}, [Lorg/jpos/security/CipherMode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/jpos/security/CipherMode;

    return-object v0
.end method
