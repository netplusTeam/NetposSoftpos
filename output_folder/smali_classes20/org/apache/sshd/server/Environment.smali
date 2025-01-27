.class public interface abstract Lorg/apache/sshd/server/Environment;
.super Ljava/lang/Object;
.source "Environment.java"


# static fields
.field public static final ENV_COLUMNS:Ljava/lang/String; = "COLUMNS"

.field public static final ENV_LINES:Ljava/lang/String; = "LINES"

.field public static final ENV_TERM:Ljava/lang/String; = "TERM"

.field public static final ENV_USER:Ljava/lang/String; = "USER"


# virtual methods
.method public addSignalListener(Lorg/apache/sshd/server/SignalListener;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/sshd/server/SignalListener;

    .line 89
    sget-object v0, Lorg/apache/sshd/server/Signal;->SIGNALS:Ljava/util/Set;

    invoke-interface {p0, p1, v0}, Lorg/apache/sshd/server/Environment;->addSignalListener(Lorg/apache/sshd/server/SignalListener;Ljava/util/Collection;)V

    .line 90
    return-void
.end method

.method public abstract addSignalListener(Lorg/apache/sshd/server/SignalListener;Ljava/util/Collection;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/server/SignalListener;",
            "Ljava/util/Collection<",
            "Lorg/apache/sshd/server/Signal;",
            ">;)V"
        }
    .end annotation
.end method

.method public varargs addSignalListener(Lorg/apache/sshd/server/SignalListener;[Lorg/apache/sshd/server/Signal;)V
    .locals 1
    .param p1, "listener"    # Lorg/apache/sshd/server/SignalListener;
    .param p2, "signals"    # [Lorg/apache/sshd/server/Signal;

    .line 80
    invoke-static {p2}, Lorg/apache/sshd/common/util/GenericUtils;->of([Ljava/lang/Enum;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p0, p1, v0}, Lorg/apache/sshd/server/Environment;->addSignalListener(Lorg/apache/sshd/server/SignalListener;Ljava/util/Collection;)V

    .line 81
    return-void
.end method

.method public abstract getEnv()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getPtyModes()Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Lorg/apache/sshd/common/channel/PtyMode;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end method

.method public abstract removeSignalListener(Lorg/apache/sshd/server/SignalListener;)V
.end method
