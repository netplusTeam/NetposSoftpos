.class public Lorg/jpos/space/MD5Template;
.super Ljava/lang/Object;
.source "MD5Template.java"

# interfaces
.implements Lorg/jpos/space/Template;
.implements Ljava/io/Serializable;


# static fields
.field static final synthetic $assertionsDisabled:Z = false

.field private static final serialVersionUID:J = -0x10b88762fef6ce90L


# instance fields
.field digest:[B

.field key:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 30
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 1
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "value"    # Ljava/lang/Object;

    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lorg/jpos/space/MD5Template;->key:Ljava/lang/Object;

    .line 38
    invoke-virtual {p0, p2}, Lorg/jpos/space/MD5Template;->digest(Ljava/lang/Object;)[B

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/space/MD5Template;->digest:[B

    .line 39
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;[B)V
    .locals 0
    .param p1, "key"    # Ljava/lang/Object;
    .param p2, "digest"    # [B

    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object p1, p0, Lorg/jpos/space/MD5Template;->key:Ljava/lang/Object;

    .line 43
    iput-object p2, p0, Lorg/jpos/space/MD5Template;->digest:[B

    .line 44
    return-void
.end method

.method public static serialize(Ljava/lang/Object;)[B
    .locals 3
    .param p0, "obj"    # Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 83
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 84
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v1, Ljava/io/ObjectOutputStream;

    invoke-direct {v1, v0}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 85
    .local v1, "oos":Ljava/io/ObjectOutputStream;
    invoke-virtual {v1, p0}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v1}, Ljava/io/ObjectOutputStream;->close()V

    .line 88
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v2

    return-object v2
.end method


# virtual methods
.method public digest(Ljava/lang/Object;)[B
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 47
    :try_start_0
    const-string v0, "MD5"

    invoke-static {v0}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;

    move-result-object v0

    .line 48
    .local v0, "md":Ljava/security/MessageDigest;
    invoke-static {p1}, Lorg/jpos/space/MD5Template;->serialize(Ljava/lang/Object;)[B

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/security/MessageDigest;->digest([B)[B

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 49
    .end local v0    # "md":Ljava/security/MessageDigest;
    :catch_0
    move-exception v0

    .line 50
    .local v0, "e":Ljava/lang/Exception;
    new-instance v1, Lorg/jpos/space/SpaceError;

    invoke-direct {v1, v0}, Lorg/jpos/space/SpaceError;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "obj"    # Ljava/lang/Object;

    .line 55
    invoke-virtual {p0, p1}, Lorg/jpos/space/MD5Template;->digest(Ljava/lang/Object;)[B

    move-result-object v0

    iget-object v1, p0, Lorg/jpos/space/MD5Template;->digest:[B

    invoke-static {v0, v1}, Ljava/util/Arrays;->equals([B[B)Z

    move-result v0

    return v0
.end method

.method public getDigest()[B
    .locals 1

    .line 66
    iget-object v0, p0, Lorg/jpos/space/MD5Template;->digest:[B

    return-object v0
.end method

.method public getDigestAsString()Ljava/lang/String;
    .locals 1

    .line 69
    iget-object v0, p0, Lorg/jpos/space/MD5Template;->digest:[B

    invoke-static {v0}, Lorg/jpos/iso/ISOUtil;->hexString([B)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/Object;
    .locals 1

    .line 63
    iget-object v0, p0, Lorg/jpos/space/MD5Template;->key:Ljava/lang/Object;

    return-object v0
.end method

.method public hashCode()I
    .locals 2

    .line 59
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "hashCode not designed"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 72
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 73
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string v1, "key=\'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 74
    iget-object v1, p0, Lorg/jpos/space/MD5Template;->key:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 75
    const-string v1, "\', digest="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 76
    invoke-virtual {p0}, Lorg/jpos/space/MD5Template;->getDigestAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method
