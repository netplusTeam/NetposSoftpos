.class public Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions$BCryptBadRoundsException;
.super Lorg/apache/sshd/common/RuntimeSshException;
.source "BCryptKdfOptions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "BCryptBadRoundsException"
.end annotation


# static fields
.field private static final serialVersionUID:J = 0x17f060f67319d311L


# instance fields
.field private final rounds:I


# direct methods
.method public constructor <init>(I)V
    .locals 2
    .param p1, "rounds"    # I

    .line 243
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Bad rounds value: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions$BCryptBadRoundsException;-><init>(ILjava/lang/String;)V

    .line 244
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;)V
    .locals 1
    .param p1, "rounds"    # I
    .param p2, "message"    # Ljava/lang/String;

    .line 247
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions$BCryptBadRoundsException;-><init>(ILjava/lang/String;Ljava/lang/Throwable;)V

    .line 248
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "rounds"    # I
    .param p2, "message"    # Ljava/lang/String;
    .param p3, "reason"    # Ljava/lang/Throwable;

    .line 251
    invoke-direct {p0, p2, p3}, Lorg/apache/sshd/common/RuntimeSshException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 252
    iput p1, p0, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions$BCryptBadRoundsException;->rounds:I

    .line 253
    return-void
.end method


# virtual methods
.method public getRounds()I
    .locals 1

    .line 256
    iget v0, p0, Lorg/apache/sshd/common/config/keys/loader/openssh/kdf/BCryptKdfOptions$BCryptBadRoundsException;->rounds:I

    return v0
.end method
