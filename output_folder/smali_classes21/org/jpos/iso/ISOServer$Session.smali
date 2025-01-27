.class public Lorg/jpos/iso/ISOServer$Session;
.super Ljava/lang/Object;
.source "ISOServer.java"

# interfaces
.implements Ljava/lang/Runnable;
.implements Lorg/jpos/util/LogSource;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/iso/ISOServer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Session"
.end annotation


# instance fields
.field channel:Lorg/jpos/iso/ServerChannel;

.field realm:Ljava/lang/String;

.field final synthetic this$0:Lorg/jpos/iso/ISOServer;


# direct methods
.method protected constructor <init>(Lorg/jpos/iso/ISOServer;Lorg/jpos/iso/ServerChannel;)V
    .locals 2
    .param p1, "this$0"    # Lorg/jpos/iso/ISOServer;
    .param p2, "channel"    # Lorg/jpos/iso/ServerChannel;

    .line 310
    iput-object p1, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 311
    iput-object p2, p0, Lorg/jpos/iso/ISOServer$Session;->channel:Lorg/jpos/iso/ServerChannel;

    .line 312
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/jpos/iso/ISOServer;->getRealm()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".session"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/ISOServer$Session;->realm:Ljava/lang/String;

    .line 313
    return-void
.end method


# virtual methods
.method public checkPermission(Ljava/net/Socket;Lorg/jpos/util/LogEvent;)V
    .locals 7
    .param p1, "socket"    # Ljava/net/Socket;
    .param p2, "evt"    # Lorg/jpos/util/LogEvent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 404
    iget-object v0, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    invoke-static {v0}, Lorg/jpos/iso/ISOServer;->access$300(Lorg/jpos/iso/ISOServer;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    invoke-static {v0}, Lorg/jpos/iso/ISOServer;->access$400(Lorg/jpos/iso/ISOServer;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    invoke-static {v0}, Lorg/jpos/iso/ISOServer;->access$500(Lorg/jpos/iso/ISOServer;)Ljava/util/List;

    move-result-object v0

    if-nez v0, :cond_0

    .line 405
    return-void

    .line 407
    :cond_0
    invoke-virtual {p1}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v0

    invoke-virtual {v0}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v0

    .line 410
    .local v0, "ip":Ljava/lang/String;
    iget-object v1, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    invoke-static {v1}, Lorg/jpos/iso/ISOServer;->access$300(Lorg/jpos/iso/ISOServer;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 411
    .local v1, "specificAllow":Ljava/lang/Boolean;
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    const-string v3, "access granted, ip="

    if-ne v1, v2, :cond_1

    .line 412
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 413
    return-void

    .line 415
    :cond_1
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    const-string v4, "access denied, ip="

    if-eq v1, v2, :cond_6

    .line 420
    iget-object v2, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    invoke-static {v2}, Lorg/jpos/iso/ISOServer;->access$500(Lorg/jpos/iso/ISOServer;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_3

    .line 421
    iget-object v2, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    invoke-static {v2}, Lorg/jpos/iso/ISOServer;->access$500(Lorg/jpos/iso/ISOServer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 422
    .local v5, "wdeny":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 425
    .end local v5    # "wdeny":Ljava/lang/String;
    goto :goto_0

    .line 423
    .restart local v5    # "wdeny":Ljava/lang/String;
    :cond_2
    new-instance v2, Lorg/jpos/iso/ISOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 427
    .end local v5    # "wdeny":Ljava/lang/String;
    :cond_3
    iget-object v2, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    invoke-static {v2}, Lorg/jpos/iso/ISOServer;->access$400(Lorg/jpos/iso/ISOServer;)Ljava/util/List;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 428
    iget-object v2, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    invoke-static {v2}, Lorg/jpos/iso/ISOServer;->access$400(Lorg/jpos/iso/ISOServer;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 429
    .local v5, "wallow":Ljava/lang/String;
    invoke-virtual {v0, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 430
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 431
    return-void

    .line 433
    .end local v5    # "wallow":Ljava/lang/String;
    :cond_4
    goto :goto_1

    .line 438
    :cond_5
    sget-object v2, Lorg/jpos/iso/ISOServer$2;->$SwitchMap$org$jpos$iso$ISOServer$PermLogPolicy:[I

    iget-object v5, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    invoke-static {v5}, Lorg/jpos/iso/ISOServer;->access$600(Lorg/jpos/iso/ISOServer;)Lorg/jpos/iso/ISOServer$PermLogPolicy;

    move-result-object v5

    invoke-virtual {v5}, Lorg/jpos/iso/ISOServer$PermLogPolicy;->ordinal()I

    move-result v5

    aget v2, v2, v5

    packed-switch v2, :pswitch_data_0

    goto :goto_2

    .line 449
    :pswitch_0
    new-instance v2, Lorg/jpos/iso/ISOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " (WARNING: the IP did not match any rules!)"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 444
    :pswitch_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 445
    goto :goto_2

    .line 440
    :pswitch_2
    new-instance v2, Lorg/jpos/iso/ISOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 459
    :goto_2
    return-void

    .line 416
    :cond_6
    new-instance v2, Lorg/jpos/iso/ISOException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/jpos/iso/ISOException;-><init>(Ljava/lang/String;)V

    throw v2

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getLogger()Lorg/jpos/util/Logger;
    .locals 1

    .line 397
    iget-object v0, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    invoke-virtual {v0}, Lorg/jpos/iso/ISOServer;->getLogger()Lorg/jpos/util/Logger;

    move-result-object v0

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 393
    iget-object v0, p0, Lorg/jpos/iso/ISOServer$Session;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public run()V
    .locals 7

    .line 316
    const-string v0, "session-error"

    iget-object v1, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    invoke-static {v1}, Lorg/jpos/iso/ISOServer;->access$200(Lorg/jpos/iso/ISOServer;)V

    .line 317
    iget-object v1, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    invoke-virtual {v1}, Lorg/jpos/iso/ISOServer;->notifyObservers()V

    .line 318
    iget-object v1, p0, Lorg/jpos/iso/ISOServer$Session;->channel:Lorg/jpos/iso/ServerChannel;

    instance-of v1, v1, Lorg/jpos/iso/BaseChannel;

    if-eqz v1, :cond_0

    .line 319
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "session-start"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 320
    .local v1, "ev":Lorg/jpos/util/LogEvent;
    iget-object v2, p0, Lorg/jpos/iso/ISOServer$Session;->channel:Lorg/jpos/iso/ServerChannel;

    check-cast v2, Lorg/jpos/iso/BaseChannel;

    invoke-virtual {v2}, Lorg/jpos/iso/BaseChannel;->getSocket()Ljava/net/Socket;

    move-result-object v2

    .line 321
    .local v2, "socket":Ljava/net/Socket;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lorg/jpos/iso/ISOServer$Session;->realm:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v2}, Ljava/net/Socket;->getInetAddress()Ljava/net/InetAddress;

    move-result-object v4

    invoke-virtual {v4}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 322
    invoke-virtual {v2}, Ljava/net/Socket;->getPort()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lorg/jpos/iso/ISOServer$Session;->realm:Ljava/lang/String;

    .line 324
    :try_start_0
    invoke-virtual {p0, v2, v1}, Lorg/jpos/iso/ISOServer$Session;->checkPermission(Ljava/net/Socket;Lorg/jpos/util/LogEvent;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 338
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 339
    goto :goto_2

    .line 338
    :catchall_0
    move-exception v0

    goto :goto_1

    .line 325
    :catch_0
    move-exception v0

    .line 327
    .local v0, "e":Lorg/jpos/iso/ISOException;
    :try_start_1
    new-instance v3, Ljava/util/Random;

    invoke-direct {v3}, Ljava/util/Random;-><init>()V

    const/16 v4, 0xfa0

    invoke-virtual {v3, v4}, Ljava/util/Random;->nextInt(I)I

    move-result v3

    add-int/lit16 v3, v3, 0x3e8

    .line 328
    .local v3, "delay":I
    invoke-virtual {v0}, Lorg/jpos/iso/ISOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 329
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "delay="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 330
    int-to-long v4, v3

    invoke-static {v4, v5}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    .line 331
    invoke-virtual {v2}, Ljava/net/Socket;->close()V

    .line 332
    iget-object v4, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    new-instance v5, Lorg/jpos/iso/ISOServerShutdownEvent;

    iget-object v6, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    invoke-direct {v5, v6}, Lorg/jpos/iso/ISOServerShutdownEvent;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Lorg/jpos/iso/ISOServer;->fireEvent(Ljava/util/EventObject;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 335
    .end local v3    # "delay":I
    goto :goto_0

    .line 333
    :catch_1
    move-exception v3

    .line 334
    .local v3, "ioe":Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v1, v3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 338
    .end local v3    # "ioe":Ljava/io/IOException;
    :goto_0
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 336
    return-void

    .line 338
    .end local v0    # "e":Lorg/jpos/iso/ISOException;
    :goto_1
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 339
    throw v0

    .line 344
    .end local v1    # "ev":Lorg/jpos/util/LogEvent;
    .end local v2    # "socket":Ljava/net/Socket;
    :cond_0
    :goto_2
    :try_start_3
    iget-object v1, p0, Lorg/jpos/iso/ISOServer$Session;->channel:Lorg/jpos/iso/ServerChannel;

    invoke-interface {v1}, Lorg/jpos/iso/ServerChannel;->receive()Lorg/jpos/iso/ISOMsg;

    move-result-object v1

    .line 345
    .local v1, "m":Lorg/jpos/iso/ISOMsg;
    iget-object v2, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Lorg/jpos/iso/ISOServer;->lastTxn:J

    .line 346
    iget-object v2, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    iget-object v2, v2, Lorg/jpos/iso/ISOServer;->listeners:Ljava/util/Collection;

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .line 347
    .local v2, "iter":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 348
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/jpos/iso/ISORequestListener;

    iget-object v4, p0, Lorg/jpos/iso/ISOServer$Session;->channel:Lorg/jpos/iso/ServerChannel;

    .line 349
    invoke-interface {v3, v4, v1}, Lorg/jpos/iso/ISORequestListener;->process(Lorg/jpos/iso/ISOSource;Lorg/jpos/iso/ISOMsg;)Z

    move-result v3
    :try_end_3
    .catch Lorg/jpos/iso/ISOFilter$VetoException; {:try_start_3 .. :try_end_3} :catch_6
    .catch Lorg/jpos/iso/ISOException; {:try_start_3 .. :try_end_3} :catch_5
    .catch Ljava/io/EOFException; {:try_start_3 .. :try_end_3} :catch_4
    .catch Ljava/net/SocketException; {:try_start_3 .. :try_end_3} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_3 .. :try_end_3} :catch_2
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-eqz v3, :cond_1

    .line 350
    goto :goto_3

    .line 376
    .end local v1    # "m":Lorg/jpos/iso/ISOMsg;
    .end local v2    # "iter":Ljava/util/Iterator;
    :catchall_1
    move-exception v1

    goto :goto_4

    .line 373
    :catch_2
    move-exception v1

    goto :goto_5

    .line 369
    :catch_3
    move-exception v1

    goto :goto_5

    .line 366
    :catch_4
    move-exception v1

    goto :goto_5

    .line 357
    :catch_5
    move-exception v1

    .line 358
    .local v1, "e":Lorg/jpos/iso/ISOException;
    :try_start_4
    iget-object v2, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    iget-boolean v2, v2, Lorg/jpos/iso/ISOServer;->ignoreISOExceptions:Z

    if-eqz v2, :cond_2

    .line 359
    new-instance v2, Lorg/jpos/util/LogEvent;

    const-string v3, "ISOException"

    invoke-virtual {v1}, Lorg/jpos/iso/ISOException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    goto :goto_3

    .line 362
    :cond_2
    throw v1

    .line 354
    .end local v1    # "e":Lorg/jpos/iso/ISOException;
    :catch_6
    move-exception v1

    .line 355
    .local v1, "e":Lorg/jpos/iso/ISOFilter$VetoException;
    new-instance v2, Lorg/jpos/util/LogEvent;

    const-string v3, "VetoException"

    invoke-virtual {v1}, Lorg/jpos/iso/ISOFilter$VetoException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, p0, v3, v4}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V
    :try_end_4
    .catch Ljava/io/EOFException; {:try_start_4 .. :try_end_4} :catch_4
    .catch Ljava/net/SocketException; {:try_start_4 .. :try_end_4} :catch_3
    .catch Ljava/io/InterruptedIOException; {:try_start_4 .. :try_end_4} :catch_2
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    .line 364
    .end local v1    # "e":Lorg/jpos/iso/ISOFilter$VetoException;
    :cond_3
    :goto_3
    goto :goto_2

    .line 377
    .local v1, "e":Ljava/lang/Throwable;
    :goto_4
    new-instance v2, Lorg/jpos/util/LogEvent;

    invoke-direct {v2, p0, v0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    goto :goto_6

    .line 378
    .end local v1    # "e":Ljava/lang/Throwable;
    :goto_5
    nop

    .line 380
    :goto_6
    :try_start_5
    iget-object v1, p0, Lorg/jpos/iso/ISOServer$Session;->channel:Lorg/jpos/iso/ServerChannel;

    invoke-interface {v1}, Lorg/jpos/iso/ServerChannel;->disconnect()V

    .line 381
    iget-object v1, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    new-instance v2, Lorg/jpos/iso/ISOServerClientDisconnectEvent;

    iget-object v3, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    iget-object v4, p0, Lorg/jpos/iso/ISOServer$Session;->channel:Lorg/jpos/iso/ServerChannel;

    invoke-direct {v2, v3, v4}, Lorg/jpos/iso/ISOServerClientDisconnectEvent;-><init>(Ljava/lang/Object;Lorg/jpos/iso/ISOChannel;)V

    invoke-virtual {v1, v2}, Lorg/jpos/iso/ISOServer;->fireEvent(Ljava/util/EventObject;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_7

    .line 385
    goto :goto_7

    .line 382
    :catch_7
    move-exception v1

    .line 383
    .local v1, "ex":Ljava/io/IOException;
    new-instance v2, Lorg/jpos/util/LogEvent;

    invoke-direct {v2, p0, v0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;Ljava/lang/Object;)V

    invoke-static {v2}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 384
    iget-object v0, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    new-instance v2, Lorg/jpos/iso/ISOServerClientDisconnectEvent;

    iget-object v3, p0, Lorg/jpos/iso/ISOServer$Session;->this$0:Lorg/jpos/iso/ISOServer;

    iget-object v4, p0, Lorg/jpos/iso/ISOServer$Session;->channel:Lorg/jpos/iso/ServerChannel;

    invoke-direct {v2, v3, v4}, Lorg/jpos/iso/ISOServerClientDisconnectEvent;-><init>(Ljava/lang/Object;Lorg/jpos/iso/ISOChannel;)V

    invoke-virtual {v0, v2}, Lorg/jpos/iso/ISOServer;->fireEvent(Ljava/util/EventObject;)V

    .line 386
    .end local v1    # "ex":Ljava/io/IOException;
    :goto_7
    new-instance v0, Lorg/jpos/util/LogEvent;

    const-string v1, "session-end"

    invoke-direct {v0, p0, v1}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 387
    return-void
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 390
    return-void
.end method
