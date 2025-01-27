.class public interface abstract Lorg/apache/sshd/server/subsystem/SubsystemFactory;
.super Ljava/lang/Object;
.source "SubsystemFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedResource;


# direct methods
.method public static createSubsystem(Lorg/apache/sshd/server/channel/ChannelSession;Ljava/util/Collection;Ljava/lang/String;)Lorg/apache/sshd/server/command/Command;
    .locals 2
    .param p0, "channel"    # Lorg/apache/sshd/server/channel/ChannelSession;
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/server/channel/ChannelSession;",
            "Ljava/util/Collection<",
            "+",
            "Lorg/apache/sshd/server/subsystem/SubsystemFactory;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Lorg/apache/sshd/server/command/Command;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 56
    .local p1, "factories":Ljava/util/Collection;, "Ljava/util/Collection<+Lorg/apache/sshd/server/subsystem/SubsystemFactory;>;"
    sget-object v0, Ljava/lang/String;->CASE_INSENSITIVE_ORDER:Ljava/util/Comparator;

    .line 57
    invoke-static {p2, v0, p1}, Lorg/apache/sshd/common/NamedResource;->findByName(Ljava/lang/String;Ljava/util/Comparator;Ljava/util/Collection;)Lorg/apache/sshd/common/NamedResource;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/server/subsystem/SubsystemFactory;

    .line 58
    .local v0, "factory":Lorg/apache/sshd/server/subsystem/SubsystemFactory;
    if-eqz v0, :cond_0

    .line 59
    invoke-interface {v0, p0}, Lorg/apache/sshd/server/subsystem/SubsystemFactory;->createSubsystem(Lorg/apache/sshd/server/channel/ChannelSession;)Lorg/apache/sshd/server/command/Command;

    move-result-object v1

    return-object v1

    .line 61
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public abstract createSubsystem(Lorg/apache/sshd/server/channel/ChannelSession;)Lorg/apache/sshd/server/command/Command;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method
