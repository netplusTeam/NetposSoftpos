.class public Lorg/jpos/iso/Connector$Process;
.super Ljava/lang/Object;
.source "Connector.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jpos/iso/Connector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "Process"
.end annotation


# instance fields
.field m:Lorg/jpos/iso/ISOMsg;

.field source:Lorg/jpos/iso/ISOSource;

.field final synthetic this$0:Lorg/jpos/iso/Connector;


# direct methods
.method constructor <init>(Lorg/jpos/iso/Connector;Lorg/jpos/iso/ISOSource;Lorg/jpos/iso/ISOMsg;)V
    .locals 0
    .param p1, "this$0"    # Lorg/jpos/iso/Connector;
    .param p2, "source"    # Lorg/jpos/iso/ISOSource;
    .param p3, "m"    # Lorg/jpos/iso/ISOMsg;

    .line 91
    iput-object p1, p0, Lorg/jpos/iso/Connector$Process;->this$0:Lorg/jpos/iso/Connector;

    .line 92
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 93
    iput-object p2, p0, Lorg/jpos/iso/Connector$Process;->source:Lorg/jpos/iso/ISOSource;

    .line 94
    iput-object p3, p0, Lorg/jpos/iso/Connector$Process;->m:Lorg/jpos/iso/ISOMsg;

    .line 95
    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 97
    new-instance v0, Lorg/jpos/util/LogEvent;

    iget-object v1, p0, Lorg/jpos/iso/Connector$Process;->this$0:Lorg/jpos/iso/Connector;

    const-string v2, "connector-request-listener"

    invoke-direct {v0, v1, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 100
    .local v0, "evt":Lorg/jpos/util/LogEvent;
    :try_start_0
    iget-object v1, p0, Lorg/jpos/iso/Connector$Process;->m:Lorg/jpos/iso/ISOMsg;

    invoke-virtual {v1}, Lorg/jpos/iso/ISOMsg;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/jpos/iso/ISOMsg;

    .line 101
    .local v1, "c":Lorg/jpos/iso/ISOMsg;
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 102
    iget-object v2, p0, Lorg/jpos/iso/Connector$Process;->this$0:Lorg/jpos/iso/Connector;

    iget-object v2, v2, Lorg/jpos/iso/Connector;->muxName:Ljava/lang/String;

    if-eqz v2, :cond_1

    .line 103
    iget-object v2, p0, Lorg/jpos/iso/Connector$Process;->this$0:Lorg/jpos/iso/Connector;

    iget-object v2, v2, Lorg/jpos/iso/Connector;->muxName:Ljava/lang/String;

    invoke-static {v2}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/iso/MUX;

    .line 104
    .local v2, "destMux":Lorg/jpos/iso/MUX;
    iget-object v3, p0, Lorg/jpos/iso/Connector$Process;->this$0:Lorg/jpos/iso/Connector;

    iget v3, v3, Lorg/jpos/iso/Connector;->timeout:I

    int-to-long v3, v3

    invoke-interface {v2, v1, v3, v4}, Lorg/jpos/iso/MUX;->request(Lorg/jpos/iso/ISOMsg;J)Lorg/jpos/iso/ISOMsg;

    move-result-object v3

    .line 105
    .local v3, "response":Lorg/jpos/iso/ISOMsg;
    if-eqz v3, :cond_2

    .line 106
    iget-object v4, p0, Lorg/jpos/iso/Connector$Process;->this$0:Lorg/jpos/iso/Connector;

    invoke-static {v4}, Lorg/jpos/iso/Connector;->access$000(Lorg/jpos/iso/Connector;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 107
    invoke-virtual {v1}, Lorg/jpos/iso/ISOMsg;->getISOHeader()Lorg/jpos/iso/ISOHeader;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jpos/iso/ISOMsg;->setHeader(Lorg/jpos/iso/ISOHeader;)V

    .line 108
    :cond_0
    iget-object v4, p0, Lorg/jpos/iso/Connector$Process;->source:Lorg/jpos/iso/ISOSource;

    invoke-interface {v4, v3}, Lorg/jpos/iso/ISOSource;->send(Lorg/jpos/iso/ISOMsg;)V

    goto :goto_0

    .line 110
    .end local v2    # "destMux":Lorg/jpos/iso/MUX;
    .end local v3    # "response":Lorg/jpos/iso/ISOMsg;
    :cond_1
    iget-object v2, p0, Lorg/jpos/iso/Connector$Process;->this$0:Lorg/jpos/iso/Connector;

    iget-object v2, v2, Lorg/jpos/iso/Connector;->channelName:Ljava/lang/String;

    if-eqz v2, :cond_2

    .line 111
    iget-object v2, p0, Lorg/jpos/iso/Connector$Process;->this$0:Lorg/jpos/iso/Connector;

    iget-object v2, v2, Lorg/jpos/iso/Connector;->channelName:Ljava/lang/String;

    invoke-static {v2}, Lorg/jpos/util/NameRegistrar;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/jpos/iso/Channel;

    .line 112
    .local v2, "destChannel":Lorg/jpos/iso/Channel;
    invoke-interface {v2, v1}, Lorg/jpos/iso/Channel;->send(Lorg/jpos/iso/ISOMsg;)V
    :try_end_0
    .catch Lorg/jpos/iso/ISOException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lorg/jpos/util/NameRegistrar$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 110
    .end local v2    # "destChannel":Lorg/jpos/iso/Channel;
    :cond_2
    :goto_0
    goto :goto_1

    .line 118
    .end local v1    # "c":Lorg/jpos/iso/ISOMsg;
    :catch_0
    move-exception v1

    .line 119
    .local v1, "e":Lorg/jpos/util/NameRegistrar$NotFoundException;
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    goto :goto_2

    .line 116
    .end local v1    # "e":Lorg/jpos/util/NameRegistrar$NotFoundException;
    :catch_1
    move-exception v1

    .line 117
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .end local v1    # "e":Ljava/io/IOException;
    goto :goto_1

    .line 114
    :catch_2
    move-exception v1

    .line 115
    .local v1, "e":Lorg/jpos/iso/ISOException;
    invoke-virtual {v0, v1}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 120
    .end local v1    # "e":Lorg/jpos/iso/ISOException;
    :goto_1
    nop

    .line 121
    :goto_2
    invoke-static {v0}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 122
    return-void
.end method
