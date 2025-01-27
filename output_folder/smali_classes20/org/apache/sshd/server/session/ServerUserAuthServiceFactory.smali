.class public Lorg/apache/sshd/server/session/ServerUserAuthServiceFactory;
.super Lorg/apache/sshd/common/auth/AbstractUserAuthServiceFactory;
.source "ServerUserAuthServiceFactory.java"


# static fields
.field public static final INSTANCE:Lorg/apache/sshd/server/session/ServerUserAuthServiceFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 31
    new-instance v0, Lorg/apache/sshd/server/session/ServerUserAuthServiceFactory;

    invoke-direct {v0}, Lorg/apache/sshd/server/session/ServerUserAuthServiceFactory;-><init>()V

    sput-object v0, Lorg/apache/sshd/server/session/ServerUserAuthServiceFactory;->INSTANCE:Lorg/apache/sshd/server/session/ServerUserAuthServiceFactory;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 34
    invoke-direct {p0}, Lorg/apache/sshd/common/auth/AbstractUserAuthServiceFactory;-><init>()V

    .line 35
    return-void
.end method


# virtual methods
.method public create(Lorg/apache/sshd/common/session/Session;)Lorg/apache/sshd/common/Service;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/Session;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 39
    new-instance v0, Lorg/apache/sshd/server/session/ServerUserAuthService;

    invoke-direct {v0, p1}, Lorg/apache/sshd/server/session/ServerUserAuthService;-><init>(Lorg/apache/sshd/common/session/Session;)V

    return-object v0
.end method
