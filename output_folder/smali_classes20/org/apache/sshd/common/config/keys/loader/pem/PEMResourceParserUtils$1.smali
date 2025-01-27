.class final Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils$1;
.super Ljava/lang/Object;
.source "PEMResourceParserUtils.java"

# interfaces
.implements Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public canExtractKeyPairs(Lorg/apache/sshd/common/NamedResource;Ljava/util/List;)Z
    .locals 2
    .param p1, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/NamedResource;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 59
    .local p2, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;

    .line 60
    .local v0, "proxy":Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->canExtractKeyPairs(Lorg/apache/sshd/common/NamedResource;Ljava/util/List;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/util/List;)Ljava/util/Collection;
    .locals 2
    .param p1, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .param p2, "resourceKey"    # Lorg/apache/sshd/common/NamedResource;
    .param p3, "passwordProvider"    # Lorg/apache/sshd/common/config/keys/FilePasswordProvider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Lorg/apache/sshd/common/NamedResource;",
            "Lorg/apache/sshd/common/config/keys/FilePasswordProvider;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/security/GeneralSecurityException;
        }
    .end annotation

    .line 51
    .local p4, "lines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {}, Lorg/apache/sshd/common/config/keys/loader/pem/PEMResourceParserUtils;->access$000()Ljava/util/concurrent/atomic/AtomicReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;

    .line 52
    .local v0, "proxy":Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;
    if-nez v0, :cond_0

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v1

    goto :goto_0

    :cond_0
    invoke-interface {v0, p1, p2, p3, p4}, Lorg/apache/sshd/common/config/keys/loader/KeyPairResourceParser;->loadKeyPairs(Lorg/apache/sshd/common/session/SessionContext;Lorg/apache/sshd/common/NamedResource;Lorg/apache/sshd/common/config/keys/FilePasswordProvider;Ljava/util/List;)Ljava/util/Collection;

    move-result-object v1

    :goto_0
    return-object v1
.end method
