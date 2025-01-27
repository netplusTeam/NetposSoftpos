.class Lorg/bouncycastle/openpgp/PGPObjectFactory$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bouncycastle/openpgp/PGPObjectFactory;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private obj:Ljava/lang/Object;

.field final synthetic this$0:Lorg/bouncycastle/openpgp/PGPObjectFactory;

.field private triedNext:Z


# direct methods
.method constructor <init>(Lorg/bouncycastle/openpgp/PGPObjectFactory;)V
    .locals 0

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory$1;->this$0:Lorg/bouncycastle/openpgp/PGPObjectFactory;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-boolean p1, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory$1;->triedNext:Z

    const/4 p1, 0x0

    iput-object p1, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory$1;->obj:Ljava/lang/Object;

    return-void
.end method

.method private getObject()Ljava/lang/Object;
    .locals 4

    :try_start_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory$1;->this$0:Lorg/bouncycastle/openpgp/PGPObjectFactory;

    invoke-virtual {v0}, Lorg/bouncycastle/openpgp/PGPObjectFactory;->nextObject()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    new-instance v1, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Iterator failed to get next object: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v0}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, v0}, Lorg/bouncycastle/openpgp/PGPRuntimeOperationException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method


# virtual methods
.method public hasNext()Z
    .locals 2

    iget-boolean v0, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory$1;->triedNext:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory$1;->triedNext:Z

    invoke-direct {p0}, Lorg/bouncycastle/openpgp/PGPObjectFactory$1;->getObject()Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory$1;->obj:Ljava/lang/Object;

    :cond_0
    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory$1;->obj:Ljava/lang/Object;

    if-eqz v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public next()Ljava/lang/Object;
    .locals 1

    invoke-virtual {p0}, Lorg/bouncycastle/openpgp/PGPObjectFactory$1;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory$1;->triedNext:Z

    iget-object v0, p0, Lorg/bouncycastle/openpgp/PGPObjectFactory$1;->obj:Ljava/lang/Object;

    return-object v0

    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "Cannot remove element from factory."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
