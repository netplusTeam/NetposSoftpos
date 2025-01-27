.class public interface abstract Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;
.super Ljava/lang/Object;
.source "PtyChannelConfigurationMutator.java"

# interfaces
.implements Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;


# direct methods
.method public static copyConfiguration(Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;)Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;
    .locals 1
    .param p0, "src"    # Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;",
            ">(",
            "Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;",
            "TM;)TM;"
        }
    .end annotation

    .line 44
    .local p1, "dst":Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;, "TM;"
    if-eqz p0, :cond_1

    if-nez p1, :cond_0

    goto :goto_0

    .line 48
    :cond_0
    invoke-interface {p0}, Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;->getPtyColumns()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;->setPtyColumns(I)V

    .line 49
    invoke-interface {p0}, Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;->getPtyHeight()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;->setPtyHeight(I)V

    .line 50
    invoke-interface {p0}, Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;->getPtyLines()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;->setPtyLines(I)V

    .line 51
    invoke-interface {p0}, Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;->getPtyModes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;->setPtyModes(Ljava/util/Map;)V

    .line 52
    invoke-interface {p0}, Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;->getPtyType()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;->setPtyType(Ljava/lang/String;)V

    .line 53
    invoke-interface {p0}, Lorg/apache/sshd/common/channel/PtyChannelConfigurationHolder;->getPtyWidth()I

    move-result v0

    invoke-interface {p1, v0}, Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;->setPtyWidth(I)V

    .line 54
    return-object p1

    .line 45
    :cond_1
    :goto_0
    return-object p1
.end method

.method public static setupSensitiveDefaultPtyConfiguration(Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;)Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<M::",
            "Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;",
            ">(TM;)TM;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 68
    .local p0, "mutator":Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;, "TM;"
    if-nez p0, :cond_0

    .line 69
    const/4 v0, 0x0

    return-object v0

    .line 72
    :cond_0
    invoke-static {}, Lorg/apache/sshd/common/util/OsUtils;->isUNIX()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 73
    invoke-static {}, Lorg/apache/sshd/common/channel/SttySupport;->getUnixPtyModes()Ljava/util/Map;

    move-result-object v0

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;->setPtyModes(Ljava/util/Map;)V

    .line 74
    invoke-static {}, Lorg/apache/sshd/common/channel/SttySupport;->getTerminalWidth()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;->setPtyColumns(I)V

    .line 75
    invoke-static {}, Lorg/apache/sshd/common/channel/SttySupport;->getTerminalHeight()I

    move-result v0

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;->setPtyLines(I)V

    goto :goto_0

    .line 77
    :cond_1
    const-string/jumbo v0, "windows"

    invoke-interface {p0, v0}, Lorg/apache/sshd/common/channel/PtyChannelConfigurationMutator;->setPtyType(Ljava/lang/String;)V

    .line 80
    :goto_0
    return-object p0
.end method


# virtual methods
.method public abstract setPtyColumns(I)V
.end method

.method public abstract setPtyHeight(I)V
.end method

.method public abstract setPtyLines(I)V
.end method

.method public abstract setPtyModes(Ljava/util/Map;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation
.end method

.method public abstract setPtyType(Ljava/lang/String;)V
.end method

.method public abstract setPtyWidth(I)V
.end method
