.class public Lorg/bouncycastle/jce/spec/OpenSSHPrivateKeySpec;
.super Ljava/security/spec/EncodedKeySpec;
.source "OpenSSHPrivateKeySpec.java"


# instance fields
.field private final format:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 1

    .line 1
    invoke-direct {p0, p1}, Ljava/security/spec/EncodedKeySpec;-><init>([B)V

    .line 3
    const/4 v0, 0x0

    aget-byte p1, p1, v0

    const/16 v0, 0x30

    if-ne p1, v0, :cond_0

    .line 5
    const-string p1, "ASN.1"

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/OpenSSHPrivateKeySpec;->format:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/16 v0, 0x6f

    if-ne p1, v0, :cond_1

    .line 9
    const-string p1, "OpenSSH"

    iput-object p1, p0, Lorg/bouncycastle/jce/spec/OpenSSHPrivateKeySpec;->format:Ljava/lang/String;

    :goto_0
    return-void

    .line 13
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v0, "unknown byte encoding"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public getFormat()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/bouncycastle/jce/spec/OpenSSHPrivateKeySpec;->format:Ljava/lang/String;

    return-object v0
.end method
