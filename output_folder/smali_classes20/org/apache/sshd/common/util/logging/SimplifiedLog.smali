.class public interface abstract Lorg/apache/sshd/common/util/logging/SimplifiedLog;
.super Ljava/lang/Object;
.source "SimplifiedLog.java"


# static fields
.field public static final EMPTY:Lorg/apache/sshd/common/util/logging/SimplifiedLog;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/apache/sshd/common/util/logging/SimplifiedLog$1;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/logging/SimplifiedLog$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/logging/SimplifiedLog;->EMPTY:Lorg/apache/sshd/common/util/logging/SimplifiedLog;

    return-void
.end method


# virtual methods
.method public abstract isEnabled(Ljava/util/logging/Level;)Z
.end method

.method public log(Ljava/util/logging/Level;Ljava/lang/Object;)V
    .locals 1
    .param p1, "level"    # Ljava/util/logging/Level;
    .param p2, "message"    # Ljava/lang/Object;

    .line 51
    const/4 v0, 0x0

    invoke-interface {p0, p1, p2, v0}, Lorg/apache/sshd/common/util/logging/SimplifiedLog;->log(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 52
    return-void
.end method

.method public abstract log(Ljava/util/logging/Level;Ljava/lang/Object;Ljava/lang/Throwable;)V
.end method
