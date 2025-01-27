.class public Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA;
.super Lorg/jpos/q2/ssh/AbstractPKA;
.source "AuthorizedKeysFileBasedPKA.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;
    }
.end annotation


# instance fields
.field filename:Ljava/lang/String;

.field username:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p1, "username"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;

    .line 52
    invoke-direct {p0}, Lorg/jpos/q2/ssh/AbstractPKA;-><init>()V

    .line 53
    iput-object p2, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA;->filename:Ljava/lang/String;

    .line 54
    iput-object p1, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA;->username:Ljava/lang/String;

    .line 55
    return-void
.end method


# virtual methods
.method protected getUsername()Ljava/lang/String;
    .locals 1

    .line 60
    iget-object v0, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA;->username:Ljava/lang/String;

    return-object v0
.end method

.method protected parseAuthorizedKeys()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/security/PublicKey;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 66
    .local v0, "authorizedKeys":Ljava/util/List;, "Ljava/util/List<Ljava/security/PublicKey;>;"
    new-instance v1, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;

    invoke-direct {v1, p0}, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;-><init>(Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA;)V

    .line 67
    .local v1, "decoder":Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;
    new-instance v2, Ljava/io/File;

    iget-object v3, p0, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA;->filename:Ljava/lang/String;

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 68
    .local v2, "file":Ljava/io/File;
    const/4 v3, 0x0

    .line 71
    .local v3, "scanner":Ljava/util/Scanner;
    :try_start_0
    new-instance v4, Ljava/util/Scanner;

    invoke-direct {v4, v2}, Ljava/util/Scanner;-><init>(Ljava/io/File;)V

    const-string v5, "\n"

    invoke-virtual {v4, v5}, Ljava/util/Scanner;->useDelimiter(Ljava/lang/String;)Ljava/util/Scanner;

    move-result-object v4

    move-object v3, v4

    .line 72
    :goto_0
    invoke-virtual {v3}, Ljava/util/Scanner;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 74
    invoke-virtual {v3}, Ljava/util/Scanner;->next()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/jpos/q2/ssh/AuthorizedKeysFileBasedPKA$AuthorizedKeysDecoder;->decodePublicKey(Ljava/lang/String;)Ljava/security/PublicKey;

    move-result-object v4

    .line 75
    .local v4, "publicKey":Ljava/security/PublicKey;
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 76
    nop

    .end local v4    # "publicKey":Ljava/security/PublicKey;
    goto :goto_0

    .line 80
    :cond_0
    if-eqz v3, :cond_1

    .line 82
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .line 85
    :cond_1
    return-object v0

    .line 80
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_2

    .line 82
    invoke-virtual {v3}, Ljava/util/Scanner;->close()V

    .line 84
    :cond_2
    throw v4
.end method
