.class public Lcom/sleepycat/je/util/LogVerificationInputStream;
.super Ljava/io/InputStream;
.source "LogVerificationInputStream.java"


# static fields
.field private static final SKIP_BUF_SIZE:I = 0x800


# instance fields
.field private final in:Ljava/io/InputStream;

.field private skipBuf:[B

.field private final verifier:Lcom/sleepycat/je/utilint/LogVerifier;


# direct methods
.method public constructor <init>(Lcom/sleepycat/je/Environment;Ljava/io/InputStream;Ljava/lang/String;)V
    .locals 6
    .param p1, "env"    # Lcom/sleepycat/je/Environment;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "fileName"    # Ljava/lang/String;

    .line 116
    invoke-static {p1}, Lcom/sleepycat/je/DbInternal;->getNonNullEnvImpl(Lcom/sleepycat/je/Environment;)Lcom/sleepycat/je/dbi/EnvironmentImpl;

    move-result-object v1

    const-wide/16 v4, -0x1

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/sleepycat/je/util/LogVerificationInputStream;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/io/InputStream;Ljava/lang/String;J)V

    .line 117
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/io/InputStream;Ljava/lang/String;J)V
    .locals 1
    .param p1, "envImpl"    # Lcom/sleepycat/je/dbi/EnvironmentImpl;
    .param p2, "in"    # Ljava/io/InputStream;
    .param p3, "fileName"    # Ljava/lang/String;
    .param p4, "fileNum"    # J

    .line 126
    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    .line 127
    new-instance v0, Lcom/sleepycat/je/utilint/LogVerifier;

    invoke-direct {v0, p1, p3, p4, p5}, Lcom/sleepycat/je/utilint/LogVerifier;-><init>(Lcom/sleepycat/je/dbi/EnvironmentImpl;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/sleepycat/je/util/LogVerificationInputStream;->verifier:Lcom/sleepycat/je/utilint/LogVerifier;

    .line 128
    iput-object p2, p0, Lcom/sleepycat/je/util/LogVerificationInputStream;->in:Ljava/io/InputStream;

    .line 129
    return-void
.end method


# virtual methods
.method public available()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 259
    iget-object v0, p0, Lcom/sleepycat/je/util/LogVerificationInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->available()I

    move-result v0

    return v0
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 271
    iget-object v0, p0, Lcom/sleepycat/je/util/LogVerificationInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0}, Ljava/io/InputStream;->close()V

    .line 272
    return-void
.end method

.method public read()I
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 152
    const/4 v0, 0x1

    new-array v1, v0, [B

    .line 153
    .local v1, "b":[B
    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2, v0}, Lcom/sleepycat/je/util/LogVerificationInputStream;->read([BII)I

    move-result v0

    .line 154
    .local v0, "lenRead":I
    if-gtz v0, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    :goto_0
    return v2
.end method

.method public read([B)I
    .locals 2
    .param p1, "b"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 173
    array-length v0, p1

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v1, v0}, Lcom/sleepycat/je/util/LogVerificationInputStream;->read([BII)I

    move-result v0

    return v0
.end method

.method public read([BII)I
    .locals 2
    .param p1, "b"    # [B
    .param p2, "off"    # I
    .param p3, "len"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 192
    iget-object v0, p0, Lcom/sleepycat/je/util/LogVerificationInputStream;->in:Ljava/io/InputStream;

    invoke-virtual {v0, p1, p2, p3}, Ljava/io/InputStream;->read([BII)I

    move-result v0

    .line 193
    .local v0, "lenRead":I
    if-gtz v0, :cond_1

    .line 194
    if-gez v0, :cond_0

    .line 195
    iget-object v1, p0, Lcom/sleepycat/je/util/LogVerificationInputStream;->verifier:Lcom/sleepycat/je/utilint/LogVerifier;

    invoke-virtual {v1}, Lcom/sleepycat/je/utilint/LogVerifier;->verifyAtEof()V

    .line 197
    :cond_0
    return v0

    .line 200
    :cond_1
    iget-object v1, p0, Lcom/sleepycat/je/util/LogVerificationInputStream;->verifier:Lcom/sleepycat/je/utilint/LogVerifier;

    invoke-virtual {v1, p1, p2, v0}, Lcom/sleepycat/je/utilint/LogVerifier;->verify([BII)V

    .line 202
    return v0
.end method

.method public skip(J)J
    .locals 8
    .param p1, "bytesToSkip"    # J
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 222
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gtz v2, :cond_0

    .line 223
    return-wide v0

    .line 233
    :cond_0
    iget-object v2, p0, Lcom/sleepycat/je/util/LogVerificationInputStream;->skipBuf:[B

    if-nez v2, :cond_1

    .line 234
    const/16 v2, 0x800

    new-array v2, v2, [B

    iput-object v2, p0, Lcom/sleepycat/je/util/LogVerificationInputStream;->skipBuf:[B

    .line 237
    :cond_1
    move-wide v2, p1

    .line 238
    .local v2, "remaining":J
    :goto_0
    cmp-long v4, v2, v0

    if-lez v4, :cond_3

    .line 239
    iget-object v4, p0, Lcom/sleepycat/je/util/LogVerificationInputStream;->skipBuf:[B

    const/4 v5, 0x0

    const-wide/16 v6, 0x800

    .line 240
    invoke-static {v6, v7, v2, v3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v6

    long-to-int v6, v6

    invoke-virtual {p0, v4, v5, v6}, Lcom/sleepycat/je/util/LogVerificationInputStream;->read([BII)I

    move-result v4

    .line 241
    .local v4, "lenRead":I
    if-gez v4, :cond_2

    .line 242
    goto :goto_1

    .line 244
    :cond_2
    int-to-long v5, v4

    sub-long/2addr v2, v5

    .line 245
    .end local v4    # "lenRead":I
    goto :goto_0

    .line 247
    :cond_3
    :goto_1
    sub-long v0, p1, v2

    return-wide v0
.end method
