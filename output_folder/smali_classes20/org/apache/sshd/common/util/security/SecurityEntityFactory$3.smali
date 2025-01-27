.class final Lorg/apache/sshd/common/util/security/SecurityEntityFactory$3;
.super Ljava/lang/Object;
.source "SecurityEntityFactory.java"

# interfaces
.implements Lorg/apache/sshd/common/util/security/SecurityEntityFactory;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/util/security/SecurityEntityFactory;->toProviderInstanceFactory(Ljava/lang/Class;Ljava/security/Provider;)Lorg/apache/sshd/common/util/security/SecurityEntityFactory;
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

.field final synthetic val$provider:Ljava/security/Provider;


# direct methods
.method constructor <init>(Ljava/lang/Class;Ljava/security/Provider;Ljava/lang/reflect/Method;)V
    .locals 1

    .line 158
    iput-object p1, p0, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$3;->val$entityType:Ljava/lang/Class;

    iput-object p2, p0, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$3;->val$provider:Ljava/security/Provider;

    iput-object p3, p0, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$3;->val$m:Ljava/lang/reflect/Method;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 159
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-class v0, Lorg/apache/sshd/common/util/security/SecurityEntityFactory;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "["

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    .line 160
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p3, "]["

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-class v0, Ljava/security/Provider;

    .line 161
    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 162
    invoke-virtual {p2}, Ljava/security/Provider;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, "]"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$3;->s:Ljava/lang/String;

    .line 159
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

    .line 166
    iget-object v0, p0, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$3;->val$entityType:Ljava/lang/Class;

    return-object v0
.end method

.method public getInstance(Ljava/lang/String;)Ljava/lang/Object;
    .locals 5
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

    .line 172
    :try_start_0
    iget-object v0, p0, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$3;->val$m:Ljava/lang/reflect/Method;

    const/4 v1, 0x0

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$3;->val$provider:Ljava/security/Provider;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .line 173
    .local v0, "value":Ljava/lang/Object;
    iget-object v1, p0, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$3;->val$entityType:Ljava/lang/Class;

    invoke-virtual {v1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ReflectiveOperationException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 174
    .end local v0    # "value":Ljava/lang/Object;
    :catch_0
    move-exception v0

    .line 175
    .local v0, "t":Ljava/lang/ReflectiveOperationException;
    invoke-static {v0}, Lorg/apache/sshd/common/util/GenericUtils;->peelException(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object v1

    .line 176
    .local v1, "e":Ljava/lang/Throwable;
    instance-of v2, v1, Ljava/security/GeneralSecurityException;

    if-nez v2, :cond_2

    .line 178
    instance-of v2, v1, Ljava/lang/RuntimeException;

    if-nez v2, :cond_1

    .line 180
    instance-of v2, v1, Ljava/lang/Error;

    if-eqz v2, :cond_0

    .line 181
    move-object v2, v1

    check-cast v2, Ljava/lang/Error;

    throw v2

    .line 183
    :cond_0
    new-instance v2, Ljava/security/GeneralSecurityException;

    invoke-direct {v2, v1}, Ljava/security/GeneralSecurityException;-><init>(Ljava/lang/Throwable;)V

    throw v2

    .line 179
    :cond_1
    move-object v2, v1

    check-cast v2, Ljava/lang/RuntimeException;

    throw v2

    .line 177
    :cond_2
    move-object v2, v1

    check-cast v2, Ljava/security/GeneralSecurityException;

    throw v2
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 190
    iget-object v0, p0, Lorg/apache/sshd/common/util/security/SecurityEntityFactory$3;->s:Ljava/lang/String;

    return-object v0
.end method
