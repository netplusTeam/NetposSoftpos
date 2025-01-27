.class public abstract enum Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;
.super Ljava/lang/Enum;
.source "ECCurves.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/cipher/ECCurves;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "ECPointCompression"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;

.field public static final enum UNCOMPRESSED:Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;

.field public static final VALUES:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum VARIANT2:Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;

.field public static final enum VARIANT3:Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;


# instance fields
.field private final indicatorValue:B


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 441
    new-instance v0, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression$1;

    const-string v1, "VARIANT2"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression$1;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;->VARIANT2:Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;

    .line 452
    new-instance v1, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression$2;

    const-string v4, "VARIANT3"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression$2;-><init>(Ljava/lang/String;IB)V

    sput-object v1, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;->VARIANT3:Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;

    .line 463
    new-instance v4, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression$3;

    const-string v7, "UNCOMPRESSED"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v3, v8}, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression$3;-><init>(Ljava/lang/String;IB)V

    sput-object v4, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;->UNCOMPRESSED:Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;

    .line 438
    new-array v6, v6, [Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v4, v6, v3

    sput-object v6, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;->$VALUES:[Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;

    .line 498
    const-class v0, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;

    .line 499
    invoke-static {v0}, Ljava/util/EnumSet;->allOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableSet(Ljava/util/Set;)Ljava/util/Set;

    move-result-object v0

    sput-object v0, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;->VALUES:Ljava/util/Set;

    .line 498
    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .locals 0
    .param p3, "indicator"    # B
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(B)V"
        }
    .end annotation

    .line 503
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 504
    iput-byte p3, p0, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;->indicatorValue:B

    .line 505
    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;IBLorg/apache/sshd/common/cipher/ECCurves$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # B
    .param p4, "x3"    # Lorg/apache/sshd/common/cipher/ECCurves$1;

    .line 438
    invoke-direct {p0, p1, p2, p3}, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;-><init>(Ljava/lang/String;IB)V

    return-void
.end method

.method public static fromIndicatorValue(I)Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;
    .locals 4
    .param p0, "value"    # I

    .line 562
    const/4 v0, 0x0

    if-ltz p0, :cond_3

    const/16 v1, 0xff

    if-le p0, v1, :cond_0

    goto :goto_1

    .line 566
    :cond_0
    sget-object v1, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;->VALUES:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;

    .line 567
    .local v2, "c":Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;
    invoke-virtual {v2}, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;->getIndicatorValue()B

    move-result v3

    if-ne p0, v3, :cond_1

    .line 568
    return-object v2

    .line 570
    .end local v2    # "c":Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;
    :cond_1
    goto :goto_0

    .line 572
    :cond_2
    return-object v0

    .line 563
    :cond_3
    :goto_1
    return-object v0
.end method

.method public static valueOf(Ljava/lang/String;)Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 438
    const-class v0, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;

    return-object v0
.end method

.method public static values()[Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;
    .locals 1

    .line 438
    sget-object v0, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;->$VALUES:[Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;

    invoke-virtual {v0}, [Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;

    return-object v0
.end method


# virtual methods
.method public ecPointToOctetString(Ljava/lang/String;Ljava/security/spec/ECPoint;)[B
    .locals 4
    .param p1, "curveName"    # Ljava/lang/String;
    .param p2, "p"    # Ljava/security/spec/ECPoint;

    .line 514
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v1, 0xc4

    invoke-direct {v0, v1}, Ljava/io/ByteArrayOutputStream;-><init>(I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    .local v0, "baos":Ljava/io/ByteArrayOutputStream;
    :try_start_1
    invoke-virtual {p0, v0, p1, p2}, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;->writeECPoint(Ljava/io/OutputStream;Ljava/lang/String;Ljava/security/spec/ECPoint;)V

    .line 516
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 517
    :try_start_2
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 516
    return-object v1

    .line 514
    :catchall_0
    move-exception v1

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local p1    # "curveName":Ljava/lang/String;
    .end local p2    # "p":Ljava/security/spec/ECPoint;
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 517
    .restart local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "curveName":Ljava/lang/String;
    .restart local p2    # "p":Ljava/security/spec/ECPoint;
    :catchall_1
    move-exception v2

    :try_start_4
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->close()V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    goto :goto_0

    :catchall_2
    move-exception v3

    :try_start_5
    invoke-virtual {v1, v3}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    .end local p1    # "curveName":Ljava/lang/String;
    .end local p2    # "p":Ljava/security/spec/ECPoint;
    :goto_0
    throw v2
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_0

    .end local v0    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local p1    # "curveName":Ljava/lang/String;
    .restart local p2    # "p":Ljava/security/spec/ECPoint;
    :catch_0
    move-exception v0

    .line 518
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ecPointToOctetString("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") failed ("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 519
    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ") to write data: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 520
    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method public final getIndicatorValue()B
    .locals 1

    .line 508
    iget-byte v0, p0, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;->indicatorValue:B

    return v0
.end method

.method public abstract octetStringToEcPoint([BII)Ljava/security/spec/ECPoint;
.end method

.method protected writeCoordinate(Ljava/io/OutputStream;Ljava/lang/String;Ljava/math/BigInteger;I)V
    .locals 6
    .param p1, "s"    # Ljava/io/OutputStream;
    .param p2, "n"    # Ljava/lang/String;
    .param p3, "v"    # Ljava/math/BigInteger;
    .param p4, "numElements"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 534
    invoke-virtual {p3}, Ljava/math/BigInteger;->toByteArray()[B

    move-result-object v0

    .line 535
    .local v0, "vp":[B
    const/4 v1, 0x0

    .line 536
    .local v1, "startIndex":I
    array-length v2, v0

    .line 537
    .local v2, "vLen":I
    if-le v2, p4, :cond_0

    .line 538
    const/4 v3, 0x0

    aget-byte v3, v0, v3

    if-nez v3, :cond_0

    .line 539
    add-int/lit8 v1, v1, 0x1

    .line 540
    add-int/lit8 v2, v2, -0x1

    .line 544
    :cond_0
    if-gt v2, p4, :cond_2

    .line 550
    if-ge v2, p4, :cond_1

    .line 551
    new-array v3, p4, [B

    .line 552
    .local v3, "tmp":[B
    sub-int v4, p4, v2

    invoke-static {v0, v1, v3, v4, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 553
    move-object v0, v3

    .line 554
    const/4 v1, 0x0

    .line 555
    array-length v2, v0

    .line 558
    .end local v3    # "tmp":[B
    :cond_1
    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    .line 559
    return-void

    .line 545
    :cond_2
    new-instance v3, Ljava/io/StreamCorruptedException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "writeCoordinate("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ")["

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "] value length ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") exceeds max. ("

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ") for "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public writeECPoint(Ljava/io/OutputStream;Ljava/lang/String;Ljava/security/spec/ECPoint;)V
    .locals 3
    .param p1, "s"    # Ljava/io/OutputStream;
    .param p2, "curveName"    # Ljava/lang/String;
    .param p3, "p"    # Ljava/security/spec/ECPoint;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 526
    if-nez p1, :cond_0

    .line 527
    new-instance v0, Ljava/io/EOFException;

    const-string v1, "No output stream"

    invoke-direct {v0, v1}, Ljava/io/EOFException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 530
    :cond_0
    new-instance v0, Ljava/io/StreamCorruptedException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "writeECPoint("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lorg/apache/sshd/common/cipher/ECCurves$ECPointCompression;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] N/A"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/StreamCorruptedException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
