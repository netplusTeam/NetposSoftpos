.class public Lorg/jpos/q2/cli/OBF;
.super Ljava/lang/Object;
.source "OBF.java"

# interfaces
.implements Lorg/jpos/q2/CLICommand;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private obf(Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p1, "s"    # Ljava/lang/String;

    .line 47
    new-instance v0, Ljava/security/SecureRandom;

    invoke-direct {v0}, Ljava/security/SecureRandom;-><init>()V

    .line 48
    .local v0, "sr":Ljava/security/SecureRandom;
    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 49
    .local v1, "b":[B
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v2

    rem-int/lit8 v2, v2, 0x20

    new-array v2, v2, [B

    .line 50
    .local v2, "e":[B
    invoke-virtual {v0}, Ljava/security/SecureRandom;->nextInt()I

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(I)I

    move-result v3

    .line 51
    .local v3, "i":I
    invoke-virtual {v0, v2}, Ljava/security/SecureRandom;->nextBytes([B)V

    .line 52
    array-length v4, v1

    invoke-static {v3, v4}, Lorg/jpos/security/SystemSeed;->getSeed(II)[B

    move-result-object v4

    invoke-static {v1, v4}, Lorg/jpos/iso/ISOUtil;->xor([B[B)[B

    move-result-object v1

    .line 53
    array-length v4, v1

    array-length v5, v2

    add-int/2addr v4, v5

    add-int/lit8 v4, v4, 0x8

    invoke-static {v4}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v4

    .line 54
    .local v4, "buf":Ljava/nio/ByteBuffer;
    invoke-virtual {v4, v3}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 55
    array-length v5, v1

    invoke-virtual {v4, v5}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 56
    invoke-virtual {v4, v1}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 57
    invoke-virtual {v4, v2}, Ljava/nio/ByteBuffer;->put([B)Ljava/nio/ByteBuffer;

    .line 58
    invoke-static {}, Ljava/util/Base64;->getEncoder()Ljava/util/Base64$Encoder;

    move-result-object v5

    invoke-virtual {v4}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/util/Base64$Encoder;->encodeToString([B)Ljava/lang/String;

    move-result-object v5

    return-object v5
.end method


# virtual methods
.method public exec(Lorg/jpos/q2/CLIContext;[Ljava/lang/String;)V
    .locals 3
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;
    .param p2, "args"    # [Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 36
    array-length v0, p2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    .line 37
    invoke-virtual {p0, p1}, Lorg/jpos/q2/cli/OBF;->usage(Lorg/jpos/q2/CLIContext;)V

    .line 38
    return-void

    .line 40
    :cond_0
    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aget-object v0, p2, v0

    invoke-direct {p0, v0}, Lorg/jpos/q2/cli/OBF;->obf(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v1, v2

    const-string v0, "obf::%s"

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 41
    return-void
.end method

.method public usage(Lorg/jpos/q2/CLIContext;)V
    .locals 1
    .param p1, "cli"    # Lorg/jpos/q2/CLIContext;

    .line 43
    const-string v0, "Usage: obf \"secret\""

    invoke-virtual {p1, v0}, Lorg/jpos/q2/CLIContext;->println(Ljava/lang/String;)V

    .line 44
    return-void
.end method
