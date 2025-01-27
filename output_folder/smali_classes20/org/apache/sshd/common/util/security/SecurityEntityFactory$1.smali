.class final Lorg/apache/sshd/common/util/security/SecurityEntityFactory$1;
.super Ljava/lang/Object;
.source "SecurityEntityFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/util/security/SecurityEntityFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/util/security/SecurityEntityFactory;->toDefaultFactory(Ljava/lang/Class;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/apache/sshd/common/util/security/SecurityEntityFactory<",
        "TF;>;"
    }
.end annotation


# instance fields
.field private final s:Ljava/lang/String;

.field final synthetic val$entityType:Ljava/lang/Class;

.field final synthetic val$m:Ljava/lang/reflect/Method;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 78
    iput-object p1, p0, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$1;->val$entityType:Ljava/lang/Class;

    iput-object p2, p0, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$1;->val$m:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 79
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lorg/apache/sshd/common/util/security/SecurityEntityFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v0, "["

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 80
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "][default]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$1;->s:Ljava/lang/String;

    .line 79
    return-void
.end method


# virtual methods
.method public getEntityType()Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Class<",
            "TF;>;"
        }
    .end annotation

    .line 85
    iget-object v0, p0, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$1;->val$entityType:Ljava/lang/Class;

    return-object v0
.end method

.method public getInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 4
    .param p1, "algorithm"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TF;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 91
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$1;->val$m:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 92
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$1;->val$entityType:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 93
    .end local v0    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "t":Ljava/lang/ReflectiveOperationException;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 95
    .local v1, "e":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/security/GeneralSecurityException;

    if-nez v2, :cond_2

    .line 97
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    .line 99
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_0

    .line 100
    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 102
    :cond_0
    new-instance v2, Ljava/security/GeneralSecurityException;

    invoke-direct {v2, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 98
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 96
    :cond_2
    move-object v2, v1

    check-cast v2, Ljava/security/GeneralSecurityException;

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 109
    iget-object v0, p0, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$1;->s:Ljava/lang/String;

    return-object v0
.end method
