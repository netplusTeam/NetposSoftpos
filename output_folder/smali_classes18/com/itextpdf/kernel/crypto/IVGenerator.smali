.class public final Lcom/itextpdf/kernel/crypto/IVGenerator;
.super Ljava/lang/Object;
.source "IVGenerator.java"


# static fields
.field private static final arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 60
    new-instance v0, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    invoke-direct {v0}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;-><init>()V

    sput-object v0, Lcom/itextpdf/kernel/crypto/IVGenerator;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    .line 61
    invoke-static {}, Lcom/itextpdf/io/util/SystemUtil;->getTimeBasedSeed()J

    move-result-wide v1

    .line 62
    .local v1, "time":J
    invoke-static {}, Lcom/itextpdf/io/util/SystemUtil;->getFreeMemory()J

    move-result-wide v3

    .line 63
    .local v3, "mem":J
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "+"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 64
    .local v5, "s":Ljava/lang/String;
    sget-object v6, Ljava/nio/charset/StandardCharsets;->ISO_8859_1:Ljava/nio/charset/Charset;

    invoke-virtual {v5, v6}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v6

    invoke-virtual {v0, v6}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->prepareARCFOURKey([B)V

    .line 65
    .end local v1    # "time":J
    .end local v3    # "mem":J
    .end local v5    # "s":Ljava/lang/String;
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    return-void
.end method

.method public static getIV()[B
    .locals 1

    .line 79
    const/16 v0, 0x10

    invoke-static {v0}, Lcom/itextpdf/kernel/crypto/IVGenerator;->getIV(I)[B

    move-result-object v0

    return-object v0
.end method

.method public static getIV(I)[B
    .locals 3
    .param p0, "len"    # I

    .line 89
    new-array v0, p0, [B

    .line 90
    .local v0, "b":[B
    sget-object v1, Lcom/itextpdf/kernel/crypto/IVGenerator;->arcfour:Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;

    monitor-enter v1

    .line 91
    :try_start_0
    invoke-virtual {v1, v0}, Lcom/itextpdf/kernel/crypto/ARCFOUREncryption;->encryptARCFOUR([B)V

    .line 92
    monitor-exit v1

    .line 93
    return-object v0

    .line 92
    :catchall_0
    move-exception v2

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method
