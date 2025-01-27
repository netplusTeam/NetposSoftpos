.class public Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;
.super Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;
.source "BaseProtocol.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/rep/stream/BaseProtocol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "StartStream"
.end annotation


# instance fields
.field private final feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

.field final synthetic this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;


# direct methods
.method constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;)V
    .locals 1
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "startVLSN"    # Lcom/sleepycat/je/utilint/VLSN;

    .line 427
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 428
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;)V

    .line 429
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    .line 430
    return-void
.end method

.method constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;Lcom/sleepycat/je/rep/stream/FeederFilter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "startVLSN"    # Lcom/sleepycat/je/utilint/VLSN;
    .param p3, "filter"    # Lcom/sleepycat/je/rep/stream/FeederFilter;

    .line 432
    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 433
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Lcom/sleepycat/je/utilint/VLSN;)V

    .line 434
    iput-object p3, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    .line 435
    return-void
.end method

.method public constructor <init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)V
    .locals 9
    .param p1, "this$0"    # Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .param p2, "buffer"    # Ljava/nio/ByteBuffer;

    .line 437
    const-string v0, "exception raised when closing the object input stream object "

    iput-object p1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    .line 438
    invoke-direct {p0, p1, p2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;-><init>(Lcom/sleepycat/je/rep/stream/BaseProtocol;Ljava/nio/ByteBuffer;)V

    .line 441
    invoke-virtual {p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->getVersion()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x6

    if-ge v1, v3, :cond_0

    .line 442
    iput-object v2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    .line 443
    return-void

    .line 446
    :cond_0
    invoke-static {p2}, Lcom/sleepycat/je/log/LogUtils;->readInt(Ljava/nio/ByteBuffer;)I

    move-result v1

    .line 447
    .local v1, "length":I
    if-nez v1, :cond_1

    .line 449
    iput-object v2, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    .line 450
    return-void

    .line 454
    :cond_1
    nop

    .line 455
    invoke-static {p2, v1}, Lcom/sleepycat/je/log/LogUtils;->readBytesNoLength(Ljava/nio/ByteBuffer;I)[B

    move-result-object v2

    .line 456
    .local v2, "filterBytes":[B
    new-instance v3, Ljava/io/ByteArrayInputStream;

    invoke-direct {v3, v2}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 458
    .local v3, "bais":Ljava/io/ByteArrayInputStream;
    const/4 v4, 0x0

    .line 460
    .local v4, "ois":Ljava/io/ObjectInputStream;
    :try_start_0
    new-instance v5, Ljava/io/ObjectInputStream;

    invoke-direct {v5, v3}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v4, v5

    .line 461
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sleepycat/je/rep/stream/FeederFilter;

    iput-object v5, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 466
    nop

    .line 468
    :try_start_1
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 473
    :goto_0
    goto :goto_1

    .line 469
    :catch_0
    move-exception v5

    .line 470
    .local v5, "e":Ljava/io/IOException;
    invoke-static {p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->access$100(Lcom/sleepycat/je/rep/stream/BaseProtocol;)Ljava/util/logging/Logger;

    move-result-object v6

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 472
    invoke-virtual {v5}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-virtual {v6, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .end local v5    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 476
    :goto_1
    return-void

    .line 466
    :catchall_0
    move-exception v5

    goto :goto_3

    .line 462
    :catch_1
    move-exception v5

    goto :goto_2

    :catch_2
    move-exception v5

    .line 463
    .local v5, "e":Ljava/lang/Exception;
    :goto_2
    :try_start_2
    invoke-static {p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->access$000(Lcom/sleepycat/je/rep/stream/BaseProtocol;)Ljava/util/logging/Logger;

    move-result-object v6

    invoke-virtual {v5}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 464
    new-instance v6, Ljava/lang/IllegalStateException;

    invoke-direct {v6, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "length":I
    .end local v2    # "filterBytes":[B
    .end local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .end local v4    # "ois":Ljava/io/ObjectInputStream;
    .end local p1    # "this$0":Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .end local p2    # "buffer":Ljava/nio/ByteBuffer;
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 466
    .end local v5    # "e":Ljava/lang/Exception;
    .restart local v1    # "length":I
    .restart local v2    # "filterBytes":[B
    .restart local v3    # "bais":Ljava/io/ByteArrayInputStream;
    .restart local v4    # "ois":Ljava/io/ObjectInputStream;
    .restart local p1    # "this$0":Lcom/sleepycat/je/rep/stream/BaseProtocol;
    .restart local p2    # "buffer":Ljava/nio/ByteBuffer;
    :goto_3
    if-eqz v4, :cond_2

    .line 468
    :try_start_3
    invoke-virtual {v4}, Ljava/io/ObjectInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_3

    .line 473
    goto :goto_4

    .line 469
    :catch_3
    move-exception v6

    .line 470
    .local v6, "e":Ljava/io/IOException;
    invoke-static {p1}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->access$100(Lcom/sleepycat/je/rep/stream/BaseProtocol;)Ljava/util/logging/Logger;

    move-result-object v7

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 472
    invoke-virtual {v6}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 470
    invoke-virtual {v7, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 473
    .end local v6    # "e":Ljava/io/IOException;
    :cond_2
    :goto_4
    throw v5
.end method


# virtual methods
.method public getFeederFilter()Lcom/sleepycat/je/rep/stream/FeederFilter;
    .locals 1

    .line 479
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    return-object v0
.end method

.method public getOp()Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;
    .locals 1

    .line 538
    sget-object v0, Lcom/sleepycat/je/rep/stream/BaseProtocol;->START_STREAM:Lcom/sleepycat/je/rep/utilint/BinaryProtocol$MessageOp;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 543
    iget-object v0, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    if-nez v0, :cond_0

    const-string v0, "[no filtering]"

    goto :goto_0

    .line 544
    :cond_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    nop

    .line 546
    .local v0, "filterString":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-super {p0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public wireFormat()Ljava/nio/ByteBuffer;
    .locals 7

    .line 485
    const-string v0, "exception raised when closing the object output stream object "

    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-virtual {v1}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->getVersion()I

    move-result v1

    const/4 v2, 0x6

    if-ge v1, v2, :cond_0

    .line 486
    invoke-super {p0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$VLSNMessage;->wireFormat()Ljava/nio/ByteBuffer;

    move-result-object v0

    return-object v0

    .line 492
    :cond_0
    iget-object v1, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    if-eqz v1, :cond_2

    .line 493
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 494
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    const/4 v2, 0x0

    .line 496
    .local v2, "oos":Ljava/io/ObjectOutputStream;
    :try_start_0
    new-instance v3, Ljava/io/ObjectOutputStream;

    invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V

    move-object v2, v3

    .line 497
    iget-object v3, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->feederFilter:Lcom/sleepycat/je/rep/stream/FeederFilter;

    invoke-virtual {v2, v3}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V

    .line 498
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->flush()V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 503
    nop

    .line 505
    :try_start_1
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 510
    :goto_0
    goto :goto_1

    .line 506
    :catch_0
    move-exception v3

    .line 507
    .local v3, "e":Ljava/io/IOException;
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-static {v4}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->access$300(Lcom/sleepycat/je/rep/stream/BaseProtocol;)Ljava/util/logging/Logger;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 509
    invoke-virtual {v3}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-virtual {v4, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .end local v3    # "e":Ljava/io/IOException;
    goto :goto_0

    .line 513
    :goto_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    .line 514
    .local v0, "filterBytes":[B
    array-length v1, v0

    .line 515
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    .local v1, "feederBufferSize":I
    goto :goto_4

    .line 503
    .end local v0    # "filterBytes":[B
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :catchall_0
    move-exception v3

    goto :goto_2

    .line 499
    :catch_1
    move-exception v3

    .line 500
    .restart local v3    # "e":Ljava/io/IOException;
    :try_start_2
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-static {v4}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->access$200(Lcom/sleepycat/je/rep/stream/BaseProtocol;)Ljava/util/logging/Logger;

    move-result-object v4

    invoke-virtual {v3}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/logging/Logger;->warning(Ljava/lang/String;)V

    .line 501
    new-instance v4, Ljava/lang/IllegalStateException;

    invoke-direct {v4, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/Throwable;)V

    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    throw v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 503
    .end local v3    # "e":Ljava/io/IOException;
    .restart local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .restart local v2    # "oos":Ljava/io/ObjectOutputStream;
    :goto_2
    if-eqz v2, :cond_1

    .line 505
    :try_start_3
    invoke-virtual {v2}, Ljava/io/ObjectOutputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_2

    .line 510
    goto :goto_3

    .line 506
    :catch_2
    move-exception v4

    .line 507
    .local v4, "e":Ljava/io/IOException;
    iget-object v5, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->this$0:Lcom/sleepycat/je/rep/stream/BaseProtocol;

    invoke-static {v5}, Lcom/sleepycat/je/rep/stream/BaseProtocol;->access$300(Lcom/sleepycat/je/rep/stream/BaseProtocol;)Ljava/util/logging/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 509
    invoke-virtual {v4}, Ljava/io/IOException;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 507
    invoke-virtual {v5, v0}, Ljava/util/logging/Logger;->finest(Ljava/lang/String;)V

    .line 510
    .end local v4    # "e":Ljava/io/IOException;
    :cond_1
    :goto_3
    throw v3

    .line 516
    .end local v1    # "baos":Ljava/io/ByteArrayOutputStream;
    .end local v2    # "oos":Ljava/io/ObjectOutputStream;
    :cond_2
    const/4 v0, 0x0

    .line 517
    .restart local v0    # "filterBytes":[B
    const/4 v1, 0x0

    .line 521
    .local v1, "feederBufferSize":I
    :goto_4
    invoke-virtual {p0}, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->wireFormatSize()I

    move-result v2

    add-int/lit8 v2, v2, 0x4

    add-int/2addr v2, v1

    .line 522
    .local v2, "bodySize":I
    nop

    .line 523
    invoke-virtual {p0, v2}, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->allocateInitializedBuffer(I)Ljava/nio/ByteBuffer;

    move-result-object v3

    .line 525
    .local v3, "messageBuffer":Ljava/nio/ByteBuffer;
    iget-object v4, p0, Lcom/sleepycat/je/rep/stream/BaseProtocol$StartStream;->vlsn:Lcom/sleepycat/je/utilint/VLSN;

    invoke-virtual {v4}, Lcom/sleepycat/je/utilint/VLSN;->getSequence()J

    move-result-wide v4

    invoke-static {v3, v4, v5}, Lcom/sleepycat/je/log/LogUtils;->writeLong(Ljava/nio/ByteBuffer;J)V

    .line 527
    invoke-static {v3, v1}, Lcom/sleepycat/je/log/LogUtils;->writeInt(Ljava/nio/ByteBuffer;I)V

    .line 529
    if-lez v1, :cond_3

    .line 530
    invoke-static {v3, v0}, Lcom/sleepycat/je/log/LogUtils;->writeBytesNoLength(Ljava/nio/ByteBuffer;[B)V

    .line 532
    :cond_3
    invoke-virtual {v3}, Ljava/nio/ByteBuffer;->flip()Ljava/nio/Buffer;

    .line 533
    return-object v3
.end method
