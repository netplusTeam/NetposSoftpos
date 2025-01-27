.class public final enum Lorg/apache/sshd/common/cipher/Cipher$Mode;
.super Ljava/lang/Enum;
.source "Cipher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/cipher/Cipher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Mode"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/cipher/Cipher$Mode;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/cipher/Cipher$Mode;

.field public static final enum Decrypt:Lorg/apache/sshd/common/cipher/Cipher$Mode;

.field public static final enum Encrypt:Lorg/apache/sshd/common/cipher/Cipher$Mode;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .line 33
    new-instance v0, Lorg/apache/sshd/common/cipher/Cipher$Mode;

    const-string v1, "Encrypt"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lorg/apache/sshd/common/cipher/Cipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lorg/apache/sshd/common/cipher/Cipher$Mode;->Encrypt:Lorg/apache/sshd/common/cipher/Cipher$Mode;

    new-instance v1, Lorg/apache/sshd/common/cipher/Cipher$Mode;

    const-string v3, "Decrypt"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lorg/apache/sshd/common/cipher/Cipher$Mode;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lorg/apache/sshd/common/cipher/Cipher$Mode;->Decrypt:Lorg/apache/sshd/common/cipher/Cipher$Mode;

    .line 32
    const/4 v3, 0x2

    new-array v3, v3, [Lorg/apache/sshd/common/cipher/Cipher$Mode;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    sput-object v3, Lorg/apache/sshd/common/cipher/Cipher$Mode;->$VALUES:[Lorg/apache/sshd/common/cipher/Cipher$Mode;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 32
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/Cipher$Mode;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 32
    const-class v0, Lorg/apache/sshd/common/cipher/Cipher$Mode;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/cipher/Cipher$Mode;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/cipher/Cipher$Mode;
    .locals 1

    .line 32
    sget-object v0, Lorg/apache/sshd/common/cipher/Cipher$Mode;->$VALUES:[Lorg/apache/sshd/common/cipher/Cipher$Mode;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/cipher/Cipher$Mode;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/cipher/Cipher$Mode;

    return-object v0
.end method
