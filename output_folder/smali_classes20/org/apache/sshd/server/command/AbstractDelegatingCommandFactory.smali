.class public abstract Lorg/apache/sshd/server/command/AbstractDelegatingCommandFactory;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AbstractDelegatingCommandFactory.java"

# interfaces
.implements Lorg/apache/sshd/server/command/CommandFactory;


# instance fields
.field private delegate:Lorg/apache/sshd/server/command/CommandFactory;

.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 41
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 42
    const-string v0, "No delegating command factory name provided"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/server/command/AbstractDelegatingCommandFactory;->name:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public createCommand(Lorg/apache/sshd/server/channel/ChannelSession;Ljava/lang/String;)Lorg/apache/sshd/server/command/Command;
    .locals 2
    .param p1, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;
    .param p2, "command"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 61
    invoke-virtual {p0, p2}, Lorg/apache/sshd/server/command/AbstractDelegatingCommandFactory;->isSupportedCommand(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 62
    invoke-virtual {p0, p2}, Lorg/apache/sshd/server/command/AbstractDelegatingCommandFactory;->executeSupportedCommand(Ljava/lang/String;)Lorg/apache/sshd/server/command/Command;

    move-result-object v0

    return-object v0

    .line 65
    :cond_0
    invoke-virtual {p0}, Lorg/apache/sshd/server/command/AbstractDelegatingCommandFactory;->getDelegateCommandFactory()Lorg/apache/sshd/server/command/CommandFactory;

    move-result-object v0

    .line 66
    .local v0, "factory":Lorg/apache/sshd/server/command/CommandFactory;
    if-eqz v0, :cond_1

    .line 67
    invoke-interface {v0, p1, p2}, Lorg/apache/sshd/server/command/CommandFactory;->createCommand(Lorg/apache/sshd/server/channel/ChannelSession;Ljava/lang/String;)Lorg/apache/sshd/server/command/Command;

    move-result-object v1

    return-object v1

    .line 70
    :cond_1
    invoke-virtual {p0, p2}, Lorg/apache/sshd/server/command/AbstractDelegatingCommandFactory;->createUnsupportedCommand(Ljava/lang/String;)Lorg/apache/sshd/server/command/Command;

    move-result-object v1

    return-object v1
.end method

.method protected createUnsupportedCommand(Ljava/lang/String;)Lorg/apache/sshd/server/command/Command;
    .locals 3
    .param p1, "command"    # Ljava/lang/String;

    .line 84
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown command to execute: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected abstract executeSupportedCommand(Ljava/lang/String;)Lorg/apache/sshd/server/command/Command;
.end method

.method public getDelegateCommandFactory()Lorg/apache/sshd/server/command/CommandFactory;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/sshd/server/command/AbstractDelegatingCommandFactory;->delegate:Lorg/apache/sshd/server/command/CommandFactory;

    return-object v0
.end method

.method public abstract isSupportedCommand(Ljava/lang/String;)Z
.end method

.method public setDelegateCommandFactory(Lorg/apache/sshd/server/command/CommandFactory;)V
    .locals 0
    .param p1, "factory"    # Lorg/apache/sshd/server/command/CommandFactory;

    .line 56
    iput-object p1, p0, Lorg/apache/sshd/server/command/AbstractDelegatingCommandFactory;->delegate:Lorg/apache/sshd/server/command/CommandFactory;

    .line 57
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 48
    iget-object v0, p0, Lorg/apache/sshd/server/command/AbstractDelegatingCommandFactory;->name:Ljava/lang/String;

    return-object v0
.end method
