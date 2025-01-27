.class public Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractiveFactory;
.super Lorg/apache/sshd/client/auth/AbstractUserAuthFactory;
.source "UserAuthKeyboardInteractiveFactory.java"


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractiveFactory;

.field public static final NAME:Ljava/lang/String; = "keyboard-interactive"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractiveFactory;

    invoke-direct {v0}, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractiveFactory;-><init>()V

    sput-object v0, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractiveFactory;->INSTANCE:Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractiveFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 34
    const-string v0, "keyboard-interactive"

    invoke-direct {p0, v0}, Lorg/apache/sshd/client/auth/AbstractUserAuthFactory;-><init>(Ljava/lang/String;)V

    .line 35
    return-void
.end method


# virtual methods
.method public createUserAuth(Lorg/apache/sshd/client/session/ClientSession;)Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/client/session/ClientSession;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;

    invoke-direct {v0}, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;-><init>()V

    return-object v0
.end method

.method public bridge synthetic createUserAuth(Lorg/apache/sshd/common/session/SessionContext;)Lorg/apache/sshd/common/auth/UserAuthInstance;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 29
    check-cast p1, Lorg/apache/sshd/client/session/ClientSession;

    invoke-virtual {p0, p1}, Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractiveFactory;->createUserAuth(Lorg/apache/sshd/client/session/ClientSession;)Lorg/apache/sshd/client/auth/keyboard/UserAuthKeyboardInteractive;

    move-result-object p1

    return-object p1
.end method
