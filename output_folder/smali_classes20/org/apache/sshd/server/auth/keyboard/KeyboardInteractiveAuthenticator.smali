.class public interface abstract Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;
.super Ljava/lang/Object;
.source "KeyboardInteractiveAuthenticator.java"


# static fields
.field public static final NONE:Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 36
    new-instance v0, Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator$1;

    invoke-direct {v0}, Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;->NONE:Lorg/apache/sshd/server/auth/keyboard/KeyboardInteractiveAuthenticator;

    return-void
.end method


# virtual methods
.method public abstract authenticate(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/util/List;)Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/server/session/ServerSession;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method

.method public abstract generateChallenge(Lorg/apache/sshd/server/session/ServerSession;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/sshd/server/auth/keyboard/InteractiveChallenge;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation
.end method
