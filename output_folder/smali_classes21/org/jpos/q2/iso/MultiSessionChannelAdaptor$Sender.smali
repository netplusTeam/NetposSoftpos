.class public Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;
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
    name = "Sender"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;


# direct methods
.method public constructor <init>(Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    .line 82
    iput-object p1, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    .line 83
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 84
    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 86
    const-string v0, "channel-sender-"

    :goto_0
    iget-object v1, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    invoke-virtual {v1}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->running()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 87
    const/4 v1, 0x0

    .line 89
    .local v1, "channel":Lorg/jpos/iso/ISOChannel;
    const-wide/16 v2, 0x3e8

    :try_start_0
    iget-object v4, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    invoke-virtual {v4}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->running()Z

    move-result v4

    if-nez v4, :cond_0

    .line 90
    goto/16 :goto_3

    .line 91
    :cond_0
    iget-object v4, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-object v4, v4, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v5, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-object v5, v5, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->ready:Ljava/lang/String;

    iget-object v6, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-wide v6, v6, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->delay:J

    invoke-interface {v4, v5, v6, v7}, Lorg/jpos/space/Space;->rd(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_1

    .line 92
    goto :goto_0

    .line 93
    :cond_1
    iget-object v4, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-object v4, v4, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->sp:Lorg/jpos/space/Space;

    iget-object v5, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-object v5, v5, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->in:Ljava/lang/String;

    iget-object v6, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-wide v6, v6, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->delay:J

    invoke-interface {v4, v5, v6, v7}, Lorg/jpos/space/Space;->in(Ljava/lang/Object;J)Ljava/lang/Object;

    move-result-object v4

    .line 94
    .local v4, "o":Ljava/lang/Object;
    iget-object v5, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    invoke-static {v5}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->access$000(Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;)Lorg/jpos/iso/ISOChannel;

    move-result-object v5

    move-object v1, v5

    .line 96
    instance-of v5, v4, Lorg/jpos/iso/ISOMsg;

    if-eqz v5, :cond_3

    if-eqz v1, :cond_3

    .line 97
    move-object v5, v4

    check-cast v5, Lorg/jpos/iso/ISOMsg;

    invoke-interface {v1, v5}, Lorg/jpos/iso/ISOChannel;->send(Lorg/jpos/iso/ISOMsg;)V

    .line 98
    iget-object v5, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget v6, v5, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->tx:I

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->tx:I
    :try_end_0
    .catch Lorg/jpos/iso/ISOFilter$VetoException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_1

    .line 108
    .end local v4    # "o":Ljava/lang/Object;
    :catch_0
    move-exception v4

    .line 109
    .local v4, "e":Ljava/lang/Exception;
    iget-object v5, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    invoke-virtual {v5}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-object v7, v7, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->in:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 110
    iget-object v5, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    invoke-static {v5, v1}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->access$100(Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;Lorg/jpos/iso/ISOChannel;)V

    .line 111
    invoke-static {v2, v3}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    goto :goto_2

    .line 102
    .end local v4    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v4

    .line 103
    .local v4, "e":Lorg/jpos/iso/ISOException;
    iget-object v5, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    invoke-virtual {v5}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-object v7, v7, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->in:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4}, Lorg/jpos/iso/ISOException;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 104
    iget-object v5, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-boolean v5, v5, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->ignoreISOExceptions:Z

    if-nez v5, :cond_2

    .line 105
    iget-object v5, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    invoke-static {v5, v1}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->access$100(Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;Lorg/jpos/iso/ISOChannel;)V

    .line 107
    :cond_2
    invoke-static {v2, v3}, Lorg/jpos/iso/ISOUtil;->sleep(J)V

    .end local v4    # "e":Lorg/jpos/iso/ISOException;
    goto :goto_1

    .line 100
    :catch_2
    move-exception v2

    .line 101
    .local v2, "e":Lorg/jpos/iso/ISOFilter$VetoException;
    iget-object v3, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    invoke-virtual {v3}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->getLog()Lorg/jpos/util/Log;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    iget-object v5, v5, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->in:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v2}, Lorg/jpos/iso/ISOFilter$VetoException;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Lorg/jpos/util/Log;->warn(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 112
    .end local v2    # "e":Lorg/jpos/iso/ISOFilter$VetoException;
    :cond_3
    :goto_1
    nop

    .line 113
    .end local v1    # "channel":Lorg/jpos/iso/ISOChannel;
    :goto_2
    goto/16 :goto_0

    .line 114
    :cond_4
    :goto_3
    iget-object v0, p0, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor$Sender;->this$0:Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;

    invoke-static {v0}, Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;->access$200(Lorg/jpos/q2/iso/MultiSessionChannelAdaptor;)V

    .line 115
    return-void
.end method
