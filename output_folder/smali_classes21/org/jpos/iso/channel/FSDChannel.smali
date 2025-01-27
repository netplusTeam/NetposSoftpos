.class public Lorg/jpos/iso/channel/FSDChannel;
.super Lorg/jpos/iso/channel/NACChannel;
.source "FSDChannel.java"


# instance fields
.field charset:Ljava/nio/charset/Charset;

.field schema:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/jpos/iso/channel/NACChannel;-><init>()V

    return-void
.end method


# virtual methods
.method public createMsg()Lorg/jpos/iso/ISOMsg;
    .locals 2

    .line 40
    new-instance v0, Lorg/jpos/util/FSDMsg;

    iget-object v1, p0, Lorg/jpos/iso/channel/FSDChannel;->schema:Ljava/lang/String;

    invoke-direct {v0, v1}, Lorg/jpos/util/FSDMsg;-><init>(Ljava/lang/String;)V

    .line 41
    .local v0, "fsdmsg":Lorg/jpos/util/FSDMsg;
    iget-object v1, p0, Lorg/jpos/iso/channel/FSDChannel;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lorg/jpos/util/FSDMsg;->setCharset(Ljava/nio/charset/Charset;)V

    .line 42
    new-instance v1, Lorg/jpos/iso/FSDISOMsg;

    invoke-direct {v1, v0}, Lorg/jpos/iso/FSDISOMsg;-><init>(Lorg/jpos/util/FSDMsg;)V

    return-object v1
.end method

.method protected getMessageLength()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 66
    invoke-super {p0}, Lorg/jpos/iso/channel/NACChannel;->getMessageLength()I

    move-result v0

    .line 67
    .local v0, "len":I
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "fsd-channel-debug"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 68
    .local v1, "evt":Lorg/jpos/util/LogEvent;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "received message length: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 69
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 70
    return v0
.end method

.method public send(Lorg/jpos/iso/ISOMsg;)V
    .locals 2
    .param p1, "m"    # Lorg/jpos/iso/ISOMsg;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lorg/jpos/iso/ISOException;
        }
    .end annotation

    .line 57
    instance-of v0, p1, Lorg/jpos/iso/FSDISOMsg;

    if-eqz v0, :cond_0

    .line 58
    move-object v0, p1

    check-cast v0, Lorg/jpos/iso/FSDISOMsg;

    invoke-virtual {v0}, Lorg/jpos/iso/FSDISOMsg;->getFSDMsg()Lorg/jpos/util/FSDMsg;

    move-result-object v0

    .line 59
    .local v0, "fsd":Lorg/jpos/util/FSDMsg;
    iget-object v1, p0, Lorg/jpos/iso/channel/FSDChannel;->charset:Ljava/nio/charset/Charset;

    invoke-virtual {v0, v1}, Lorg/jpos/util/FSDMsg;->setCharset(Ljava/nio/charset/Charset;)V

    .line 61
    .end local v0    # "fsd":Lorg/jpos/util/FSDMsg;
    :cond_0
    invoke-super {p0, p1}, Lorg/jpos/iso/channel/NACChannel;->send(Lorg/jpos/iso/ISOMsg;)V

    .line 62
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 2
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 49
    invoke-super {p0, p1}, Lorg/jpos/iso/channel/NACChannel;->setConfiguration(Lorg/jpos/core/Configuration;)V

    .line 50
    const-string v0, "schema"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/channel/FSDChannel;->schema:Ljava/lang/String;

    .line 51
    sget-object v0, Lorg/jpos/iso/ISOUtil;->CHARSET:Ljava/nio/charset/Charset;

    invoke-virtual {v0}, Ljava/nio/charset/Charset;->displayName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "charset"

    invoke-interface {p1, v1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/nio/charset/Charset;->forName(Ljava/lang/String;)Ljava/nio/charset/Charset;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/iso/channel/FSDChannel;->charset:Ljava/nio/charset/Charset;

    .line 52
    return-void
.end method
