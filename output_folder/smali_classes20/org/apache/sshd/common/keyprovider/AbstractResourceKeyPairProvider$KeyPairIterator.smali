.class public Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;
.super Ljava/lang/Object;
.source "AbstractResourceKeyPairProvider.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "KeyPairIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/security/KeyPair;",
        ">;"
    }
.end annotation


# instance fields
.field private currentIdentities:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/security/KeyPair;",
            ">;"
        }
    .end annotation
.end field

.field private final iterator:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "+TR;>;"
        }
    .end annotation
.end field

.field private nextKeyPair:Ljava/security/KeyPair;

.field private nextKeyPairSet:Z

.field protected final session:Lorg/apache/sshd/common/session/SessionContext;

.field final synthetic this$0:Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;


# direct methods
.method protected constructor <init>(Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;Lorg/apache/sshd/common/session/SessionContext;Ljava/util/Collection;)V
    .locals 1
    .param p1, "this$0"    # Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;
    .param p2, "session"    # Lorg/apache/sshd/common/session/SessionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/apache/sshd/common/session/SessionContext;",
            "Ljava/util/Collection<",
            "+TR;>;)V"
        }
    .end annotation

    .line 202
    .local p0, "this":Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;, "Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider<TR;>.KeyPairIterator;"
    .local p3, "resources":Ljava/util/Collection;, "Ljava/util/Collection<+TR;>;"
    iput-object p1, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->this$0:Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 203
    iput-object p2, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->session:Lorg/apache/sshd/common/session/SessionContext;

    .line 204
    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->iterator:Ljava/util/Iterator;

    .line 205
    return-void
.end method

.method private setNextObject()Z
    .locals 8

    .line 230
    .local p0, "this":Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;, "Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider<TR;>.KeyPairIterator;"
    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->currentIdentities:Ljava/util/Iterator;

    invoke-static {v0}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->exhaustCurrentIdentities(Ljava/util/Iterator;)Ljava/security/KeyPair;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->nextKeyPair:Ljava/security/KeyPair;

    .line 231
    const/4 v1, 0x1

    if-eqz v0, :cond_0

    .line 232
    iput-boolean v1, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->nextKeyPairSet:Z

    .line 233
    return v1

    .line 236
    :cond_0
    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->this$0:Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;

    invoke-static {v0}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->access$000(Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;)Lorg/slf4j/Logger;

    move-result-object v0

    invoke-interface {v0}, Lorg/slf4j/Logger;->isDebugEnabled()Z

    move-result v0

    .line 237
    .local v0, "debugEnabled":Z
    :goto_0
    iget-object v2, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 238
    iget-object v2, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->iterator:Ljava/util/Iterator;

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 240
    .local v2, "r":Ljava/lang/Object;, "TR;"
    const/4 v3, 0x0

    :try_start_0
    iget-object v4, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->this$0:Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;

    iget-object v5, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->session:Lorg/apache/sshd/common/session/SessionContext;

    invoke-virtual {v4, v5, v2}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->doLoadKeys(Lorg/apache/sshd/common/session/SessionContext;Ljava/lang/Object;)Ljava/lang/Iterable;

    move-result-object v4

    .line 241
    .local v4, "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    if-nez v4, :cond_1

    move-object v5, v3

    goto :goto_1

    :cond_1
    invoke-interface {v4}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    iput-object v5, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->currentIdentities:Ljava/util/Iterator;

    .line 242
    invoke-static {v5}, Lorg/apache/sshd/common/keyprovider/KeyIdentityProvider;->exhaustCurrentIdentities(Ljava/util/Iterator;)Ljava/security/KeyPair;

    move-result-object v5

    iput-object v5, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->nextKeyPair:Ljava/security/KeyPair;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    .end local v4    # "ids":Ljava/lang/Iterable;, "Ljava/lang/Iterable<Ljava/security/KeyPair;>;"
    nop

    .line 253
    if-eqz v5, :cond_2

    .line 254
    iput-boolean v1, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->nextKeyPairSet:Z

    .line 255
    return v1

    .line 257
    .end local v2    # "r":Ljava/lang/Object;, "TR;"
    :cond_2
    goto :goto_0

    .line 243
    .restart local v2    # "r":Ljava/lang/Object;, "TR;"
    :catchall_0
    move-exception v4

    .line 244
    .local v4, "e":Ljava/lang/Throwable;
    iget-object v5, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->this$0:Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;

    invoke-static {v5}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->access$100(Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;)Lorg/slf4j/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Failed ("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ") to load key resource="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ": "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 245
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 244
    invoke-interface {v5, v6}, Lorg/slf4j/Logger;->warn(Ljava/lang/String;)V

    .line 246
    if-eqz v0, :cond_3

    .line 247
    iget-object v5, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->this$0:Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;

    invoke-static {v5}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;->access$200(Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider;)Lorg/slf4j/Logger;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Key resource="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " load failure details"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6, v4}, Lorg/slf4j/Logger;->debug(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 249
    :cond_3
    iput-object v3, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->nextKeyPair:Ljava/security/KeyPair;

    .line 250
    goto/16 :goto_0

    .line 259
    .end local v2    # "r":Ljava/lang/Object;, "TR;"
    .end local v4    # "e":Ljava/lang/Throwable;
    :cond_4
    const/4 v1, 0x0

    return v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 209
    .local p0, "this":Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;, "Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider<TR;>.KeyPairIterator;"
    iget-boolean v0, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->nextKeyPairSet:Z

    if-nez v0, :cond_1

    invoke-direct {p0}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->setNextObject()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 195
    .local p0, "this":Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;, "Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider<TR;>.KeyPairIterator;"
    invoke-virtual {p0}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->next()Ljava/security/KeyPair;

    move-result-object v0

    return-object v0
.end method

.method public next()Ljava/security/KeyPair;
    .locals 2

    .line 214
    .local p0, "this":Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;, "Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider<TR;>.KeyPairIterator;"
    iget-boolean v0, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->nextKeyPairSet:Z

    if-nez v0, :cond_1

    .line 215
    invoke-direct {p0}, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->setNextObject()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 216
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "Out of files to try"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->nextKeyPairSet:Z

    .line 220
    iget-object v0, p0, Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;->nextKeyPair:Ljava/security/KeyPair;

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 225
    .local p0, "this":Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider$KeyPairIterator;, "Lorg/apache/sshd/common/keyprovider/AbstractResourceKeyPairProvider<TR;>.KeyPairIterator;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "loadKeys(files) Iterator#remove() N/A"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
