.class Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;
.super Ljava/lang/Object;
.source "TinyHashSet.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/utilint/TinyHashSet;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TwoElementIterator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final elem1:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final elem2:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field final parent:Lcom/sleepycat/je/utilint/TinyHashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/sleepycat/je/utilint/TinyHashSet<",
            "TT;>;"
        }
    .end annotation
.end field

.field returnedElem1:Z

.field returnedElem2:Z


# direct methods
.method constructor <init>(Lcom/sleepycat/je/utilint/TinyHashSet;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sleepycat/je/utilint/TinyHashSet<",
            "TT;>;TT;TT;)V"
        }
    .end annotation

    .line 184
    .local p0, "this":Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;, "Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator<TT;>;"
    .local p1, "parent":Lcom/sleepycat/je/utilint/TinyHashSet;, "Lcom/sleepycat/je/utilint/TinyHashSet<TT;>;"
    .local p2, "elem1":Ljava/lang/Object;, "TT;"
    .local p3, "elem2":Ljava/lang/Object;, "TT;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 185
    iput-object p1, p0, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;->parent:Lcom/sleepycat/je/utilint/TinyHashSet;

    .line 186
    iput-object p2, p0, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;->elem1:Ljava/lang/Object;

    .line 187
    iput-object p3, p0, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;->elem2:Ljava/lang/Object;

    .line 188
    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_0

    move v2, v0

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    iput-boolean v2, p0, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;->returnedElem1:Z

    .line 189
    if-nez p3, :cond_1

    goto :goto_1

    :cond_1
    move v0, v1

    :goto_1
    iput-boolean v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;->returnedElem2:Z

    .line 190
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 193
    .local p0, "this":Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;, "Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator<TT;>;"
    iget-boolean v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;->returnedElem1:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;->returnedElem2:Z

    if-nez v0, :cond_0

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

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 197
    .local p0, "this":Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;, "Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator<TT;>;"
    iget-boolean v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;->returnedElem1:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 198
    iput-boolean v1, p0, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;->returnedElem1:Z

    .line 199
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;->elem1:Ljava/lang/Object;

    return-object v0

    .line 201
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;->returnedElem2:Z

    if-nez v0, :cond_1

    .line 202
    iput-boolean v1, p0, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;->returnedElem2:Z

    .line 203
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;->elem2:Ljava/lang/Object;

    return-object v0

    .line 205
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 2

    .line 213
    .local p0, "this":Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;, "Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator<TT;>;"
    iget-boolean v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;->returnedElem2:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;->elem2:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;->parent:Lcom/sleepycat/je/utilint/TinyHashSet;

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/TinyHashSet;->access$002(Lcom/sleepycat/je/utilint/TinyHashSet;Ljava/lang/Object;)Ljava/lang/Object;

    .line 215
    return-void

    .line 217
    :cond_0
    iget-boolean v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;->returnedElem1:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;->elem1:Ljava/lang/Object;

    if-eqz v0, :cond_1

    .line 218
    iget-object v0, p0, Lcom/sleepycat/je/utilint/TinyHashSet$TwoElementIterator;->parent:Lcom/sleepycat/je/utilint/TinyHashSet;

    invoke-static {v0, v1}, Lcom/sleepycat/je/utilint/TinyHashSet;->access$102(Lcom/sleepycat/je/utilint/TinyHashSet;Ljava/lang/Object;)Ljava/lang/Object;

    .line 219
    return-void

    .line 221
    :cond_1
    const/4 v0, 0x0

    invoke-static {v0}, Lcom/sleepycat/je/EnvironmentFailureException;->assertState(Z)V

    .line 222
    return-void
.end method
