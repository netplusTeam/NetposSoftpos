.class public interface abstract Lorg/apache/sshd/common/util/security/SecurityProviderChoice;
.super Ljava/lang/Object;
.source "SecurityProviderChoice.java"

# interfaces
.implements Lorg/apache/sshd/common/NamedResource;


# static fields
.field public static final EMPTY:Lorg/apache/sshd/common/util/security/SecurityProviderChoice;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 33
    new-instance v0, Lorg/apache/sshd/common/util/security/SecurityProviderChoice$1;

    invoke-direct {v0}, Lorg/apache/sshd/common/util/security/SecurityProviderChoice$1;-><init>()V

    sput-object v0, Lorg/apache/sshd/common/util/security/SecurityProviderChoice;->EMPTY:Lorg/apache/sshd/common/util/security/SecurityProviderChoice;

    return-void
.end method

.method public static createProviderInstance(Ljava/lang/Class;Ljava/lang/String;)Ljava/security/Provider;
    .locals 1
    .param p1, "providerClassName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")",
            "Ljava/security/Provider;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ReflectiveOperationException;
        }
    .end annotation

    .line 128
    .local p0, "anchor":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const-class v0, Ljava/security/Provider;

    invoke-static {p0, v0, p1}, Lorg/apache/sshd/common/util/threads/ThreadUtils;->createDefaultInstance(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/security/Provider;

    return-object v0
.end method

.method public static toSecurityProviderChoice(Ljava/lang/String;)Lorg/apache/sshd/common/util/security/SecurityProviderChoice;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 71
    const-string v0, "No name provided"

    invoke-static {p0, v0}, Lorg/apache/sshd/common/util/ValidateUtils;->checkNotNullAndNotEmpty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 72
    new-instance v0, Lorg/apache/sshd/common/util/security/SecurityProviderChoice$2;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/security/SecurityProviderChoice$2;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public static toSecurityProviderChoice(Ljava/security/Provider;)Lorg/apache/sshd/common/util/security/SecurityProviderChoice;
    .locals 1
    .param p0, "provider"    # Ljava/security/Provider;

    .line 98
    const-string v0, "No provider instance"

    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 99
    new-instance v0, Lorg/apache/sshd/common/util/security/SecurityProviderChoice$3;

    invoke-direct {v0, p0}, Lorg/apache/sshd/common/util/security/SecurityProviderChoice$3;-><init>(Ljava/security/Provider;)V

    return-object v0
.end method


# virtual methods
.method public abstract getSecurityProvider()Ljava/security/Provider;
.end method

.method public isNamedProviderUsed()Z
    .locals 1

    .line 60
    const/4 v0, 0x1

    return v0
.end method
