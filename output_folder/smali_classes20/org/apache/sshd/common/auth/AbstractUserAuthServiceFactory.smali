.class public abstract Lorg/apache/sshd/common/auth/AbstractUserAuthServiceFactory;
.super Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;
.source "AbstractUserAuthServiceFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/ServiceFactory;


# static fields
.field public static final DEFAULT_NAME:Ljava/lang/String; = "ssh-userauth"


# instance fields
.field private final name:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 1

    .line 35
    const-string v0, "ssh-userauth"

    invoke-direct {p0, v0}, Lorg/apache/sshd/common/auth/AbstractUserAuthServiceFactory;-><init>(Ljava/lang/String;)V

    .line 36
    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 38
    invoke-direct {p0}, Lorg/apache/sshd/common/util/logging/AbstractLoggingBean;-><init>()V

    .line 39
    const-string v0, "No factory name"

    invoke-static {p1, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/auth/AbstractUserAuthServiceFactory;->name:Ljava/lang/String;

    .line 40
    return-void
.end method


# virtual methods
.method public final getName()Ljava/lang/String;
    .locals 1

    .line 44
    iget-object v0, p0, Lorg/apache/sshd/common/auth/AbstractUserAuthServiceFactory;->name:Ljava/lang/String;

    return-object v0
.end method
