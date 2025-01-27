.class public Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;
.super Ljava/lang/Object;
.source "MultiSessionChannelAdaptor.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Receiver"
.end annotation


# instance fields
.field channel:Lorg/jpos/iso/ISOChannel;

.field slot:I

.field final synthetic this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;


# direct methods
.method public constructor <init>(Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;I)V
    .locals 1
    .param p1, "this$0"    # Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;
    .param p2, "slot"    # I

    .line 121
    iput-object p1, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iget-object v0, p1, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->channels:[Lorg/jpos/iso/ISOChannel;

    aget-object v0, v0, p2

    iput-object v0, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->channel:Lorg/jpos/iso/ISOChannel;

    .line 124
    iput p2, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->slot:I

    .line 125
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 127
    const-string v0, "channel-receiver-"

    iget v1, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->slot:I

    mul-int/lit8 v1, v1, 0xa

    int-to-long v1, v1

    invoke-static {v1, v2}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    .line 128
    :goto_0
    iget-object v1, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    invoke-virtual {v1}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->running()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 130
    const-wide/16 v1, 0x3e8

    :try_start_0
    iget-object v3, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->channel:Lorg/jpos/iso/ISOChannel;

    invoke-interface {v3}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 131
    iget-object v3, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget v4, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->slot:I

    invoke-static {v3, v4}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->access$300(Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;I)V

    .line 132
    iget-object v3, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->channel:Lorg/jpos/iso/ISOChannel;

    invoke-interface {v3}, Lorg/jpos/iso/ISOChannel;->isConnected()Z

    move-result v3

    if-nez v3, :cond_0

    .line 133
    iget-object v3, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-wide v3, v3, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->delay:J

    invoke-static {v3, v4}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    .line 134
    goto :goto_0

    .line 137
    :cond_0
    iget-object v3, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->channel:Lorg/jpos/iso/ISOChannel;

    invoke-interface {v3}, Lorg/jpos/iso/ISOChannel;->receive()Lorg/jpos/iso/ISOMsg;

    move-result-object v3

    .line 138
    .local v3, "m":Lorg/jpos/iso/ISOMsg;
    iget-object v4, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget v5, v4, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->rx:I

    add-int/lit8 v5, v5, 0x1

    iput v5, v4, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->rx:I

    .line 139
    iget-object v4, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    iput-wide v5, v4, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->lastTxn:J

    .line 140
    iget-object v4, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-wide v4, v4, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->timeout:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_1

    .line 141
    iget-object v4, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-object v4, v4, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v5, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-object v5, v5, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->out:Ljava/lang/String;

    iget-object v6, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-wide v6, v6, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->timeout:J

    invoke-interface {v4, v5, v3, v6, v7}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;J)V

    goto :goto_1

    .line 143
    :cond_1
    iget-object v4, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-object v4, v4, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v5, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-object v5, v5, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->out:Ljava/lang/String;

    invoke-interface {v4, v5, v3}, Lorg/jpos/space/Space;->out(Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 152
    .end local v3    # "m":Lorg/jpos/iso/ISOMsg;
    :catch_0
    move-exception v3

    .line 153
    .local v3, "e":Ljava/lang/Exception;
    iget-object v4, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->running()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 154
    iget-object v4, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-object v6, v6, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->out:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 155
    iget-object v4, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-object v5, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->channel:Lorg/jpos/iso/ISOChannel;

    invoke-static {v4, v5}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->access$100(Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;Lorg/jpos/iso/ISOChannel;)V

    .line 156
    invoke-static {v1, v2}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    goto :goto_1

    .line 144
    .end local v3    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 145
    .local v3, "e":Lorg/jpos/iso/ISOException;
    iget-object v4, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->running()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 146
    iget-object v4, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-object v6, v6, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->out:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 147
    iget-object v4, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-boolean v4, v4, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->ignoreISOExceptions:Z

    if-nez v4, :cond_2

    .line 148
    iget-object v4, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-object v5, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Receiver;->channel:Lorg/jpos/iso/ISOChannel;

    invoke-static {v4, v5}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->access$100(Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;Lorg/jpos/iso/ISOChannel;)V

    .line 150
    :cond_2
    invoke-static {v1, v2}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    .line 158
    .end local v3    # "e":Lorg/jpos/iso/ISOException;
    :cond_3
    :goto_1
    goto/16 :goto_0

    .line 160
    :cond_4
    return-void
.end method
