.class public interface abstract Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
.super Ljava/lang/Object;
.source "FilePasswordProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;
    }
.end annotation

.annotation runtime Ljava/lang/FunctionalInterface;
.end annotation


# static fields
.field public static final EMPTY:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 51
    new-instance v0, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/config/keys/FilePasswordProvider;->EMPTY:Lorg/apache/sshd/common/config/keys/FilePasswordProvider;

    return-void
.end method

.method public static synthetic lambda$of$1(Ljava/lang/String;Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;I)Ljava/lang/String;
    .locals 0
    .param p0, "password"    # Ljava/lang/String;
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resource"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 90
    return-object p0
.end method

.method public static synthetic lambda$static$0(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;I)Ljava/lang/String;
    .locals 1
    .param p0, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p1, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p2, "retryIndex"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 51
    const/4 v0, 0x0

    return-object v0
.end method

.method public static of(Ljava/lang/String;)Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .locals 1
    .param p0, "password"    # Ljava/lang/String;

    .line 90
    new-instance v0, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$$ExternalSyntheticLambda1;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$$ExternalSyntheticLambda1;-><init>(Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method public abstract getPassword(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;I)Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation
.end method

.method public handleDecodeAttemptResult(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;ILjava/lang/String;Ljava/lang/Exception;)Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;
    .locals 1
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "retryIndex"    # I
    .param p4, "password"    # Ljava/lang/String;
    .param p5, "err"    # Ljava/lang/Exception;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 86
    sget-object v0, Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;->TERMINATE:Lorg/apache/sshd/common/config/keys/FilePasswordProvider$ResourceDecodeResult;

    return-object v0
.end method
