.class Lcom/sleepycat/je/dbi/INList$Iter;
.super Ljava/lang/Object;
.source "INList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sleepycat/je/dbi/INList;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Iter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lcom/sleepycat/je/tree/IN;",
        ">;"
    }
.end annotation


# instance fields
.field private final baseIter:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Lcom/sleepycat/je/tree/IN;",
            ">;"
        }
    .end annotation
.end field

.field private lastReturned:Lcom/sleepycat/je/tree/IN;

.field private next:Lcom/sleepycat/je/tree/IN;

.field final synthetic this$0:Lcom/sleepycat/je/dbi/INList;


# direct methods
.method private constructor <init>(Lcom/sleepycat/je/dbi/INList;)V
    .locals 0

    .line 274
    iput-object p1, p0, Lcom/sleepycat/je/dbi/INList$Iter;->this$0:Lcom/sleepycat/je/dbi/INList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 275
    invoke-static {p1}, Lcom/sleepycat/je/dbi/INList;->access$100(Lcom/sleepycat/je/dbi/INList;)Ljava/util/concurrent/ConcurrentMap;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/concurrent/ConcurrentMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    iput-object p1, p0, Lcom/sleepycat/je/dbi/INList$Iter;->baseIter:Ljava/util/Iterator;

    .line 276
    return-void
.end method

.method synthetic constructor <init>(Lcom/sleepycat/je/dbi/INList;Lcom/sleepycat/je/dbi/INList$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/sleepycat/je/dbi/INList;
    .param p2, "x1"    # Lcom/sleepycat/je/dbi/INList$1;

    .line 268
    invoke-direct {p0, p1}, Lcom/sleepycat/je/dbi/INList$Iter;-><init>(Lcom/sleepycat/je/dbi/INList;)V

    return-void
.end method

.method private advance()Z
    .locals 2

    .line 298
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList$Iter;->baseIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 299
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList$Iter;->baseIter:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/sleepycat/je/tree/IN;

    .line 300
    .local v0, "in":Lcom/sleepycat/je/tree/IN;
    invoke-virtual {v0}, Lcom/sleepycat/je/tree/IN;->getInListResident()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 301
    iput-object v0, p0, Lcom/sleepycat/je/dbi/INList$Iter;->next:Lcom/sleepycat/je/tree/IN;

    .line 302
    const/4 v1, 0x1

    return v1

    .line 304
    .end local v0    # "in":Lcom/sleepycat/je/tree/IN;
    :cond_0
    goto :goto_0

    .line 305
    :cond_1
    const/4 v0, 0x0

    return v0
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 279
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList$Iter;->next:Lcom/sleepycat/je/tree/IN;

    if-eqz v0, :cond_0

    .line 280
    const/4 v0, 0x1

    return v0

    .line 282
    :cond_0
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/INList$Iter;->advance()Z

    move-result v0

    return v0
.end method

.method public next()Lcom/sleepycat/je/tree/IN;
    .locals 2

    .line 287
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList$Iter;->next:Lcom/sleepycat/je/tree/IN;

    if-nez v0, :cond_1

    .line 288
    invoke-direct {p0}, Lcom/sleepycat/je/dbi/INList$Iter;->advance()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 289
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0

    .line 292
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList$Iter;->next:Lcom/sleepycat/je/tree/IN;

    iput-object v0, p0, Lcom/sleepycat/je/dbi/INList$Iter;->lastReturned:Lcom/sleepycat/je/tree/IN;

    .line 293
    const/4 v1, 0x0

    iput-object v1, p0, Lcom/sleepycat/je/dbi/INList$Iter;->next:Lcom/sleepycat/je/tree/IN;

    .line 294
    return-object v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 268
    invoke-virtual {p0}, Lcom/sleepycat/je/dbi/INList$Iter;->next()Lcom/sleepycat/je/tree/IN;

    move-result-object v0

    return-object v0
.end method

.method public remove()V
    .locals 2

    .line 313
    iget-object v0, p0, Lcom/sleepycat/je/dbi/INList$Iter;->lastReturned:Lcom/sleepycat/je/tree/IN;

    if-eqz v0, :cond_0

    .line 314
    iget-object v1, p0, Lcom/sleepycat/je/dbi/INList$Iter;->this$0:Lcom/sleepycat/je/dbi/INList;

    invoke-static {v1, v0}, Lcom/sleepycat/je/dbi/INList;->access$200(Lcom/sleepycat/je/dbi/INList;Lcom/sleepycat/je/tree/IN;)Z

    .line 315
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sleepycat/je/dbi/INList$Iter;->lastReturned:Lcom/sleepycat/je/tree/IN;

    .line 319
    return-void

    .line 317
    :cond_0
    invoke-static {}, Lcom/sleepycat/je/EnvironmentFailureException;->unexpectedState()Lcom/sleepycat/je/EnvironmentFailureException;

    move-result-object v0

    throw v0
.end method
