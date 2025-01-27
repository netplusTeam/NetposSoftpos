.class final Lorg/apache/sshd/common/util/threads/ThreadUtils$1;
.super Ljava/lang/Object;
.source "ThreadUtils.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/sshd/common/util/threads/ThreadUtils;->iterateDefaultClassLoaders(Ljava/lang/Class;)Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Ljava/lang/ClassLoader;",
        ">;"
    }
.end annotation


# instance fields
.field private index:I

.field private final suppliers:[Ljava/util/function/Supplier;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[",
            "Ljava/util/function/Supplier<",
            "+",
            "Ljava/lang/ClassLoader;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic val$effectiveAnchor:Ljava/lang/Class;


# direct methods
.method constructor <init>(Ljava/lang/Class;)V
    .locals 3

    .line 150
    iput-object p1, p0, Lorg/apache/sshd/common/util/threads/ThreadUtils$1;->val$effectiveAnchor:Ljava/lang/Class;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 151
    const/4 v0, 0x3

    new-array v0, v0, [Ljava/util/function/Supplier;

    new-instance v1, Lorg/apache/sshd/common/util/threads/ThreadUtils$1$$ExternalSyntheticLambda0;

    invoke-direct {v1}, Lorg/apache/sshd/common/util/threads/ThreadUtils$1$$ExternalSyntheticLambda0;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/apache/sshd/common/util/threads/ThreadUtils$1$$ExternalSyntheticLambda1;

    invoke-direct {v1, p1}, Lorg/apache/sshd/common/util/threads/ThreadUtils$1$$ExternalSyntheticLambda1;-><init>(Ljava/lang/Class;)V

    const/4 p1, 0x1

    aput-object v1, v0, p1

    new-instance p1, Lorg/apache/sshd/common/util/threads/ThreadUtils$1$$ExternalSyntheticLambda2;

    invoke-direct {p1}, Lorg/apache/sshd/common/util/threads/ThreadUtils$1$$ExternalSyntheticLambda2;-><init>()V

    const/4 v1, 0x2

    aput-object p1, v0, v1

    iput-object v0, p0, Lorg/apache/sshd/common/util/threads/ThreadUtils$1;->suppliers:[Ljava/util/function/Supplier;

    return-void
.end method

.method static synthetic lambda$$0()Ljava/lang/Object;
    .locals 2

    .line 155
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    .line 156
    .local v0, "thread":Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    return-object v1
.end method

.method static synthetic lambda$$1(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 1
    .param p0, "effectiveAnchor"    # Ljava/lang/Class;

    .line 158
    invoke-virtual {p0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 3

    .line 166
    :goto_0
    iget v0, p0, Lorg/apache/sshd/common/util/threads/ThreadUtils$1;->index:I

    iget-object v1, p0, Lorg/apache/sshd/common/util/threads/ThreadUtils$1;->suppliers:[Ljava/util/function/Supplier;

    array-length v2, v1

    if-ge v0, v2, :cond_1

    .line 167
    aget-object v0, v1, v0

    .line 168
    .local v0, "scl":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/lang/ClassLoader;>;"
    invoke-interface {v0}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/ClassLoader;

    .line 169
    .local v1, "cl":Ljava/lang/ClassLoader;
    const/4 v2, 0x1

    if-eqz v1, :cond_0

    .line 170
    return v2

    .line 166
    .end local v0    # "scl":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/lang/ClassLoader;>;"
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    :cond_0
    iget v0, p0, Lorg/apache/sshd/common/util/threads/ThreadUtils$1;->index:I

    add-int/2addr v0, v2

    iput v0, p0, Lorg/apache/sshd/common/util/threads/ThreadUtils$1;->index:I

    goto :goto_0

    .line 174
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public next()Ljava/lang/ClassLoader;
    .locals 3

    .line 179
    iget v0, p0, Lorg/apache/sshd/common/util/threads/ThreadUtils$1;->index:I

    iget-object v1, p0, Lorg/apache/sshd/common/util/threads/ThreadUtils$1;->suppliers:[Ljava/util/function/Supplier;

    array-length v2, v1

    if-ge v0, v2, :cond_0

    .line 183
    aget-object v1, v1, v0

    .line 184
    .local v1, "scl":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/lang/ClassLoader;>;"
    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/apache/sshd/common/util/threads/ThreadUtils$1;->index:I

    .line 185
    invoke-interface {v1}, Ljava/util/function/Supplier;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/ClassLoader;

    return-object v0

    .line 180
    .end local v1    # "scl":Ljava/util/function/Supplier;, "Ljava/util/function/Supplier<+Ljava/lang/ClassLoader;>;"
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "All elements exhausted"

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 150
    invoke-virtual {p0}, Lorg/apache/sshd/common/util/threads/ThreadUtils$1;->next()Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method
