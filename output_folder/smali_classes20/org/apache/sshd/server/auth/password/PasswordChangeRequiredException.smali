.class public Lorg/apache/sshd/server/auth/password/PasswordChangeRequiredException;
.super Ljava/lang/RuntimeException;
.source "PasswordChangeRequiredException.java"


# static fields
.field private static final serialVersionUID:J = -0x764786281997aea7L


# instance fields
.field private final lang:Ljava/lang/String;

.field private final prompt:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "prompt"    # Ljava/lang/String;
    .param p3, "lang"    # Ljava/lang/String;

    .line 35
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/sshd/server/auth/password/PasswordChangeRequiredException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 36
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "message"    # Ljava/lang/String;
    .param p2, "prompt"    # Ljava/lang/String;
    .param p3, "lang"    # Ljava/lang/String;
    .param p4, "cause"    # Ljava/lang/Throwable;

    .line 43
    invoke-direct {p0, p1, p4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 44
    iput-object p2, p0, Lorg/apache/sshd/server/auth/password/PasswordChangeRequiredException;->prompt:Ljava/lang/String;

    .line 45
    iput-object p3, p0, Lorg/apache/sshd/server/auth/password/PasswordChangeRequiredException;->lang:Ljava/lang/String;

    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .param p1, "cause"    # Ljava/lang/Throwable;
    .param p2, "prompt"    # Ljava/lang/String;
    .param p3, "lang"    # Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, p2, p3, p1}, Lorg/apache/sshd/server/auth/password/PasswordChangeRequiredException;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 40
    return-void
.end method


# virtual methods
.method public final getLanguage()Ljava/lang/String;
    .locals 1

    .line 59
    iget-object v0, p0, Lorg/apache/sshd/server/auth/password/PasswordChangeRequiredException;->lang:Ljava/lang/String;

    return-object v0
.end method

.method public final getPrompt()Ljava/lang/String;
    .locals 1

    .line 52
    iget-object v0, p0, Lorg/apache/sshd/server/auth/password/PasswordChangeRequiredException;->prompt:Ljava/lang/String;

    return-object v0
.end method
