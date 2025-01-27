.class public abstract Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;
.super Lorg/apache/sshd/common/session/helpers/AbstractSessionIoHandler;
.source "AbstractSessionFactory.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<M::",
        "Lorg/apache/sshd/common/FactoryManager;",
        "S:",
        "Lorg/apache/sshd/common/session/helpers/AbstractSession;",
        ">",
        "Lorg/apache/sshd/common/session/helpers/AbstractSessionIoHandler;"
    }
.end annotation


# instance fields
.field private final manager:Lorg/apache/sshd/common/FactoryManager;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TM;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/common/FactoryManager;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TM;)V"
        }
    .end annotation

    .line 36
    .local p0, "this":Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;, "Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory<TM;TS;>;"
    .local p1, "manager":Lorg/apache/sshd/common/FactoryManager;, "TM;"
    invoke-direct {p0}, Lorg/apache/sshd/common/session/helpers/AbstractSessionIoHandler;-><init>()V

    .line 37
    const-string v0, "No factory manager instance"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/FactoryManager;

    iput-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;->manager:Lorg/apache/sshd/common/FactoryManager;

    .line 38
    return-void
.end method


# virtual methods
.method protected createSession(Lorg/apache/sshd/common/io/IoSession;)Lorg/apache/sshd/common/session/helpers/AbstractSession;
    .locals 2
    .param p1, "ioSession"    # Lorg/apache/sshd/common/io/IoSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/io/IoSession;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 46
    .local p0, "this":Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;, "Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory<TM;TS;>;"
    invoke-virtual {p0, p1}, Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;->doCreateSession(Lorg/apache/sshd/common/io/IoSession;)Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v0

    .line 47
    .local v0, "session":Lorg/apache/sshd/common/session/helpers/AbstractSession;, "TS;"
    invoke-virtual {p0, v0}, Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;->setupSession(Lorg/apache/sshd/common/session/helpers/AbstractSession;)Lorg/apache/sshd/common/session/helpers/AbstractSession;

    move-result-object v1

    return-object v1
.end method

.method protected abstract doCreateSession(Lorg/apache/sshd/common/io/IoSession;)Lorg/apache/sshd/common/session/helpers/AbstractSession;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/io/IoSession;",
            ")TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public getFactoryManager()Lorg/apache/sshd/common/FactoryManager;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TM;"
        }
    .end annotation

    .line 41
    .local p0, "this":Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;, "Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory<TM;TS;>;"
    iget-object v0, p0, Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;->manager:Lorg/apache/sshd/common/FactoryManager;

    return-object v0
.end method

.method protected setupSession(Lorg/apache/sshd/common/session/helpers/AbstractSession;)Lorg/apache/sshd/common/session/helpers/AbstractSession;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TS;)TS;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 53
    .local p0, "this":Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory;, "Lorg/apache/sshd/common/session/helpers/AbstractSessionFactory<TM;TS;>;"
    .local p1, "session":Lorg/apache/sshd/common/session/helpers/AbstractSession;, "TS;"
    return-object p1
.end method
