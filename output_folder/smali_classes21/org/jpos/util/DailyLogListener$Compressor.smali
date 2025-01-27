.class public Lorg/jpos/util/DailyLogListener$Compressor;
.super Ljava/lang/Object;
.source "DailyLogListener.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/util/DailyLogListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Compressor"
.end annotation


# instance fields
.field f:Ljava/io/File;

.field final synthetic this$0:Lorg/jpos/util/DailyLogListener;


# direct methods
.method public constructor <init>(Lorg/jpos/util/DailyLogListener;Ljava/io/File;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/util/DailyLogListener;
    .param p2, "f"    # Ljava/io/File;

    .line 410
    iput-object p1, p0, Lorg/jpos/util/DailyLogListener$Compressor;->this$0:Lorg/jpos/util/DailyLogListener;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 411
    iput-object p2, p0, Lorg/jpos/util/DailyLogListener$Compressor;->f:Ljava/io/File;

    .line 412
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 415
    const-string v0, "error closing files"

    const/4 v1, 0x0

    .line 416
    .local v1, "os":Ljava/io/OutputStream;
    const/4 v2, 0x0

    .line 417
    .local v2, "is":Ljava/io/InputStream;
    const/4 v3, 0x0

    .line 419
    .local v3, "tmp":Ljava/io/File;
    :try_start_0
    iget-object v4, p0, Lorg/jpos/util/DailyLogListener$Compressor;->f:Ljava/io/File;

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    const-string v5, ".tmp"

    iget-object v6, p0, Lorg/jpos/util/DailyLogListener$Compressor;->f:Ljava/io/File;

    invoke-virtual {v6}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v6

    invoke-static {v4, v5, v6}, Ljava/io/File;->createTempFile(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;)Ljava/io/File;

    move-result-object v4

    move-object v3, v4

    .line 420
    iget-object v4, p0, Lorg/jpos/util/DailyLogListener$Compressor;->this$0:Lorg/jpos/util/DailyLogListener;

    invoke-virtual {v4, v3}, Lorg/jpos/util/DailyLogListener;->getCompressedOutputStream(Ljava/io/File;)Ljava/io/OutputStream;

    move-result-object v4

    move-object v1, v4

    .line 421
    new-instance v4, Ljava/io/BufferedInputStream;

    new-instance v5, Ljava/io/FileInputStream;

    iget-object v6, p0, Lorg/jpos/util/DailyLogListener$Compressor;->f:Ljava/io/File;

    invoke-direct {v5, v6}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v4, v5}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V

    move-object v2, v4

    .line 422
    iget-object v4, p0, Lorg/jpos/util/DailyLogListener$Compressor;->this$0:Lorg/jpos/util/DailyLogListener;

    invoke-virtual {v4}, Lorg/jpos/util/DailyLogListener;->getCompressionBufferSize()I

    move-result v4

    new-array v4, v4, [B

    .line 425
    .local v4, "buff":[B
    :cond_0
    invoke-virtual {v2, v4}, Ljava/io/InputStream;->read([B)I

    move-result v5

    .line 426
    .local v5, "read":I
    if-lez v5, :cond_1

    .line 427
    const/4 v6, 0x0

    invoke-virtual {v1, v4, v6, v5}, Ljava/io/OutputStream;->write([BII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 428
    :cond_1
    if-gtz v5, :cond_0

    .line 434
    .end local v4    # "buff":[B
    .end local v5    # "read":I
    nop

    .line 435
    :try_start_1
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 436
    if-eqz v1, :cond_2

    .line 437
    iget-object v4, p0, Lorg/jpos/util/DailyLogListener$Compressor;->this$0:Lorg/jpos/util/DailyLogListener;

    invoke-virtual {v4, v1}, Lorg/jpos/util/DailyLogListener;->closeCompressedOutputStream(Ljava/io/OutputStream;)V

    .line 438
    :cond_2
    iget-object v4, p0, Lorg/jpos/util/DailyLogListener$Compressor;->f:Ljava/io/File;

    if-eqz v4, :cond_3

    .line 439
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 440
    if-eqz v3, :cond_3

    .line 441
    iget-object v4, p0, Lorg/jpos/util/DailyLogListener$Compressor;->f:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 445
    :cond_3
    :goto_0
    goto :goto_1

    .line 443
    :catchall_0
    move-exception v4

    .line 444
    .local v4, "ex":Ljava/lang/Throwable;
    iget-object v5, p0, Lorg/jpos/util/DailyLogListener$Compressor;->this$0:Lorg/jpos/util/DailyLogListener;

    invoke-virtual {v5, v0, v4}, Lorg/jpos/util/DailyLogListener;->logDebugEx(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    .end local v4    # "ex":Ljava/lang/Throwable;
    goto :goto_1

    .line 430
    :catchall_1
    move-exception v4

    .line 431
    .restart local v4    # "ex":Ljava/lang/Throwable;
    :try_start_2
    iget-object v5, p0, Lorg/jpos/util/DailyLogListener$Compressor;->this$0:Lorg/jpos/util/DailyLogListener;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "error compressing file "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/jpos/util/DailyLogListener$Compressor;->f:Ljava/io/File;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6, v4}, Lorg/jpos/util/DailyLogListener;->logDebugEx(Ljava/lang/String;Ljava/lang/Throwable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 434
    .end local v4    # "ex":Ljava/lang/Throwable;
    if-eqz v2, :cond_4

    .line 435
    :try_start_3
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    .line 436
    :cond_4
    if-eqz v1, :cond_5

    .line 437
    iget-object v4, p0, Lorg/jpos/util/DailyLogListener$Compressor;->this$0:Lorg/jpos/util/DailyLogListener;

    invoke-virtual {v4, v1}, Lorg/jpos/util/DailyLogListener;->closeCompressedOutputStream(Ljava/io/OutputStream;)V

    .line 438
    :cond_5
    iget-object v4, p0, Lorg/jpos/util/DailyLogListener$Compressor;->f:Ljava/io/File;

    if-eqz v4, :cond_3

    .line 439
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    .line 440
    if-eqz v3, :cond_3

    .line 441
    iget-object v4, p0, Lorg/jpos/util/DailyLogListener$Compressor;->f:Ljava/io/File;

    invoke-virtual {v3, v4}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_0

    .line 449
    :goto_1
    return-void

    .line 433
    :catchall_2
    move-exception v4

    .line 434
    if-eqz v2, :cond_6

    .line 435
    :try_start_4
    invoke-virtual {v2}, Ljava/io/InputStream;->close()V

    goto :goto_2

    .line 443
    :catchall_3
    move-exception v5

    goto :goto_3

    .line 436
    :cond_6
    :goto_2
    if-eqz v1, :cond_7

    .line 437
    iget-object v5, p0, Lorg/jpos/util/DailyLogListener$Compressor;->this$0:Lorg/jpos/util/DailyLogListener;

    invoke-virtual {v5, v1}, Lorg/jpos/util/DailyLogListener;->closeCompressedOutputStream(Ljava/io/OutputStream;)V

    .line 438
    :cond_7
    iget-object v5, p0, Lorg/jpos/util/DailyLogListener$Compressor;->f:Ljava/io/File;

    if-eqz v5, :cond_8

    .line 439
    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    .line 440
    if-eqz v3, :cond_8

    .line 441
    iget-object v5, p0, Lorg/jpos/util/DailyLogListener$Compressor;->f:Ljava/io/File;

    invoke-virtual {v3, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    .line 445
    :cond_8
    goto :goto_4

    .line 444
    .local v5, "ex":Ljava/lang/Throwable;
    :goto_3
    iget-object v6, p0, Lorg/jpos/util/DailyLogListener$Compressor;->this$0:Lorg/jpos/util/DailyLogListener;

    invoke-virtual {v6, v0, v5}, Lorg/jpos/util/DailyLogListener;->logDebugEx(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 447
    .end local v5    # "ex":Ljava/lang/Throwable;
    :goto_4
    throw v4
.end method
