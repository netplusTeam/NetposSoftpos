.class public Lorg/jpos/tlv/packager/PackagerErrorLogger;
.super Ljava/lang/Object;
.source "PackagerErrorLogger.java"

# interfaces
.implements Lorg/jpos/tlv/packager/PackagerErrorHandler;
.implements Lorg/jpos/core/Configurable;
.implements Lorg/jpos/util/LogSource;


# instance fields
.field private logger:Lorg/jpos/util/Logger;

.field private realm:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 40
    const-string v0, "PACKAGER_ERROR_LOGGER"

    invoke-static {v0}, Lorg/jpos/util/Logger;->getLogger(Ljava/lang/String;)Lorg/jpos/util/Logger;

    move-result-object v0

    iput-object v0, p0, Lorg/jpos/tlv/packager/PackagerErrorLogger;->logger:Lorg/jpos/util/Logger;

    return-void
.end method


# virtual methods
.method public getLogger()Lorg/jpos/util/Logger;
    .locals 1

    .line 55
    iget-object v0, p0, Lorg/jpos/tlv/packager/PackagerErrorLogger;->logger:Lorg/jpos/util/Logger;

    return-object v0
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    .line 50
    iget-object v0, p0, Lorg/jpos/tlv/packager/PackagerErrorLogger;->realm:Ljava/lang/String;

    return-object v0
.end method

.method public handlePackError(Lorg/jpos/iso/ISOComponent;Lorg/jpos/iso/ISOException;)V
    .locals 7
    .param p1, "m"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "e"    # Lorg/jpos/iso/ISOException;

    .line 67
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error packing message:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 68
    .local v0, "sb":Ljava/lang/StringBuilder;
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 69
    .local v1, "baos":Ljava/io/ByteArrayOutputStream;
    new-instance v2, Ljava/io/PrintStream;

    invoke-direct {v2, v1}, Ljava/io/PrintStream;-><init>(Ljava/io/OutputStream;)V

    .line 70
    .local v2, "ps":Ljava/io/PrintStream;
    const-string v3, ""

    invoke-virtual {p1, v2, v3}, Lorg/jpos/iso/ISOComponent;->dump(Ljava/io/PrintStream;Ljava/lang/String;)V

    .line 71
    invoke-virtual {p2}, Lorg/jpos/iso/ISOException;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 72
    const-string v3, "Message dump:\n"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    new-instance v5, Ljava/lang/String;

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 73
    new-instance v3, Lorg/jpos/util/LogEvent;

    const-string v4, "pack-error"

    invoke-direct {v3, p0, v4}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 74
    .local v3, "logEvent":Lorg/jpos/util/LogEvent;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 75
    invoke-virtual {v3, p2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 76
    invoke-static {v3}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 77
    return-void
.end method

.method public handleUnpackError(Lorg/jpos/iso/ISOComponent;[BLorg/jpos/iso/ISOException;)V
    .locals 4
    .param p1, "isoComponent"    # Lorg/jpos/iso/ISOComponent;
    .param p2, "msg"    # [B
    .param p3, "e"    # Lorg/jpos/iso/ISOException;

    .line 81
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Error unpacking message:\n"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 82
    .local v0, "sb":Ljava/lang/StringBuilder;
    invoke-virtual {p3}, Lorg/jpos/iso/ISOException;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 83
    const-string v1, "Raw data:\n"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    new-instance v3, Ljava/lang/String;

    invoke-direct {v3, p2}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 84
    new-instance v1, Lorg/jpos/util/LogEvent;

    const-string v2, "unpack-error"

    invoke-direct {v1, p0, v2}, Lorg/jpos/util/LogEvent;-><init>(Lorg/jpos/util/LogSource;Ljava/lang/String;)V

    .line 85
    .local v1, "logEvent":Lorg/jpos/util/LogEvent;
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 86
    invoke-virtual {v1, p3}, Lorg/jpos/util/LogEvent;->addMessage(Ljava/lang/Object;)V

    .line 87
    invoke-static {v1}, Lorg/jpos/util/Logger;->log(Lorg/jpos/util/LogEvent;)V

    .line 88
    return-void
.end method

.method public setConfiguration(Lorg/jpos/core/Configuration;)V
    .locals 3
    .param p1, "cfg"    # Lorg/jpos/core/Configuration;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/jpos/core/ConfigurationException;
        }
    .end annotation

    .line 60
    const-string v0, "packager-error-logger"

    invoke-interface {p1, v0}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 61
    .local v0, "loggerName":Ljava/lang/String;
    invoke-static {v0}, Lorg/jpos/util/Logger;->getLogger(Ljava/lang/String;)Lorg/jpos/util/Logger;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/tlv/packager/PackagerErrorLogger;->logger:Lorg/jpos/util/Logger;

    .line 62
    const-string v1, "realm"

    const-string v2, "packager-error"

    invoke-interface {p1, v1, v2}, Lorg/jpos/core/Configuration;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lorg/jpos/tlv/packager/PackagerErrorLogger;->realm:Ljava/lang/String;

    .line 63
    return-void
.end method

.method public setLogger(Lorg/jpos/util/Logger;Ljava/lang/String;)V
    .locals 0
    .param p1, "logger"    # Lorg/jpos/util/Logger;
    .param p2, "realm"    # Ljava/lang/String;

    .line 45
    iput-object p1, p0, Lorg/jpos/tlv/packager/PackagerErrorLogger;->logger:Lorg/jpos/util/Logger;

    .line 46
    return-void
.end method
